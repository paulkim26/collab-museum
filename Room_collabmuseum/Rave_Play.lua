if callType == LuaCallType.Init then


--INPUT THE SONG LENGTH IN SECONDS

	SongLength = 244

	
	
	
    -- This just places all the song position markers at the start
	Song_Position.transform.position = Song_Start_Location.transform.position
	Song_Position.pivot.position = Song_Start_Location.transform.position

	
-- START SONG EMPTY IS PINGED

elseif callType == LuaCallType.Unlock then
	
	if context == Rave_Lock then

			-- api.activateSwitch(Play_Song)
			SONGPLAYING = true	

	end
	
	
elseif callType == LuaCallType.SwitchDone then

-- STOP SONG EMPTY IS PINGED

	if context == Stop_Song then
	
	SONGPLAYING = false
	Song_Position.transform.position = Song_Start_Location.transform.position
	Song_Position.pivot.position = Song_Start_Location.transform.position
	end

	
elseif callType == LuaCallType.TriggerEnter then

-- BLUE BALL ENTERS RED TRIGGER AND THE LOOP RESTARTS

	if context == SONG_END then
	
	-- api.activateSwitch(Play_Song)
	Song_Position.transform.position = Song_Start_Location.transform.position
	Song_Position.pivot.position = Song_Start_Location.transform.position
	
	end

	

elseif callType == LuaCallType.Update then

-- CALCULATES THE DISTANCE BETWEEN BEGINNING GREEN BALL AND ENDING RED BALL ON THE TIMELINE 
-- AND THEN USES THE LENGTH OF THE SONG IN SECONDS (INDICATED AT THE VERY TOP) TO DETERMINE THE SPEED OF THE BLUE BALL FOR EACH SONG

	if SONGPLAYING == true then
				beginPos = Song_Start_Location.transform.position
				endPos = Song_End_Location.transform.position
				difference = endPos-beginPos
				length = difference.z
				Speed = length/SongLength
				Song_Position.transform.Translate(Speed*Time.deltaTime,0,0)
				
	end

end