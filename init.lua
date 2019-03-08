function register_tree(treename)
    local trunk_name = 'moretrees:' .. treename .. '_trunk'
    local sappling_name = 'moretrees:' .. treename .. '_sapling'
    local leaves_name = 'moretrees:' .. treename .. '_leaves'

    tubelib_addons1.register_tree_node(trunk_name, trunk_name, sappling_name)
    tubelib_addons1.register_farming_node(leaves_name)
    tubelib.add_grinder_recipe({input=trunk_name, output=leaves_name .. ' 8'})
end

-- "ordinary" moretrees blocks
for i in ipairs(moretrees.treelist) do
    local treename = moretrees.treelist[i][1]

    if treename ~= 'birch' and treename ~= 'spruce' and treename ~= 'fir' and treename ~= 'jungletree' then
        register_tree(treename)
    end
end

-- "weird" moretrees trunks
tubelib_addons1.register_tree_node('moretrees:date_palm_fruit_trunk', 'moretrees:date_palm_trunk', 'moretrees:date_palm_sapling')
tubelib.add_grinder_recipe({input='moretrees:date_palm_fruit_trunk', output='moretrees:date_palm_leaves 8'})
tubelib_addons1.register_tree_node('moretrees:date_palm_ffruit_trunk', 'moretrees:date_palm_trunk', 'moretrees:date_palm_sapling')
tubelib.add_grinder_recipe({input='moretrees:date_palm_ffruit_trunk', output='moretrees:date_palm_leaves 8'})
tubelib_addons1.register_tree_node('moretrees:date_palm_mfruit_trunk', 'moretrees:date_palm_trunk', 'moretrees:date_palm_sapling')
tubelib.add_grinder_recipe({input='moretrees:date_palm_mfruit_trunk', output='moretrees:date_palm_leaves 8'})
tubelib_addons1.register_tree_node('moretrees:jungletree_trunk', 'default:jungletree', 'default:junglesapling')
tubelib.add_grinder_recipe({input='moretrees:jungletree_trunk', output='default:jungleleaves 8'})
tubelib_addons1.register_tree_node('moretrees:palm_fruit_trunk', 'moretrees:palm_trunk', 'moretrees:palm_sapling')
tubelib.add_grinder_recipe({input='moretrees:palm_fruit_trunk', output='moretrees:palm_leaves 8'})
tubelib_addons1.register_tree_node('moretrees:palm_fruit_trunk_gen', 'moretrees:palm_trunk', 'moretrees:palm_sapling')
tubelib.add_grinder_recipe({input='moretrees:palm_fruit_trunk_gen', output='moretrees:palm_leaves 8'})
tubelib_addons1.register_tree_node('moretrees:rubber_tree_trunk_empty', 'moretrees:rubber_tree_trunk_empty', 'moretrees:rubber_tree_sapling')
tubelib.add_grinder_recipe({input='moretrees:rubber_tree_trunk_empty', output='moretrees:rubber_tree_leaves 8'})

-- moretrees fruit and leaves
tubelib_addons1.register_farming_node('moretrees:acorn')
tubelib_addons1.register_farming_node('moretrees:cedar_cone')
tubelib_addons1.register_farming_node('moretrees:coconut_3', 'moretrees:coconut')
tubelib_addons1.register_farming_node('moretrees:dates_f4', 'moretrees:date 16')
tubelib_addons1.register_farming_node('moretrees:fir_cone')
tubelib_addons1.register_farming_node('moretrees:fir_leaves_bright')
tubelib_addons1.register_farming_node('moretrees:jungletree_leaves_red')
tubelib_addons1.register_farming_node('moretrees:jungletree_leaves_yellow')
tubelib_addons1.register_farming_node('moretrees:spruce_cone')

-- farming mod
tubelib_addons1.register_farming_node('farming:beetroot_5', 'farming:beetroot 2', 'farming:beetroot_1')
tubelib_addons1.register_farming_node('farming:cocoa_4', 'farming:cocoa_beans 2', 'farming:cocoa_1')
tubelib_addons1.register_farming_node('farming:garlic_5', 'farming:garlic 2', 'farming:garlic_1')
tubelib_addons1.register_farming_node('farming:onion_5', 'farming:onion 2', 'farming:onion_1')
tubelib_addons1.register_farming_node('farming:pea_5', 'farming:pea_pod 3', 'farming:pea_1')
tubelib_addons1.register_farming_node('farming:pepper_5', 'farming:pepper 2', 'farming:pepper_1')
tubelib_addons1.register_farming_node('farming:pineapple_8', 'farming:pineapple 1', 'farming:pineapple_1')
