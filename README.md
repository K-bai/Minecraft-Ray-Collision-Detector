# Intro
Minecraft Ray Collision Detector is a super precise raycast system in vanilla minecraft! This datapack solved the raycast problem perfectly with minimal command cost. It defines the hitbox of most blocks and does some calculations to judge which surface will be touched.

Current datapack version: 3.0

Supported minecraft version: 
 - Release 2.7.2: 1.16, 1.17, 1.18, 1.19, 1.20, 
 - Release 3.0: 1.21

# How to use

## Basics
1. **Set the motion vector:** You must first indicate how many milliblocks the ray entity (usually area_effect_cloud or marker) will travell in a *ray_tick*. To do so store the (x, y, z) components of the vector in the entity's scoreboards `mrcd_x0`, `mrcd_y0`, `mrcd_z0`.
2. **Run a ray_tick:** Call `function mrcd:ray_tick` as the ray entity.
3. **Detect block hit:** If the ray hits a block it will get the tags `mrcd_touch_edge` and `mrcd_touch_<direction>`, where `<direction>` indicates which face has been hit and is one of `x_plus`, `x_minus`, `y_plus`, `y_minus`, `z_plus`, `z_minus`.
4. Repeat 2 and 3.

*Note: when calling `function mrcd:ray_tick` the ray first loses all previous output tags so once the calculations are done only the correct tags are left.*

## Advanced ray behaviour
- **Pass any block a player can:** tag the ray with `mrcd_bullet`.
- **Hit the first entity it finds:**: tag the ray with `mrcd_entity` and rotate it facing the motion direction. 
    - If it thouches an entity, the ray will stop there and get the tag `mrcd_touch_entity`. The touched entity will be tagged `mrcd_target_entity`. 
    - Note that some entities like player and projectiles are ignored by default. You can remove them by editing the entity types tag `#mrcd:ignore`.
- **Hit the first specific entity or group of entities:** tag the ray with `mrcd_entity_targeted`, rotate it facing the motion direction** and tag the target/s with `mrcd_target`.
    - If it thouches an entity, the ray will stop there and get the tag `mrcd_touch_entity`. The touched entity will be tagged `mrcd_target_entity`. Any non `mrcd_target` tagged entity will be ignored and the ray will pass through. 
    - This method can target any entity, even those that are in the `#mrcd:ignore` tag list. Also, you can tag an entity with `mrcd_ignore` to also be ignored.
