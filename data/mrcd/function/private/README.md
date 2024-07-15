# Tags
## User tags
- `mrcd_bullet`: go through block which player can pass
- `mrcd_entity`: also hit entities (if hit, stop)
- `mrcd_entity_targeted`: hit entities that have mrcd_target tag (if hit, stop)
- `mrcd_entity_bullet`: modifies mrcd_entity and mrcd_entity_targeted. When entity is found, they keep going

## Internal tags
- `mrcd_block_collision_done`: indicates that the block collision has been done (but not if it has collided)
- `mrcd_touch_edge`: indicates that the rays has collided with a block
- `mrcd_touch_edge_complex`: indicates that the rays has collided with a complex block (not a square, for example a slab)
- `mrcd_touch_entity`: indicates that the rays has collided with an entity
- `mrcd_touch_edge_air`: indicates that the `target` coords have been changed to the edge of the block face
- `mrcd_touch_<x|y|z>_<minus|plus>`: which block face the ray has hit

# Cooridantes
Are stored in scoreboards, each coordinate is indicated by the termination x, y or z. All values are in mblocks (milliblocks)
- `start_x,y,z`: world coords of the starting cast
- `block_x,y,z`: point of the ray relative to the corner of the block, range from 0-1000
- `block_corner_x,y,z`: absolute coordinate of current block from the corner (relative to the world, a.k. minecraft coordinates)
- `target_x,y,z`: distance from the start to the current target
- `abs_target_x,y,z`: absolute values of `target_x,y,z`
- `final_x,y,z`: final position if no block hit

# Motion vector
Are stored in scoreboards, like in coordinate, they termination x, y or z and are in mblocks (milliblocks). Vectors are writetn from origin, (0,0,0) to desitnation x,y,z
- `@s`: we use three scoreboards (mrcd_x,y,z) to be able to have multiple motion vectors, one for each entity
- `total_x,y,z`: motion vector of the current entity we are processing (a.k. max distance to travel each tick)
- `abs_total_x,y,z`: absolute values of `total_x,y,z`
- `traveled_x,y,z`: from the ray point to the collision point

# Flags
- `if_reach_target`: indicates if it reaches the target 