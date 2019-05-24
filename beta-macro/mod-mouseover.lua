--- normal keypress uses ability on target, modified keypress(shift/alt/ctrl) gets target from mouseover ---
--- usage: /cast [mod <modifier-key> target] ability | casts on mouseover target without dropping current target
--- usage: /cast ability | casts normally on focused/targetted target

--- example:
#showtooltip
/cast [mod shift @mouseover] Kick
/cast Kick

#showtooltip
/cast [mod shift @mouseover] Sap
/cast Sap

#showtooltip
/cast [mod shift @mouseover] Blind
/cast Blind