- **Hit multiple entities (don't stop after one found):** settup the ray as a `mrcd_entity` or `mrcd_entity_targeted`, add the tag `mrcd_entity_bullet` and rotate the  it facing the motion direction. 
    - If it thouches an entity, the ray will continue but get the tag `mrcd_touch_entity`. The touched entity will be tagged `mrcd_target_entity`.

In summary, tags can be combined following this strucuture: <block_handling>,<entity_handling1>,<entity_extra>
* block_handling: none or mrcd_bullet
* entity_handling: none or mrcd_entity or mrcd_entity_targeted
* entity_extra: none or mrcd_entity_bullet

*⚠️ Remember to remove the result tags when needed. For example: if we check for an entity hit we must remove the tag mrcd_target_entity after the hitting it, so the new cast doesn't think that entity was hit.*

## Example
We use oriented relative coordinates and some math to eassily assing the speed (this case, 0.5 b/t). Since it lasts for 10 ticks (Duration), it will travel at max 5 blocks.

```mcfunction
# Summon the ray where it would end after a ray_tick (0.5 blocks)
execute at @s anchored eyes run summon area_effect_cloud ^ ^ ^.5 {Tags:["test_mark","init","mrcd_ignore"],Duration:10}

# We save the end coords of the motion vector in mblocks
execute as @e[tag=init,limit=1] store result score @s mrcd_x0 run data get entity @s Pos[0] 1000
execute as @e[tag=init,limit=1] store result score @s mrcd_y0 run data get entity @s Pos[1] 1000
execute as @e[tag=init,limit=1] store result score @s mrcd_z0 run data get entity @s Pos[2] 1000

# # We tp to the starting position (and placed it on the player eyes)
execute at @s anchored eyes run tp @e[tag=init,limit=1] ^ ^ ^ ~ ~

# We save the start coords of the motion vector position in mblocks
execute store result score #var0 mrcd_system run data get entity @e[tag=init,limit=1] Pos[0] 1000
execute store result score #var1 mrcd_system run data get entity @e[tag=init,limit=1] Pos[1] 1000
execute store result score #var2 mrcd_system run data get entity @e[tag=init,limit=1] Pos[2] 1000

# We calculate the motion vector (end - start)
scoreboard players operation @e[tag=init,limit=1] mrcd_x0 -= #var0 mrcd_system
scoreboard players operation @e[tag=init,limit=1] mrcd_y0 -= #var1 mrcd_system
scoreboard players operation @e[tag=init,limit=1] mrcd_z0 -= #var2 mrcd_system

# Clear tag
tag @e[tag=init] remove init
```

To see some more working examples, check the folder **example**. You simply need to run the function `mrcd:example/tick` each tick and give yourself the needed items with the function `mrcd:example/give`.

# How block detection works
## Before calculations
Before we do any calulations all the hitboxes of all blocks that are not full have been hardcoded(See `mrcd:private/types/slab` as a simple example). All the hitboxes in Minecraft are cuboids, so we can use 2 points to define them (*#box_x0,y0,z0* and *#box_x1,y1,z1*).

## Calculations
Firstly, we copy the motion vector of the ray from @s *mrcd_x0,y0,z0* to *#total_x,y,z* and also get the position of the ray relative to the block it's in, saved as *#block_x,y,z*. With this we can make a line that represents the path of the ray (from *#block_x,y,z* to *#block_x,y,z + #total_x,y,z*).

Sencondly, we find which block the marker is in, and determine which plane of the block it will collide (See `mrcd:private/cube/main`). Then we calculate the intersection point of the plane with the path line, and determine if it can collide by boundary condition (See `mrcd:private/cube/x0,x1,y0,y1,z0,z1` and `mrcd:private/calculate/x,y,z`). We save the collision point to *#target_x,y,z*.

Finally, move the marker to #targetx,y,z!

# Block Support
<details>
  <summary>Block Support</summary>    
These blocks listed below are supported in is datapack. Please post an issue if you find some unsupported blocks and bugs. *All blocks are listed using the latest minecraft block tags*

* any full block
* simple blocks
    * minecraft:conduit
    * minecraft:sugar_cane
    * minecraft:cocoa
    * minecraft:beetroots
    * minecraft:nether_wart
    * minecraft:kelp
    * minecraft:lever
    * minecraft:tripwire_hook
    * minecraft:tripwire
    * minecraft:daylight_detector
    * minecraft:enchanting_table
    * minecraft:stonecutter
    * minecraft:end_portal_frame
    * minecraft:ladder
    * minecraft:lily_pad
    * minecraft:sweet_berry_bush
    * minecraft:wheat
    * minecraft:snow
    * minecraft:cactus
    * minecraft:cake
    * minecraft:ender_chest
    * minecraft:bamboo
    * minecraft:bamboo_sapling
    * minecraft:chain
    * minecraft:twisting_vines
    * minecraft:twisting_vines_plant
    * minecraft:weeping_vines
    * minecraft:weeping_vines_plant
    * minecraft:nether_sprouts
    * minecraft:soul_fire
    * minecraft:small_dripleaf
    * minecraft:spore_blossom
    * minecraft:big_dripleaf_stem
    * minecraft:small_amethyst_bud
    * minecraft:medium_amethyst_bud
    * minecraft:large_amethyst_bud
    * minecraft:amethyst_cluster
    * minecraft:pointed_dripstone
    * minecraft:hanging_roots
    * minecraft:turtle_egg
    * minecraft:light
    * minecraft:sculk_sensor
    * minecraft:frogspawn
    * minecraft:sculk_shrieker
    * minecraft:mangrove_propagule
    * minecraft:sniffer_egg
    * minecraft:calibrated_sculk_sensor
    * minecraft:decorated_pot
    * minecraft:piglin_head
    * minecraft:piglin_wall_head
    * minecraft:torchflower_crop
    * minecraft:pitcher_crop
    * #minecraft:slabs
    * #minecraft:pressure_plates
    * #minecraft:wall_signs
    * #minecraft:flower_pots
    * #minecraft:buttons
    * #minecraft:doors
    * #minecraft:trapdoors
    * #minecraft:rails
    * #minecraft:carpets
    * #minecraft:small_flowers
    * #minecraft:tall_flowers
    * #minecraft:campfires
    * #minecraft:candles
    * #minecraft:cave_vinescave
    * #minecraft:all_hanging_signs
    * #mrcd:mushroom
        * red mushroom and brown mushroom
    * #mrcd:standing_sign_like
        * standing sign and standing banner
    * #mrcd:repeater_like
        * repeater and comparator
    * #mrcd:attached_melon_stem_like
        * attached melon stem and attached pumpkin stem
    * #mrcd:melon_stem_like
        * melon stem and pumpkin stem
    * #mrcd:carrots_like
        * carrot and potato
    * #mrcd:big_chest
        * normal chest and trapped chest
    * #mrcd:fence_gate_like
        * all kinds of fence gates
    * #mrcd:skull_like
        * all kinds of skulls, including dragon head
    * #mrcd:wall_skull_like
        * all kinds of skulls, including dragon head
    * #mrcd:wall_torches
        * torch, soul torch and redstone torch
    * #mrcd:grass_path_like
        * grass path and farmland
    * #mrcd:torches
        * torch, soul torch and redstone torch
    * #mrcd:wall_coral_like
        * all kinds of corals
    * #mrcd:coral_plant_like
        * all kinds of corals
    * #mrcd:coral_fan_like
        * all kinds of corals
    * #mrcd:short_grass_like
        * grass, fern and dead bush
    * #mrcd:sapling_like
        * all kinds of saplings and seagrass
    * #mrcd:wall_banner_like
        * wall banner
    * #mrcd:fungus
        * crimson and warped fungus
    * #mrcd:roots
        * crimson and warped roots
    * #mrcd:rod_like
        * end rod and lightning rod
    * #mrcd:carpet_like
        * wool, moss carpets

* complex blocks
    * minecraft:redstone_wire
    * minecraft:piston_head
    * minecraft:brewing_stand
    * minecraft:grindstone
    * minecraft:bell
    * minecraft:hopper
    * minecraft:lectern
    * minecraft:chorus_plant
    * minecraft:scaffolding
    * minecraft:big_dripleaf
    * minecraft:candle_cake
    * #minecraft:cauldrons
    * #minecraft:anvil
    * #minecraft:stairs
    * #minecraft:walls
    * #mrcd:glass_pane_like
        * glass pane, stained glass pane and iron bars
    * #minecraft:fences
    * #minecraft:beds
    * #mrcd:azalea
        * azalea and flower_azalea
    * #mrcd:vine_like
        * vines, glow_lichen, sculk_vein and fire (what????)
    * #mrcd:piston
        * sticky piston and normal piston
    * #mrcd:lanterns
        * lantern and soul lantern
</details>

# Change Log
<details>
  <summary>Show</summary>

* v1.0
* v1.1
    * Add sweet berry bush support.
* v1.2
    * AECs can recognize entities now.
    * Some functions changed.
* v1.2.1
    * AECs can teleport to the edge of hitboxes of entities.
* v1.2.2
    * bugfix: AECs that touch x+, y+ and z+ of full blocks will stay in the previous block.
    * Some changes in examples.
* v2.0
    * Change name to MRCD (Minecraft Ray Collision Detector).
    * bugfix: mushrooms are treated as full blocks.
    * bugfix: bullets can pass bamboo.
    * Add all flowers, bamboo and bamboo saplings support.
        * Flowers, bamboos and bamboo saplings are now fully supported. Our datapack calculates the random hitbox in different position when bullets pass them.
* v2.1
    * Support 1.16
    * Support fire, soul_fire, soul lantern, soul torch, soul campfire, chain block, nether vines, nether sprouts, fungus and nether roots.
    * Add new properties for walls and redstone wire.
    * bugfix: vines are treated as full blocks.
* v2.2-pre1
    * Optimize commands usage (~10% less).
* v2.2
    * Updates
        * Support for 1.17 snapshot 21w05b.
        * Added a new type ray (mrcd_entity_targeted) used to only detect a specific group of entities.
        * Remade the example to be more complete.
    * Changes
        * No longer uses mrcd:target entity_type tag, instead uses mrcd:ignore. This makes it easier to update and customize.
        * Changed some name folders and distribution to be more self explanatory.
            * 'generic' folder is now named 'private'
            * 'generic/start' file is now located at the same level as init and is called 'ray_tick'
            * 'init' file is now located inside private folder 'private/init'
    * Fixes
        * Stairs missing the straight variant.
        * Bed not working
        * Turtle eggs where missing
    * Know bugs
        * Pointed_dripstone offset not calculated well (so it's currently not calculated)
* v2.3
    * Updates
        * Support for 1.17.
    * Changes
        * Added #mrcd:azalea, sculk_sensor and powder_snow
        * Light block treated as air
    * Fixes
        * Dripstone offset wasn't considered (seems more presice than previous version)
 * v2.4
   * Updates
       * Added new type of ray `mrcd_entity_bullet`
 * v2.5
   * Updates
      * Merged the pull request of the new XOR algorithm (from 350 lines to 100) for offset blocks done by xwjcool123
      * Added support for 1.16
   * Changes
      * 1.17 block checks are now skiped in older versions
          * This means some changes on some block tags
   * Fixes
      * Weeping vines and Cave Vines were grouped with the same hitbox
      * Blackstone pressure plate was missing
 * v2.6
   * Updates
      * Added support for 1.19
   * Fixes
      * 1.17 blocks not working
      * Made ray entity detection hitbox precise
 * v2.6.1
   * Fixes
      * Made ray entity detection hitbox precise
 * v2.6.2
   * Updates
      * Added the possibility to use the `mrcd_ignore` tag to force ignore entities
      * Improved example to show how to properly cast instant rays 
   * Changes
      * Renamed some internal tags to be more descriptive
      * Entity hit detection redone, so it's even preciser (the check is done in steps of 0.33 blocks) 
      * Optimitzations
          * If no entit hitbox in block, don't do entity calculations
          * If you hit entity, you don't need to calculate block stuff (`mrcd_entity` and `mrcd_entity_targeted`)
   * Fixes
      * Ray should not target itself
      * Ray sometimes getting inside complex block when the ray was comming from -xyz (collision not working)
      * mrcd_entity and mrcd_entity_targeted could tag more than one entity when not being a mrcd_entity_bullet
 * v2.6.3
   * Updates
      * Revised and redone a bunch of code. This optimizations plus the 2.6.2 changes mean:
           * calling `ray_tick` runs between 23..52% less commands depending on the ray type and distance traveled. This is because for each block check iteration:
             * ~26% less commands are used when the ray targets full blocks (air)
             * ~45% less commands are used when the ray targets non full blocks (trapdoors, slabs, bells, ...)
             * ~47% less commands are used when the ray targets both blocks and entities
   * Fixes
      * Ray not being calculated properly when going through air corners
      * Ray going moving towards negative x and/or y and/or y with long "motion" sometimes iterated forever (caused by impressions)
      * Hanging roots, Lectern, Bamboo[leaves:large], Baners on wall not calc ok
      * Missing sea pickle, composter
 * v2.7
   * Updates
      * Added support for 1.20
   * Changes
      * Default recursion limit is 256 (can be changed in the `ini.mcfunction` file)
   * Fixes
      * Fixed a bug where the ray would endlessly recurse, freezing the game. This would happen when the ray was passing through the corner of a block hitbox.
 * v2.7.1
   * Updates
      * Better entity hitbox hit precision
 * v2.7.2
   * Fixes
      * Trapdoors not working
 * v3.0
   * Updates
      * Added support for 1.21
</details>
