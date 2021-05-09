# Intro
Minecraft Ray Collision Detector is a super precise raycast system in vanilla minecraft! This datapack solved the raycast problem perfectly with minimal command cost. It defines the hitbox of most blocks and does some calculations to judge which surface will be touched.

Current datapack version: 2.2

Supported minecraft version: 1.17 (21w18a)

# How to use
Set scoreboard `mrcd_x0`, `mrcd_y0`, `mrcd_z0` for any area effect cloud. These three scoreboards stand for how many milliblocks that the area effect cloud can fly in three dimensions respectively each time you call `function mrcd:ray_tick` as the area effect cloud. If it **touches a block**, it will have the tags `mrcd_touch_edge` and `mrcd_touch_DIRECTION`. You can recognize which surface it touched from those tags.

If you want an area effect cloud that can **pass those blocks** that a player can pass, you should tag the area effect cloud `mrcd_bullet`.

If you want an area effect cloud that can **touch entities**, you should tag the area effect cloud `mrcd_entity` and **rotate the AEC as the speed direction**. If it touched an entity, it will have a tag named `mrcd_touch_entity`, and the target entity will be tagged `mrcd_target_entity`. Note that some entities like player and projectiles are ignored by default. You can remove them in entity types tag (`#mrcd:ignore`) to change it.

If you want an area effect cloud that can **touch a specific entity or group of entities**, you should tag it/them with `mrcd_target`, the area effect cloud `mrcd_entity_targeted` and **rotate the AEC as the speed direction**. If it touched a tagged entity, it will have a tag named `mrcd_touch_entity`, and the target entity will be tagged `mrcd_target_entity`. Any other non tagged entity that hits, will be ignored and the ray will pass through. This method can target any entity, even those that are in the `#mrcd:ignore` tag list.

To see a working example, check the folder 'example'. You simply need to run each tick the function `mrcd:example/tick` and give yourself the needed items with the function `mrcd:example/give`.

# How it works
Firstly, we get the direction vector of the marker, saved as #total_x,y,z. Besides, get the position of the marker in a block, saved as #block_x,y,z. These two vector can make a line, represant the moving route of the marker.

Secondly, we defines the hitboxes of all blocks that are not full (See `mrcd:private/types/slab` as an simple example). All the hitboxes in Minecraft are cuboid, so we can use 2 vectors(#box_x,y,z0 and #box_x,y,z1) to define them.

Thirdly, find which block the marker is in, and determine which plane of the block it will collide (See `mrcd:private/cube/main`). Calculate the intersection point of the plane and the moving line of the marker, and determine if it can collide by boundary condition (See `mrcd:private/cube/x0,x1,y0,y1,z0,z1` and `mrcd:private/calculate/x,y,z`). Save the collision point as #target_x,y,z

Finally, move the marker to #targetx,y,z!

# Block Support

These blocks listed below are supported in is datapack. Please post an issue if you find some unsupported blocks and bugs.

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
    * minecraft:turtle_egg
    * #minecraft:slabs
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
    * #mrcd:mushroom
        * red mushroom and brown mushroom
    * #mrcd:standing_sign_like
        * standing sign and standing banner
    * #mrcd:pressure_plate_like
        * all kinds of pressure plates
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
    * #mrcd:wall_torch_like
        * torch, soul torch and redstone torch
    * #mrcd:grass_path_like
        * grass path and farmland
    * #mrcd:torch_like
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
    * #mrcd:hanging_roots_like
        * hanging root and weeping vines
    * #mrcd:rod_like
        * end rod and lightning rod
    * #mrcd:weeping_like
        * weeping_vines plant and cave vine head

* complex blocks
    * minecraft:redstone_wire
    * minecraft:piston_head
    * minecraft:brewing_stand
    * minecraft:cauldron
    * minecraft:grindstone
    * minecraft:bell
    * minecraft:hopper
    * minecraft:lectern
    * minecraft:chorus_plant
    * minecraft:scaffolding
    * minecraft:big_dripleaf
    * minecraft:candle_cake
    * #minecraft:anvil
    * #minecraft:stairs
    * #minecraft:walls
    * #mrcd:glass_pane_like
        * glass pane, stained glass pane and iron bars
    * #minecraft:fences
    * #minecraft:beds
    * #mrcd:vine_like
        * vine, glow lichen and fire (what????)
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
        * Support for 1.17 snapshot 21w18a.
        * Added a new type ray (mrcd_entity_targeted) used to only detect a specific group of entities.
        * Remade the example to be more complete.
    * Changes
        * No longer uses mrcd:target entity_type tag, instead uses mrcd:ignore. This makes it easier to update and customize.
        * Changed some name folders and distribution to be more self explanatory.
            * 'generic' folder is now named 'private'
            * 'generic/start' file is now located at the same level as init and is called 'ray_tick'
            * 'init' file is now located inside private folder 'private/init'
        * Some new block tag entries are now optional. This makes it compatible all the way back to 1.16.2.
    * Fixes
        * Stairs missing the straight variant.
        * Bed not working
        * Turtle eggs where missing
        * Duplicate entries of copper stairs/slab variants causing tags fail above 21w13a.
    * Know bugs
        * Pointed_dripstone offset not calculated well (so it's currently not calculated)
