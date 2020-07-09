# Intro
Minecraft Ray Collision Detector is a super precise raycast system in vanilla minecraft! This datapack solved the raycast problem perfectly with minimal command cost. It defines the hitbox of most blocks and does some calculations to judge which surface will be touched. 

Current datapack version: 2.1

Supported minecraft version: 1.16

# How to use
Set scoreboard `mrcd_x0`, `mrcd_y0`, `mrcd_z0` for any area effect cloud. These three scoreboards stand for how many milliblocks that the area effect cloud can fly in a tick in three dimensions respectively. Then execute `function mrcd:generic/start` as the area effect cloud. If it **touched a block**, it will have tags named `mrcd_touch_edge` and `mrcd_touch_DIRECTION`. You can recognize which surface it touched from those tags.

If you want an area effect cloud that can **pass those blocks** that a player can pass, you should tag the area effect cloud `mrcd_bullet`.

If you want an area effect cloud that can **touch entities**, you should tag the area effect cloud `mrcd_entity` and **rotate the AEC as the speed direction**. If it touched an entity, it will have a tag named `mrcd_touch_entity`, and the target entity will be tagged `mrcd_target_entity`. Note that players are ignored by default. You can add `minecraft:player` in entity types tag (`#mrcd:target`) to change it.

Details are listed in function `mrcd:raycast`, `mrcd:bullet` and `mrcd:entity`. 

# How it works
Firstly, we get the direction vector of the marker, saved as #total_x,y,z. Besides, get the position of the marker in a block, saved as #block_x,y,z. These two vector can make a line, represant the moving route of the marker.

Secondly, we defines the hitboxes of all blocks that are not full (See `mrcd:generic/types/slab` as an simple example). All the hitboxes in Minecraft are cuboid, so we can use 2 vectors(#box_x,y,z0 and #box_x,y,z1) to define them. 

Thirdly, find which block the marker is in, and determine which plane of the block it will collide (See `mrcd:generic/cube/main`). Calculate the intersection point of the plane and the moving line of the marker, and determine if it can collide by boundary condition (See `mrcd:generic/cube/x0,x1,y0,y1,z0,z1` and `mrcd:generic/calculate/x,y,z`). Save the collision point as #target_x,y,z

Finally, move the marker to #targetx,y,z!

# Block Support

These blocks listed below are supported in is datapack. Please post an issue if you find some unsupported blocks and bugs.


* complex blocks
    * #minecraft:walls
    * #mrcd:glass_pane_like
        * glass pane, stained glass pane and iron bars
    * #minecraft:fences
    * #mrcd:vine_like
        * vine and fire (what????)
    * minecraft:scaffolding
    * #minecraft:beds
    * #mrcd:piston
        * sticky piston and normal piston
    * minecraft:piston_head
    * minecraft:brewing_stand
    * minecraft:cauldron
    * minecraft:grindstone
    * minecraft:bell
    * #mrcd:lanterns
        * lantern and soul lantern
    * #minecraft:anvil
    * minecraft:hopper
    * minecraft:lectern
    * minecraft:chorus_plant
* simple blocks
    * minecraft:redstone_wire
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
* special blocks
    * #minecraft:stairs


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