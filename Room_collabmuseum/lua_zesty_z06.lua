function compareSlots(slot1, slot2)
	if slots[slot1][1] == "X"
	or slots[slot1][2] == "X"
	or slots[slot2][1] == "X"
	or slots[slot2][2] == "X"
	then
		return false
	end
	
	if slots[slot1][1] == slots[slot2][1] --matching shape
	or slots[slot1][2] == slots[slot2][2] --matching number
	then
		return true
	else
		return false
	end
end

function checkLink(slot1, slot2, link_on, link_off)
	if compareSlots(slot1, slot2) then
		api.setLockValue(link_on, 1, 1)
		api.setLockValue(z06_playsound, 1, 1)
	else
		api.setLockValue(link_off, 1, 1)
	end
end

function checkLinks(i)
	--printSlots()
	
	if i == 1 or i == 2 then
		if compareSlots(1, 2) then
			api.setLockValue(z06_link_1a_on, 1, 1)
		else
			api.setLockValue(z06_link_1a_off, 1, 1)
		end
	end
	
	if i == 2 or i == 3 then
		if compareSlots(2, 3) then
			api.setLockValue(z06_link_1b_on, 1, 1)
		else
			api.setLockValue(z06_link_1b_off, 1, 1)
		end
	end
	
	if compareSlots(1, 4) then
		api.setLockValue(z06_link_2a_on, 1, 1)
	else
		api.setLockValue(z06_link_2a_off, 1, 1)
	end
	
	if compareSlots(2, 5) then
		api.setLockValue(z06_link_2b_on, 1, 1)
	else
		api.setLockValue(z06_link_2b_off, 1, 1)
	end
	
	if compareSlots(2, 6) then
		api.setLockValue(z06_link_2c_on, 1, 1)
	else
		api.setLockValue(z06_link_2c_off, 1, 1)
	end
	
	if compareSlots(3, 7) then
		api.setLockValue(z06_link_2d_on, 1, 1)
	else
		api.setLockValue(z06_link_2d_off, 1, 1)
	end
	
	if compareSlots(3, 8) then
		api.setLockValue(z06_link_2e_on, 1, 1)
	else
		api.setLockValue(z06_link_2e_off, 1, 1)
	end
	
	if compareSlots(4, 5) then
		api.setLockValue(z06_link_3a_on, 1, 1)
	else
		api.setLockValue(z06_link_3a_off, 1, 1)
	end
	
	if compareSlots(5, 6) then
		api.setLockValue(z06_link_3b_on, 1, 1)
	else
		api.setLockValue(z06_link_3b_off, 1, 1)
	end
	
	if compareSlots(6, 7) then
		api.setLockValue(z06_link_3c_on, 1, 1)
	else
		api.setLockValue(z06_link_3c_off, 1, 1)
	end
	
	if compareSlots(7, 8) then
		api.setLockValue(z06_link_3d_on, 1, 1)
	else
		api.setLockValue(z06_link_3d_off, 1, 1)
	end
	
	if compareSlots(4, 9) then
		api.setLockValue(z06_link_4a_on, 1, 1)
	else
		api.setLockValue(z06_link_4a_off, 1, 1)
	end
	
	if compareSlots(6, 9) then
		api.setLockValue(z06_link_4b_on, 1, 1)
	else
		api.setLockValue(z06_link_4b_off, 1, 1)
	end
	
	if compareSlots(6, 10) then
		api.setLockValue(z06_link_4c_on, 1, 1)
	else
		api.setLockValue(z06_link_4c_off, 1, 1)
	end
	
	if compareSlots(7, 10) then
		api.setLockValue(z06_link_4d_on, 1, 1)
	else
		api.setLockValue(z06_link_4d_off, 1, 1)
	end
	
	if compareSlots(8, 11) then
		api.setLockValue(z06_link_4e_on, 1, 1)
	else
		api.setLockValue(z06_link_4e_off, 1, 1)
	end
	
	if compareSlots(9, 10) then
		api.setLockValue(z06_link_5a_on, 1, 1)
	else
		api.setLockValue(z06_link_5a_off, 1, 1)
	end
	
	if compareSlots(10, 11) then
		api.setLockValue(z06_link_5b_on, 1, 1)
	else
		api.setLockValue(z06_link_5b_off, 1, 1)
	end
end

