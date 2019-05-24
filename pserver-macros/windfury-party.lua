-- Sends message in party when windfury is not active. Keeps posting in /p but not more than once every 9sec
-- Will not send a message if there is no shaman in group or the shaman is out of range or dead.
-- Example /p WINDFURY Bob

function WindfuryParty()
    if not lastcall then lastcall = 0 end
        if not(buffed("windfury"))then
            if(lastcall+5 < GetTime())then
                for i=1,5 do
                    if(UnitClass("party"..i) == "Shaman" and not(UnitIsDead("party"..i)) and UnitIsConnected("party"..i) and UnitIsVisible("party"..i))then
                            lastcall = GetTime();
                            SendChatMessage("WINDFURY "..UnitName("party"..i), PARTY, nil)
                    end
                end
            end
        end
    end