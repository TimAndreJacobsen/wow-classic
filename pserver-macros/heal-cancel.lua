/script if GetActionCooldown(4)<0.1 then CastSpellByName("Greater Heal(rank 4)"); end
/Script baic=GetTime() ;
/script baix=GetActionCooldown(4); if baix>0 then bais=(GetTime()+0.8); end
/Script if (UnitHealth"Target")>((UnitHealthMax"Target")-1000) and baic>bais then SpellStopCasting(); end


-- Source
-- http://vanillagaming.org/forum/index.php?topic=18767.0