CreateConVar("tabmenu_admins", "superadmin", FCVAR_ARCHIVE, "Admin usergroups which see team names of every people on the TAB menu")

util.AddNetworkString("TabMenuRefresh")

hook.Add("PlayerSpawn", "TabMenuRefreshHook", function(ply)
    net.Start("TabMenuRefresh")
        net.WriteString(GetConVar("tabmenu_admins"):GetString())
    net.Send(ply)
end)