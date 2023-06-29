if callType == LuaCallType.Init then
	WOLLO_INFINITE_DELAY = 1e8
	wollo_ld_isOpen = {false, false}
	wollo_ld_outsideAllTriggers = {true, true}
	wollo_ld_cardRemovalDelay = {WOLLO_INFINITE_DELAY, WOLLO_INFINITE_DELAY};

	wollo_ld_cardSlot = {wollo_ld_cardSlot1, wollo_ld_cardSlot2}
	wollo_ld_insideTrigger = {wollo_ld_insideTrigger1, wollo_ld_insideTrigger2}
	wollo_ld_outsideTrigger = {wollo_ld_outsideTrigger1, wollo_ld_outsideTrigger2}
	wollo_ld_loungeDoorAnimation = {wollo_ld_loungeDoorAnimation1, wollo_ld_loungeDoorAnimation2}
	wollo_ld_doorSound = {wollo_ld_doorSound1, wollo_ld_doorSound2}
	wollo_ld_redLight = {wollo_ld_redLight1, wollo_ld_redLight2}
	wollo_ld_checkNow = {wollo_ld_checkNow1, wollo_ld_checkNow2}

elseif callType == LuaCallType.SwitchStarted then
	if context == wollo_ld_counter then
		for i = 1, #wollo_ld_cardSlot do
			if wollo_ld_cardRemovalDelay[i] ~= WOLLO_INFINITE_DELAY then
				wollo_ld_outsideAllTriggers[i] = not wollo_ld_outsideTrigger[i].unlocked and not wollo_ld_insideTrigger[i].unlocked
				if wollo_ld_outsideAllTriggers[i] then
					wollo_ld_cardRemovalDelay[i] = wollo_ld_cardRemovalDelay[i] - 1
					if wollo_ld_cardRemovalDelay[i] == 0 then
						api.setLockValue(wollo_ld_cardSlot[i], 0, 1)
						wollo_ld_cardRemovalDelay[i] = WOLLO_INFINITE_DELAY
						api.activateSwitch(wollo_ld_redLight[i])
					end
				end
			end
		end
	else
		for i = 1, #wollo_ld_cardSlot do
			if context == wollo_ld_checkNow[i] then
				-- door should be open if player is in outside trigger and door is unlocked OR if player is in inside trigger
				local shouldBeOpen = (wollo_ld_cardSlot[i].unlocked and wollo_ld_outsideTrigger[i].unlocked) or wollo_ld_insideTrigger[i].unlocked

				if shouldBeOpen ~= wollo_ld_isOpen[i] then
					api.activateSwitch(wollo_ld_loungeDoorAnimation[i])
					api.setLockValue(wollo_ld_doorSound[i], 1, 1)
					wollo_ld_isOpen[i] = shouldBeOpen
				end

				if not wollo_ld_outsideTrigger[i].unlocked and not wollo_ld_insideTrigger[i].unlocked then
					-- players left both triggers, start lock countdown
					wollo_ld_cardRemovalDelay[i] = 5
				end

				if wollo_ld_insideTrigger[i].unlocked and not wollo_ld_cardSlot[i].unlocked then
					-- players entered inside trigger, unlock card
					api.setLockValue(wollo_ld_cardSlot[i], 1, 1)
				end
			end
		end
	end
end