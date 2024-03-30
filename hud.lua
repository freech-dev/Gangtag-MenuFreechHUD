function txtGang(x,y ,width,height,scale, text, r,g,b,a)
    SetTextFont(6)
    SetTextProportional(false)
	  SetTextCentre(false)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow()
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end


RegisterNetEvent("JD:gangtag:SetToHUD")
AddEventHandler("JD:gangtag:SetToHUD", function (gangtag)
    gangtag = tostring(gangtag) or "~b~None set"
    if gangtag == " " or gangtag == "" then
        gangtag = "~b~None"
    end
    playerGangTag = gangtag
end)

playerGangTag = "None Set";
function setplayerGangTagGui(value)
 	playerGangTag = value
 	return
end


Citizen.CreateThread(function()
	Wait(800);
	while true do 
		Wait(0);
		local enabled = Config.gangtag_hud.enabled;
		if enabled then 
			TriggerEvent('freech-hud:UpdateHeadtagClient', playerGangTag);
		end
	end
end)
