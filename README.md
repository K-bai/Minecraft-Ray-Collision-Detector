# Intro
Minecraft Ray Collision Detector is a super precise raycast system in vanilla minecraft! This datapack solved the raycast problem perfectly with minimal command cost. It defines the hitbox of most blocks and does some calculations to judge which surface will be touched.

Current datapack version: 2.6.2

Supported minecraft version: 1.16, 1.17, 1.18, 1.19

# How to use
Set scoreboard `mrcd_x0`, `mrcd_y0`, `mrcd_z0` for any ray (entity used as the ray marker, usually area_effect_cloud or markers). These three scoreboards stand for how many milliblocks the ray can fly in three dimensions respectively each time you call `function mrcd:ray_tick` as the ray. If it **touches a block**, it will have the tags `mrcd_touch_edge` and `mrcd_touch_DIRECTION`. You can recognize which surface it touched from those tags.

If you want a ray that can **pass those blocks** that a player can pass, you should tag the ray `mrcd_bullet`.

If you want a ray that can **touch entities** (stops after one found), you should tag the ray `mrcd_entity` and **rotate the AEC as the speed direction**. If it touched an entity, it will have a tag named `mrcd_touch_entity`, and the target entity will be tagged `mrcd_target_entity`. Note that some entities like player and projectiles are ignored by default. You can remove them in entity types tag (`#mrcd:ignore`) to change it.

If you want a ray that can **touch a specific entity or group of entities** (stops after one found), you should tag it/them with `mrcd_target`, the ray `mrcd_entity_targeted` and **rotate the AEC as the speed direction**. If it touched a tagged entity, it will have a tag named `mrcd_touch_entity`, and the target entity will be tagged `mrcd_target_entity`. Any other non tagged entity that hits, will be ignored and the ray will pass through. This method can target any entity, even those that are in the `#mrcd:ignore` tag list. Also, you can tag an entity with `mrcd_ignore` to also be ignored.

If you want a ray that can **touch multiple entities** (doesn't stops after one found), you should tag the ray `mrcd_entity` and `mrcd_entity_bullet` and **rotate the AEC as the speed direction** (this is also works with `mrcd_entity_targeted`). If it touched an entity, it will have a tag named `mrcd_touch_entity`, and the target entity will be tagged `mrcd_target_entity`.

Logically tags can be combined following this strucuture: <block_handling>,<entity_handeling>,<entity_extra>
* block_handling: none or mrcd_bullet
* entity_handeling: none or mrcd_entity or mrcd_entity_targeted
* entity_extra: none or mrcd_entity_bullet

To see some basic working examples, check the folder **example**. You simply need to run each tick the function `mrcd:example/tick` and give yourself the needed items with the function `mrcd:example/give`.

*⚠️ Rememver to remove the result tags when needed. For example: if we check for an entity hit we must remove the tag mrcd_target_entity after the hitting it, so the new cast don't think that entity was hit.*

# How block detection works
## Before calculations
Before we do any calulations all the hitboxes of all blocks that are not full have been hardcoded(See `mrcd:private/types/slab` as a simple example). All the hitboxes in Minecraft are cuboids, so we can use 2 points to define them (*#box_x0,y0,z0* and *#box_x1,y1,z1*).

## Calculations
Firstly, we copy the motion vector of the ray from @s *mrcd_x0,y0,z0* to *#total_x,y,z* and also get the position of the ray relative to the block it's in, saved as *#block_x,y,z*. With this we can make a line that represents the path of the ray (from *#block_x,y,z* to *#block_x,y,z + #total_x,y,z*).

Sencondly, we find which block the marker is in, and determine which plane of the block it will collide (See `mrcd:private/cube/main`). Then we calculate the intersection point of the plane with the path line, and determine if it can collide by boundary condition (See `mrcd:private/cube/x0,x1,y0,y1,z0,z1` and `mrcd:private/calculate/x,y,z`). We save the collision point to *#target_x,y,z*.

Finally, move the marker to #targetx,y,z!

# Block Support

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
    * #minecraft:campfires
    * #minecraft:candles
    * #minecraft:cave_vinescave
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
    * #mrcd:grass_like
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


# Change Log

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