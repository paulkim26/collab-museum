if callType == LuaCallType.Init then

	CARD_ROTATION = .1 * Vector3.up
	spincardholder = {true, true, true}
	chazzyb_playercards = {chazzyb_playercards1, chazzyb_playercards2, chazzyb_playercards3}
	chazzyb_CardHolderTrigger = {chazzyb_CardHolder1Trigger, chazzyb_CardHolder2Trigger, chazzyb_CardHolder3Trigger}

elseif callType == LuaCallType.SwitchStarted then
	if context == wollo_playerCardPulse then
		for i = 1, #spincardholder do
			if spincardholder[i] then
				chazzyb_playercards[i].transform.Rotate(CARD_ROTATION);
			end
		end
	end
elseif callType == LuaCallType.TriggerEnter or callType == LuaCallType.TriggerExit then
	for i = 1, #spincardholder do
		if context == chazzyb_CardHolderTrigger[i] then
			spincardholder[i] = callType == LuaCallType.TriggerExit;
		end
	end
end
