# Intro
Super precious raycast system in  vanilla minecraft! This datapack solved the raycast problem perfectly with minimal command cost. It defines the hitbox of most blocks and does some calculations to judge which surface will be touched. 

Current version: 1.2.2

# How to use
Set scoreboard `wrnmd_x0`, `wrnmd_y0`, `wrnmd_z0` for any area effect cloud. These three scoreboards stand for how many milliblocks that the area effect cloud can fly in a tick in three dimensions respectively. Then execute `function wrnmd:generic/start` as the area effect cloud. If it **touched a block**, it will have tags named `wrnmd_touch_edge` and `wrnmd_touch_DIRECTION`. You can recognize which surface it touched from those tags.

If you want an area effect cloud that can **pass those blocks** that a player can pass, you should tag the area effect cloud `wrnmd_bullet`.

If you want an area effect cloud that can **touch entities**, you should tag the area effect cloud `wrnmd_entity` and **rotate the AEC as the speed direction**. If it touched an entity, it will have a tag named `wrnmd_touch_entity`, and the target entity will be tagged `wrnmd_target_entity`. Note that players are ignored by default. You can add `minecraft:player` in entity types tag (`#wrnmd:target`) to change it.

Details are listed in function `wrnmd:raycast`, `wrnmd:bullet` and `wrnmd:entity`. 

# Block Support

These blocks listed below are supported in is datapack. Please post an issue if you find some unsupported blocks and bugs.

Flowers, bamboos and bamboo saplings are not supported due to random hitbox in minecraft. They are treated as full blocks. 

* complex blocks
    * #minecraft:walls
    * #wrnmd:glass_pane_like
        * glass pane, stained glass pane and iron bars
    * #minecraft:fences
    * minecraft:vine
    * minecraft:scaffolding
    * #minecraft:beds
    * #wrnmd:piston
        * sticky piston and normal piston
    * minecraft:piston_head
    * minecraft:brewing_stand
    * minecraft:cauldron
    * minecraft:grindstone
    * minecraft:bell
    * minecraft:lantern
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
    * minecraft:campfire
    * minecraft:end_portal_frame
    * minecraft:ladder
    * minecraft:lily_pad
    * minecraft:sweet_berry_bush
    * minecraft:wheat
    * minecraft:snow
    * minecraft:cactus
    * minecraft:cake
    * minecraft:ender_chest
    * #minecraft:slabs
    * #minecraft:wall_signs
    * #minecraft:flower_pots
    * #minecraft:buttons
    * #minecraft:doors
    * #minecraft:trapdoors
    * #minecraft:rails
    * #minecraft:carpets
    * #wrnmd:standing_sign_like
        * standing sign and standing banner
    * #wrnmd:pressure_plate_like
        * all kinds of pressure plates
    * #wrnmd:repeater_like
        * repeater and comparator
    * #wrnmd:attached_melon_stem_like
        * attached melon stem and attached pumpkin stem
    * #wrnmd:melon_stem_like
        * melon stem and pumpkin stem
    * #wrnmd:carrots_like
        * carrot and potato
    * #wrnmd:big_chest
        * normal chest and trapped chest
    * #wrnmd:fence_gate_like
        * all kinds of fence gates
    * #wrnmd:skull_like
        * all kinds of skulls, including dragon head
    * #wrnmd:wall_skull_like
        * all kinds of skulls, including dragon head
    * #wrnmd:wall_torch_like
        * torch and redstone torch
    * #wrnmd:grass_path_like
        * grass path and farmland
    * #wrnmd:torch_like
        * torch and redstone torch
    * #wrnmd:wall_coral_like
        * all kinds of corals
    * #wrnmd:coral_plant_like
        * all kinds of corals
    * #wrnmd:coral_fan_like
        * all kinds of corals
    * #wrnmd:grass_like
        * grass, fern and dead bush
    * #wrnmd:sapling_like
        * all kinds of saplings and seagrass
    * #wrnmd:wall_banner_like
        * wall banner
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
    * some changes in examples.