-- Checks for Battle Shout and Windfury and whispers ALL grouped shamans and warriors for their respective buffs
-- TODO: make it /partychat


function WhereIsBuffs()
    if not lastcall then lastcall = 0 end
    if not lastcall_x then lastcall_x = 0 end
        if not(buffed("Battle Shout"))then
            if(lastcall_x+2 < GetTime())then
                for i=1,GetNumPartyMembers(),1 do
                    if(UnitClass("party"..tostring(i)) == "Warrior" and not(UnitIsDead("party"..tostring(i))) and UnitIsConnected("party"..tostring(i)) and UnitIsVisible("party"..tostring(i)))then
                        lastcall_x = GetTime();
                        SendChatMessage("MISSING BATTLE SHOUT", WHISPER, nil, UnitName("party"..tostring(i)))
                    end
                end
            end
        end
        if not(buffed("Windfury"))then
            if(lastcall+2 < GetTime())then
                for i=1,GetNumPartyMembers(),1 do
                    if(UnitClass("party"..tostring(i)) == "Shaman" and not(UnitIsDead("party"..tostring(i))) and UnitIsConnected("party"..tostring(i)) and UnitIsVisible("party"..tostring(i)))then
                        lastcall = GetTime();
                        SendChatMessage("MISSING WINDFURY", WHISPER, nil, UnitName("party"..tostring(i)))
                    end
                end
            end
        end
    end