local function lang()
    if not cfgResolution.langage == "fr" then return "was kicked off the server because of its display format." end
    return "a été exclu du serveur en raison de son format d'affichage."
end

RegisterNetEvent("xResolution:kickPlayer")
AddEventHandler("xResolution:kickPlayer", function()
    print(("^1 %s %s"):format(GetPlayerName(source), lang()))
    DropPlayer(source, cfgResolution.reason)
end)