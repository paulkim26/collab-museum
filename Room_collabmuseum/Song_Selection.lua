if callType == LuaCallType.Init then


--INPUT THE FOLLOWING INFORMATION
	-- Enter how many songs you are using below
	Num_Songs = 9
	
	-- INPUT SONG LENGTH IN SECONDS
	Song1Length = 360
	Song2Length = 360
	Song3Length = 360
	Song4Length = 360
	Song5Length = 360
	Song6Length = 360
	Song7Length = 360
	Song8Length = 360	
	Song9Length = 360	
	
	
    -- This just places all the song position markers at the start
	Song1_Position.transform.position = Song1_Start_Location.transform.position
	Song1_Position.pivot.position = Song1_Start_Location.transform.position
	
	Song2_Position.transform.position = Song2_Start_Location.transform.position
	Song2_Position.pivot.position = Song2_Start_Location.transform.position
	
	Song3_Position.transform.position = Song3_Start_Location.transform.position
	Song3_Position.pivot.position = Song3_Start_Location.transform.position
	
	Song4_Position.transform.position = Song4_Start_Location.transform.position
	Song4_Position.pivot.position = Song4_Start_Location.transform.position

	Song5_Position.transform.position = Song5_Start_Location.transform.position
	Song5_Position.pivot.position = Song5_Start_Location.transform.position

	Song6_Position.transform.position = Song6_Start_Location.transform.position
	Song6_Position.pivot.position = Song6_Start_Location.transform.position

	Song7_Position.transform.position = Song7_Start_Location.transform.position
	Song7_Position.pivot.position = Song7_Start_Location.transform.position

	Song8_Position.transform.position = Song8_Start_Location.transform.position
	Song8_Position.pivot.position = Song8_Start_Location.transform.position

	Song9_Position.transform.position = Song9_Start_Location.transform.position
	Song9_Position.pivot.position = Song9_Start_Location.transform.position
	
	
elseif callType == LuaCallType.Unlock then
	
	Max_Empty_Value = Num_Songs - 1

-- BACK ON THE SONG SELECTION SCREEN

	if context == Button_Back_Lock then
	
		if Song_Selection_Empty.outputValue <= 0 then
			
			else

			Song_Selection_Empty.outputValue = Song_Selection_Empty.outputValue - 1
			api.activateSwitch(Song_Selection_Empty)
			
		end
-- FORWARD ON THE SONG SELECTION SCREEN	
	
	elseif context == Button_Forward_Lock then
		
			if Song_Selection_Empty.outputValue >= Max_Empty_Value then
			
			else

			Song_Selection_Empty.outputValue = Song_Selection_Empty.outputValue + 1
			api.activateSwitch(Song_Selection_Empty)
			
			end
	
-- PLAY SONG CURRENTLY ON SCREEN
	
	elseif context == Button_Play_Lock then
	
		-- THIS NEEDS TO BE UPDATED/ADDED TO IF THERE ARE MORE THAN 4 SONGS
		-- NEW EMPTIES NEED TO BE ADDED AS WELL (THE LINE OF 4 SMALL EMPTIES UNDER THE SCREEN)
		if Song_Selection_Empty.outputValue ==  0 then
			api.activateSwitch(Play_Song1)
			SONG1PLAYING = true	
			--api.levelNote("Play Song 1")	
		elseif Song_Selection_Empty.outputValue ==  1 then
			api.activateSwitch(Play_Song2)
			SONG2PLAYING = true
			--api.levelNote("Play Song 2")			
		elseif Song_Selection_Empty.outputValue ==  2 then
			api.activateSwitch(Play_Song3)
			SONG3PLAYING = true	
			--api.levelNote("Play Song 3")
		elseif Song_Selection_Empty.outputValue ==  3 then
			api.activateSwitch(Play_Song4)
			SONG4PLAYING = true	
			--api.levelNote("Play Song 4")
		elseif Song_Selection_Empty.outputValue ==  4 then
			api.activateSwitch(Play_Song5)
			SONG5PLAYING = true	
			--api.levelNote("Play Song 5")
		elseif Song_Selection_Empty.outputValue ==  5 then
			api.activateSwitch(Play_Song6)
			SONG6PLAYING = true	
			--api.levelNote("Play Song 6")
		elseif Song_Selection_Empty.outputValue ==  6 then
			api.activateSwitch(Play_Song7)
			SONG7PLAYING = true	
			--api.levelNote("Play Song 7")
		elseif Song_Selection_Empty.outputValue ==  7 then
			api.activateSwitch(Play_Song8)
			SONG8PLAYING = true	
			--api.levelNote("Play Song 8")
		elseif Song_Selection_Empty.outputValue ==  8 then
			api.activateSwitch(Play_Song9)
			SONG9PLAYING = true	
			--api.levelNote("Play Song 9")
		end

	end
	
	
