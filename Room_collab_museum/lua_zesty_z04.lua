function refreshSlots()
	--api.levelNote("Refreshing slots")
	
	--record state of filled slots
	rows = 9
	a = {}
	b = {}
	
	--reset row state
	for i=1, rows do
		a[i] = true
		b[i] = true
	end
	
	--check which rows are occupied
	if z04_slot2_a1.unlocked then
		a[1] = false
		a[2] = false
	end
	if z04_slot2_a2.unlocked then
		a[2] = false
		a[3] = false
	end
	if z04_slot2_a3.unlocked then
		a[3] = false
		a[4] = false
	end
	if z04_slot2_a4.unlocked then
		a[4] = false
		a[5] = false
	end
	if z04_slot2_a5.unlocked then
		a[5] = false
		a[6] = false
	end
	if z04_slot2_a6.unlocked then
		a[6] = false
		a[7] = false
	end
	if z04_slot2_a7.unlocked then
		a[7] = false
		a[8] = false
	end
	if z04_slot2_a8.unlocked then
		a[8] = false
		a[9] = false
	end
	if z04_slot3_a1.unlocked then
		a[1] = false
		a[2] = false
		a[3] = false
	end
	if z04_slot3_a2.unlocked then
		a[2] = false
		a[3] = false
		a[4] = false
	end
	if z04_slot3_a3.unlocked then
		a[3] = false
		a[4] = false
		a[5] = false
	end
	if z04_slot3_a4.unlocked then
		a[4] = false
		a[5] = false
		a[6] = false
	end
	if z04_slot3_a5.unlocked then
		a[5] = false
		a[6] = false
		a[7] = false
	end
	if z04_slot3_a6.unlocked then
		a[6] = false
		a[7] = false
		a[8] = false
	end
	if z04_slot3_a7.unlocked then
		a[7] = false
		a[8] = false
		a[9] = false
	end
	
	if z04_slot2_b1.unlocked then
		b[1] = false
		b[2] = false
	end
	if z04_slot2_b2.unlocked then
		b[2] = false
		b[3] = false
	end
	if z04_slot2_b3.unlocked then
		b[3] = false
		b[4] = false
	end
	if z04_slot2_b4.unlocked then
		b[4] = false
		b[5] = false
	end
	if z04_slot2_b5.unlocked then
		b[5] = false
		b[6] = false
	end
	if z04_slot2_b6.unlocked then
		b[6] = false
		b[7] = false
	end
	if z04_slot2_b7.unlocked then
		b[7] = false
		b[8] = false
	end
	if z04_slot2_b8.unlocked then
		b[8] = false
		b[9] = false
	end
	if z04_slot3_b1.unlocked then
		b[1] = false
		b[2] = false
		b[3] = false
	end
	if z04_slot3_b2.unlocked then
		b[2] = false
		b[3] = false
		b[4] = false
	end
	if z04_slot3_b3.unlocked then
		b[3] = false
		b[4] = false
		b[5] = false
	end
	if z04_slot3_b4.unlocked then
		b[4] = false
		b[5] = false
		b[6] = false
	end
	if z04_slot3_b5.unlocked then
		b[5] = false
		b[6] = false
		b[7] = false
	end
	if z04_slot3_b6.unlocked then
		b[6] = false
		b[7] = false
		b[8] = false
	end
	if z04_slot3_b7.unlocked then
		b[7] = false
		b[8] = false
		b[9] = false
	end
	
	z04_slot2_a1.active = a[1] and a[2]
	z04_slot2_a2.active = a[2] and a[3]
	z04_slot2_a3.active = a[3] and a[4]
	z04_slot2_a4.active = a[4] and a[5]
	z04_slot2_a5.active = a[5] and a[6]
	z04_slot2_a6.active = a[6] and a[7]
	z04_slot2_a7.active = a[7] and a[8]
	z04_slot2_a8.active = a[8] and a[9]
	z04_slot3_a1.active = a[1] and a[2] and a[3]
	z04_slot3_a2.active = a[2] and a[3] and a[4]
	z04_slot3_a3.active = a[3] and a[4] and a[5]
	z04_slot3_a4.active = a[4] and a[5] and a[6]
	z04_slot3_a5.active = a[5] and a[6] and a[7]
	z04_slot3_a6.active = a[6] and a[7] and a[8]
	z04_slot3_a7.active = a[7] and a[8] and a[9]
	
	z04_slot2_b1.active = b[1] and b[2]
	z04_slot2_b2.active = b[2] and b[3]
	z04_slot2_b3.active = b[3] and b[4]
	z04_slot2_b4.active = b[4] and b[5]
	z04_slot2_b5.active = b[5] and b[6]
	z04_slot2_b6.active = b[6] and b[7]
	z04_slot2_b7.active = b[7] and b[8]
	z04_slot2_b8.active = b[8] and b[9]
	z04_slot3_b1.active = b[1] and b[2] and b[3]
	z04_slot3_b2.active = b[2] and b[3] and b[4]
	z04_slot3_b3.active = b[3] and b[4] and b[5]
	z04_slot3_b4.active = b[4] and b[5] and b[6]
	z04_slot3_b5.active = b[5] and b[6] and b[7]
	z04_slot3_b6.active = b[6] and b[7] and b[8]
	z04_slot3_b7.active = b[7] and b[8] and b[9]
	
	--api.levelNote("Column A:")
	--for i=1, rows do
	--	api.levelNote(a[i])
	--end
	--api.levelNote("Column B:")
	--for i=1, rows do
	--	api.levelNote(b[i])
	--end
	
	--check answer v1
	answerACompletion = 0
	answerACompletionMax = 8
	
	if z04_slot3_a1.insertedKey == z04_piece_gtc.transform.gameObject then
		answerACompletion = answerACompletion + 1
	end
	if z04_slot2_a4.insertedKey == z04_piece_ta.transform.gameObject then
		answerACompletion = answerACompletion + 1
	end
	if z04_slot2_a6.insertedKey == z04_piece_cg.transform.gameObject then
		answerACompletion = answerACompletion + 1
	end
	if z04_slot2_a8.insertedKey == z04_piece_aa.transform.gameObject then
		answerACompletion = answerACompletion + 1
	end
	if z04_slot2_b1.insertedKey == z04_piece_ca.transform.gameObject then
		answerACompletion = answerACompletion + 1
	end
	if z04_slot2_b3.insertedKey == z04_piece_ga.transform.gameObject then
		answerACompletion = answerACompletion + 1
	end
	if z04_slot2_b5.insertedKey == z04_piece_tg.transform.gameObject then
		answerACompletion = answerACompletion + 1
	end
	if z04_slot3_b7.insertedKey == z04_piece_ctt.transform.gameObject then
		answerACompletion = answerACompletion + 1
	end	
	
	--check answer v2
	answerBCompletion = 0
	answerBCompletionMax = 8
	
	if z04_slot3_b1.insertedKey == z04_piece_gtc.transform.gameObject then
		answerBCompletion = answerBCompletion + 1
	end
	if z04_slot2_b4.insertedKey == z04_piece_ta.transform.gameObject then
		answerBCompletion = answerBCompletion + 1
	end
	if z04_slot2_b6.insertedKey == z04_piece_cg.transform.gameObject then
		answerBCompletion = answerBCompletion + 1
	end
	if z04_slot2_b8.insertedKey == z04_piece_aa.transform.gameObject then
		answerBCompletion = answerBCompletion + 1
	end
	if z04_slot2_a1.insertedKey == z04_piece_ca.transform.gameObject then
		answerBCompletion = answerBCompletion + 1
	end
	if z04_slot2_a3.insertedKey == z04_piece_ga.transform.gameObject then
		answerBCompletion = answerBCompletion + 1
	end
	if z04_slot2_a5.insertedKey == z04_piece_tg.transform.gameObject then
		answerBCompletion = answerBCompletion + 1
	end
	if z04_slot3_a7.insertedKey == z04_piece_ctt.transform.gameObject then
		answerBCompletion = answerBCompletion + 1
	end
	
	--api.levelNote(answerACompletion.."/"..answerACompletionMax)
	--api.levelNote(answerBCompletion.."/"..answerBCompletionMax)
	if answerACompletion == answerACompletionMax then
		api.setLockValue(z04_solve, 1, 1)
	end
	if answerBCompletion == answerBCompletionMax then
		api.setLockValue(z04_solve, 1, 1)
		api.setLockValue(z04_flip_model, 1, 1)
	end
	
