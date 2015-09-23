local hotbar_size = minetest.setting_get("hotbar_size") or 16

minetest.register_on_joinplayer(function(player)
	player:hud_set_hotbar_itemcount(hotbar_size)

	player:hud_set_flags({crosshair = true, hotbar = true, healthbar = false, wielditem = true, breathbar = false})
	player:hud_set_hotbar_image("hud_hotbar.png")
	player:hud_set_hotbar_selected_image("hud_hotbar_selected.png")
end)