elseif callType == LuaCallType.SwitchDone then

-- PRESS THE STOP BUTTON FOR THE PLAYING Song

	if context == Button_Stop_Song1 then
	
	SONG1PLAYING = false
	Song1_Position.transform.position = Song1_Start_Location.transform.position
	Song1_Position.pivot.position = Song1_Start_Location.transform.position
	--api.levelNote("Stop Button Song 1")
	end
	
	if context == Button_Stop_Song2 then
	
	SONG2PLAYING = false
	Song2_Position.transform.position = Song2_Start_Location.transform.position
	Song2_Position.pivot.position = Song2_Start_Location.transform.position
	--api.levelNote("Stop Button Song 2")
	end
	
	if context == Button_Stop_Song3 then
	
	SONG3PLAYING = false
	Song3_Position.transform.position = Song3_Start_Location.transform.position
	Song3_Position.pivot.position = Song3_Start_Location.transform.position
	--api.levelNote("Stop Button Song 3")
	end
	
	if context == Button_Stop_Song4 then
	
	SONG4PLAYING = false
	Song4_Position.transform.position = Song4_Start_Location.transform.position
	Song4_Position.pivot.position = Song4_Start_Location.transform.position
	--api.levelNote("Stop Button Song 4")
	end
	
	if context == Button_Stop_Song5 then
	
	SONG5PLAYING = false
	Song5_Position.transform.position = Song5_Start_Location.transform.position
	Song5_Position.pivot.position = Song5_Start_Location.transform.position
	--api.levelNote("Stop Button Song 5")
	end

	if context == Button_Stop_Song6 then
	
	SONG6PLAYING = false
	Song6_Position.transform.position = Song6_Start_Location.transform.position
	Song6_Position.pivot.position = Song6_Start_Location.transform.position
	--api.levelNote("Stop Button Song 6")
	end

	if context == Button_Stop_Song7 then
	
	SONG7PLAYING = false
	Song7_Position.transform.position = Song7_Start_Location.transform.position
	Song7_Position.pivot.position = Song7_Start_Location.transform.position
	--api.levelNote("Stop Button Song 7")
	end

	if context == Button_Stop_Song8 then
	
	SONG8PLAYING = false
	Song8_Position.transform.position = Song8_Start_Location.transform.position
	Song8_Position.pivot.position = Song8_Start_Location.transform.position
	--api.levelNote("Stop Button Song 8")
	end

	if context == Button_Stop_Song9 then
	
	SONG9PLAYING = false
	Song9_Position.transform.position = Song9_Start_Location.transform.position
	Song9_Position.pivot.position = Song9_Start_Location.transform.position
	--api.levelNote("Stop Button Song 9")
	end



elseif callType == LuaCallType.TriggerEnter then

-- THE SONG NATURALLY ENDS WHEN THE BLUE BALL ENTERS THE RED TRIGGER PLACED ON THE SONG TIMELINE

	if context == SONG1_END then
	
	SONG1PLAYING = false
	api.activateSwitch(Button_Stop_Song1)
	Song1_Position.transform.position = Song1_Start_Location.transform.position
	Song1_Position.pivot.position = Song1_Start_Location.transform.position
	--api.levelNote("End of song 1")
	
	end
	
	if context == SONG2_END then
	
	SONG2PLAYING = false
	api.activateSwitch(Button_Stop_Song2)
	Song2_Position.transform.position = Song2_Start_Location.transform.position
	Song2_Position.pivot.position = Song2_Start_Location.transform.position
	--api.levelNote("End of song 2")
	
	end
	
	if context == SONG3_END then
	
	SONG3PLAYING = false
	api.activateSwitch(Button_Stop_Song3)
	Song3_Position.transform.position = Song3_Start_Location.transform.position
	Song3_Position.pivot.position = Song3_Start_Location.transform.position
	--api.levelNote("End of song 3")
	
	end
	
	if context == SONG4_END then

	SONG4PLAYING = false
	api.activateSwitch(Button_Stop_Song4)
	Song4_Position.transform.position = Song4_Start_Location.transform.position
	Song4_Position.pivot.position = Song4_Start_Location.transform.position
	--api.levelNote("End of song 4")
	
	end
	
	if context == SONG5_END then

	SONG5PLAYING = false
	api.activateSwitch(Button_Stop_Song5)
	Song5_Position.transform.position = Song5_Start_Location.transform.position
	Song5_Position.pivot.position = Song5_Start_Location.transform.position
	--api.levelNote("End of song 5")
	
	end
	
	if context == SONG6_END then

	SONG6PLAYING = false
	api.activateSwitch(Button_Stop_Song6)
	Song6_Position.transform.position = Song6_Start_Location.transform.position
	Song6_Position.pivot.position = Song6_Start_Location.transform.position
	--api.levelNote("End of song 6")
	
	end

	if context == SONG7_END then

	SONG7PLAYING = false
	api.activateSwitch(Button_Stop_Song7)
	Song7_Position.transform.position = Song7_Start_Location.transform.position
	Song7_Position.pivot.position = Song7_Start_Location.transform.position
	--api.levelNote("End of song 7")
	
	end

	if context == SONG8_END then

	SONG8PLAYING = false
	api.activateSwitch(Button_Stop_Song8)
	Song8_Position.transform.position = Song8_Start_Location.transform.position
	Song8_Position.pivot.position = Song8_Start_Location.transform.position
	--api.levelNote("End of song 8")
	
	end

	if context == SONG9_END then

	SONG9PLAYING = false
	api.activateSwitch(Button_Stop_Song9)
	Song9_Position.transform.position = Song9_Start_Location.transform.position
	Song9_Position.pivot.position = Song9_Start_Location.transform.position
	--api.levelNote("End of song 9")
	
	end

