-- Wispers shaman in party when windfury is not up. Keeps wispering but not more than once every 9sec 
-- Will not send a message if there is no shaman in group or the shaman is out of range or dead.
-- Example /w Bob WINDFURY
function WindfuryWhisper()
    if not lastcall then lastcall = 0 end
        if not(buffed("windfury"))then
            if(lastcall+9 < GetTime())then
                for i=1,5 do
                    if(UnitClass("party"..i) == "Shaman" and not(UnitIsDead("party"..i)) and UnitIsConnected("party"..i) and UnitIsVisible("party"..i))then
                            lastcall = GetTime();
                            SendChatMessage("WINDFURY", WHISPER, nil, UnitName("party"..i))
                    end
                end
            end
        end
    end