local hotbar_size = minetest.settings:get("hotbar_size") or 16
local health_visible = minetest.settings:get_bool("hotbar_health_visible") or false
local minimap_visible = minetest.settings:get_bool("enable_minimap") or false

minetest.register_on_joinplayer(function(player)
	player:hud_set_hotbar_itemcount(hotbar_size)

	player:hud_set_flags({crosshair = true, hotbar = true, healthbar = health_visible, wielditem = true, breathbar = health_visible, minimap = minimap_visible})
	player:hud_set_hotbar_image("hud_hotbar.png")
	player:hud_set_hotbar_selected_image("hud_hotbar_selected.png")
end)