function setSlot(i, key)
	if key == nil then
		slots[i] = {}
		slots[i][1] = "X"
		slots[i][2] = "X"
	else
		if key == z06_c2_painting.transform.gameObject then
			slots[i][1] = "c"
			slots[i][2] = "2"
		elseif key == z06_c3_painting.transform.gameObject then
			slots[i][1] = "c"
			slots[i][2] = "3"
		elseif key == z06_d1_painting.transform.gameObject then
			slots[i][1] = "d"
			slots[i][2] = "1"
		elseif key == z06_d2_painting.transform.gameObject then
			slots[i][1] = "d"
			slots[i][2] = "2"
		elseif key == z06_d4_painting.transform.gameObject then
			slots[i][1] = "d"
			slots[i][2] = "4"
		elseif key == z06_h1_painting.transform.gameObject then
			slots[i][1] = "h"
			slots[i][2] = "1"
		elseif key == z06_h4_painting.transform.gameObject then
			slots[i][1] = "h"
			slots[i][2] = "4"
		elseif key == z06_s1_painting.transform.gameObject then
			slots[i][1] = "s"
			slots[i][2] = "1"
		elseif key == z06_s2_painting.transform.gameObject then
			slots[i][1] = "s"
			slots[i][2] = "2"
		elseif key == z06_s3_painting.transform.gameObject then
			slots[i][1] = "s"
			slots[i][2] = "3"
		end
	end
end

function printSlots()
	api.levelNote("Slot Values:")
	for i=1, rows do
		api.levelNote(slots[i][1] .. "," .. slots[i][2])
	end
end

if callType == LuaCallType.Init then
	--populate slot values
	rows = 11
	slots = {}
	for i = 1, rows do
		setSlot(i, nil)
	end
	
	--hardcode center circle slot
	slots[6][1] = "c"
	slots[6][2] = "1"
	
elseif callType == LuaCallType.Unlock then
	if context == z06_slot_1_remove then
		setSlot(1, nil)
		checkLinks(1)
	elseif context == z06_slot_2_remove then
		setSlot(2, nil)
		checkLinks(2)
	elseif context == z06_slot_3_remove then
		setSlot(3, nil)
		checkLinks(3)
	elseif context == z06_slot_4_remove then
		setSlot(4, nil)
		checkLinks(4)
	elseif context == z06_slot_5_remove then
		setSlot(5, nil)
		checkLinks(5)
	elseif context == z06_slot_7_remove then
		setSlot(7, nil)
		checkLinks(7)
	elseif context == z06_slot_8_remove then
		setSlot(8, nil)
		checkLinks(8)
	elseif context == z06_slot_9_remove then
		setSlot(9, nil)
		checkLinks(9)
	elseif context == z06_slot_10_remove then
		setSlot(10, nil)
		checkLinks(10)
	elseif context == z06_slot_11_remove then
		setSlot(11, nil)
		checkLinks(11)
	elseif context == z06_slot_remove_all then
		--null out all slot values (except center (slot 6))
		for i=1, 5 do
			setSlot(i, nil)
		end
		for i=7, rows do
			setSlot(i, nil)
		end
		--check over all links
		--for i=1, rows do
		--	checkLinks(i)
		--end
		api.setLockValue(z06_link_1a_off, 1, 1)
		api.setLockValue(z06_link_1b_off, 1, 1)
		api.setLockValue(z06_link_2a_off, 1, 1)
		api.setLockValue(z06_link_2b_off, 1, 1)
		api.setLockValue(z06_link_2c_off, 1, 1)
		api.setLockValue(z06_link_2d_off, 1, 1)
		api.setLockValue(z06_link_2e_off, 1, 1)
		api.setLockValue(z06_link_3a_off, 1, 1)
		api.setLockValue(z06_link_3b_off, 1, 1)
		api.setLockValue(z06_link_3c_off, 1, 1)
		api.setLockValue(z06_link_3d_off, 1, 1)
		api.setLockValue(z06_link_4a_off, 1, 1)
		api.setLockValue(z06_link_4b_off, 1, 1)
		api.setLockValue(z06_link_4c_off, 1, 1)
		api.setLockValue(z06_link_4d_off, 1, 1)
		api.setLockValue(z06_link_4e_off, 1, 1)
		api.setLockValue(z06_link_5a_off, 1, 1)
		api.setLockValue(z06_link_5b_off, 1, 1)
	end
	
elseif callType == LuaCallType.Slot then
	if context == z06_slot_1 then
		setSlot(1, context.insertedKey)
		checkLinks(1)
	elseif context == z06_slot_2 then
		setSlot(2, context.insertedKey)
		checkLinks(2)
	elseif context == z06_slot_3 then
		setSlot(3, context.insertedKey)
		checkLinks(3)
	elseif context == z06_slot_4 then
		setSlot(4, context.insertedKey)
		checkLinks(4)
	elseif context == z06_slot_5 then
		setSlot(5, context.insertedKey)
		checkLinks(5)
	elseif context == z06_slot_7 then
		setSlot(7, context.insertedKey)
		checkLinks(7)
	elseif context == z06_slot_8 then
		setSlot(8, context.insertedKey)
		checkLinks(8)
	elseif context == z06_slot_9 then
		setSlot(9, context.insertedKey)
		checkLinks(9)
	elseif context == z06_slot_10 then
		setSlot(10, context.insertedKey)
		checkLinks(10)
	elseif context == z06_slot_11 then
		setSlot(11, context.insertedKey)
		checkLinks(11)
	end
end