elseif callType == LuaCallType.Update then

-- CALCULATES THE DISTANCE BETWEEN BEGINNING GREEN BALL AND ENDING RED BALL ON THE TIMELINE 
-- AND THEN USES THE LENGTH OF THE SONG IN SECONDS (INDICATED AT THE VERY TOP) TO DETERMINE THE SPEED OF THE BLUE BALL FOR EACH SONG

	if SONG1PLAYING == true then
				beginPos1 = Song1_Start_Location.transform.position
				endPos1 = Song1_End_Location.transform.position
				difference1 = endPos1-beginPos1
				length1 = difference1.z
				Speed1 = length1/Song1Length
				Song1_Position.transform.Translate(Speed1*Time.deltaTime,0,0)
				
	end
		
	if SONG2PLAYING == true then
				beginPos2 = Song2_Start_Location.transform.position
				endPos2 = Song2_End_Location.transform.position
				difference2 = endPos2-beginPos2
				length2 = difference2.z
				Speed2 = length2/Song2Length
				Song2_Position.transform.Translate(Speed2*Time.deltaTime,0,0)
				
	end
	
	if SONG3PLAYING == true then
				beginPos3 = Song3_Start_Location.transform.position
				endPos3 = Song3_End_Location.transform.position
				difference3 = endPos3-beginPos3
				length3 = difference3.z
				Speed3 = length3/Song3Length
				Song3_Position.transform.Translate(Speed3*Time.deltaTime,0,0)
				
	end

	if SONG4PLAYING == true then
				beginPos4 = Song4_Start_Location.transform.position
				endPos4 = Song4_End_Location.transform.position
				difference4 = endPos4-beginPos4
				length4 = difference4.z
				Speed4 = length4/Song4Length
				Song4_Position.transform.Translate(Speed4*Time.deltaTime,0,0)
			
	end

	if SONG5PLAYING == true then
				beginPos5 = Song5_Start_Location.transform.position
				endPos5 = Song5_End_Location.transform.position
				difference5 = endPos5-beginPos5
				length5 = difference5.z
				Speed5 = length5/Song5Length
				Song5_Position.transform.Translate(Speed5*Time.deltaTime,0,0)
			
	end

	if SONG6PLAYING == true then
				beginPos6 = Song6_Start_Location.transform.position
				endPos6 = Song6_End_Location.transform.position
				difference6 = endPos6-beginPos6
				length6 = difference6.z
				Speed6 = length6/Song6Length
				Song6_Position.transform.Translate(Speed6*Time.deltaTime,0,0)
			
	end

	if SONG7PLAYING == true then
				beginPos7 = Song7_Start_Location.transform.position
				endPos7 = Song7_End_Location.transform.position
				difference7 = endPos7-beginPos7
				length7 = difference7.z
				Speed7 = length7/Song7Length
				Song7_Position.transform.Translate(Speed7*Time.deltaTime,0,0)
			
	end

	if SONG8PLAYING == true then
				beginPos8 = Song8_Start_Location.transform.position
				endPos8 = Song8_End_Location.transform.position
				difference8 = endPos8-beginPos8
				length8 = difference8.z
				Speed8 = length8/Song8Length
				Song8_Position.transform.Translate(Speed8*Time.deltaTime,0,0)
			
	end

	if SONG9PLAYING == true then
				beginPos9 = Song9_Start_Location.transform.position
				endPos9 = Song9_End_Location.transform.position
				difference9 = endPos9-beginPos9
				length9 = difference9.z
				Speed9 = length9/Song9Length
				Song9_Position.transform.Translate(Speed9*Time.deltaTime,0,0)
			
	end

end