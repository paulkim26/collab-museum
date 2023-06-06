if callType == LuaCallType.Init then
	spincardholder_01 = true;
	spincardholder_02 = true; 
	spincardholder_03 = true; 

elseif callType == LuaCallType.Update then
	if spincardholder_01 == true then
                chazzyb_playercards1.transform.Rotate(6*Vector3.up * Time.deltaTime);
	end
	if spincardholder_02 == true then
                chazzyb_playercards2.transform.Rotate(6*Vector3.up * Time.deltaTime);
	end
	if spincardholder_03 == true then
                chazzyb_playercards3.transform.Rotate(6*Vector3.up * Time.deltaTime);
	end
	
	if spincardholder_01 == false then
                chazzyb_playercards1.transform.Rotate(0*Vector3.up * Time.deltaTime);
	end
	if spincardholder_02 == false then
                chazzyb_playercards2.transform.Rotate(0*Vector3.up * Time.deltaTime);
	end
	if spincardholder_03 == false then
                chazzyb_playercards3.transform.Rotate(0*Vector3.up * Time.deltaTime);
	end

elseif callType == LuaCallType.TriggerEnter then
	if context == chazzyb_CardHolder1Trigger then
		spincardholder_01 = false;
	end
	if context == chazzyb_CardHolder2Trigger then
		spincardholder_02 = false;
	end
	if context == chazzyb_CardHolder3Trigger then
		spincardholder_03 = false;
	end

elseif callType == LuaCallType.TriggerExit then
	if context == chazzyb_CardHolder1Trigger then
		spincardholder_01 = true;
	end
	if context == chazzyb_CardHolder2Trigger then
		spincardholder_02 = true;
	end
	if context == chazzyb_CardHolder3Trigger then
		spincardholder_03 = true;
	end
end