end

if callType == LuaCallType.Init then
	
elseif callType == LuaCallType.Unlock then
	if context == z04_slota_change
	or context == z04_slotb_change then
		refreshSlots()
	end
elseif callType == LuaCallType.Slot then
	if context == z04_slot2_a1
	or context == z04_slot2_a2
	or context == z04_slot2_a3
	or context == z04_slot2_a4
	or context == z04_slot2_a5
	or context == z04_slot2_a6
	or context == z04_slot2_a7
	or context == z04_slot2_a8
	or context == z04_slot3_a1
	or context == z04_slot3_a2
	or context == z04_slot3_a3
	or context == z04_slot3_a4
	or context == z04_slot3_a5
	or context == z04_slot3_a6
	or context == z04_slot3_a7
	or context == z04_slot2_b1
	or context == z04_slot2_b2
	or context == z04_slot2_b3
	or context == z04_slot2_b4
	or context == z04_slot2_b5
	or context == z04_slot2_b6
	or context == z04_slot2_b7
	or context == z04_slot2_b8
	or context == z04_slot3_b1
	or context == z04_slot3_b2
	or context == z04_slot3_b3
	or context == z04_slot3_b4
	or context == z04_slot3_b5
	or context == z04_slot3_b6
	or context == z04_slot3_b7
	then
		refreshSlots()
	end
end