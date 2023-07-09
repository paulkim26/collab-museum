if callType == LuaCallType.Init then


--Script made very badly by Robin 2023-07-04. Happy 4th of July!


--EDIT ME TO YOUR PREFERENCES


	--Low/high amount of seconds to wait until next firework
			FireworksSecondsVariabilityLow = 1
			FireworksSecondsVariabilityHigh = 2.5
	
	--Min/max axis positions
		--X   -- these aren't symmetrical because origin of display is top left corner; using -25 for center +/- 150
			MinX = -175
			MaxX = 125
		--Y
			MinY = 130
			MaxY = 170
		--Z
			MinZ = 175
			MaxZ = 175
	
	--Reroll x coordinate if it is less than 1/n of the x range
		--(This will attempt 4 times to prevent successive fireworks being too close)
			RerollXScale = 3
	
	--Min/max firework scale
	
			MinScale = 2
			MaxScale = 3
	
	--Firework speed
			FireworkSpeed = 1.5
		
		
		
		
		
		

--STOP! GO BACK! STOP EDITING PAST THIS POINT




	
	--keep everything below here like this as default
	
	
	
	
	NextScale = math.random((MinScale*100),(MaxScale*100))/100
	NextX = math.random((MinX*100),(MaxX*100))/100
	NextY = math.random((MinY*100),(MaxY*100))/100
	NextZ = math.random((MinZ*100),(MaxZ*100))/100

	
	FireworksOn = false
	NextFirework = 1
	NextFireworkTimer = os.time()
	LastPlayedFirework = 1

    api.setLockValue(FireworkLock1B,0,1)
	NewFireworkLockValue1B = 1
	Totalframes1B = 26
	
	api.setLockValue(FireworkLock2B,0,1)
	NewFireworkLockValue2B = 1
	Totalframes2B = 26
	
	api.setLockValue(FireworkLock3B,0,1)
	NewFireworkLockValue3B = 1
	Totalframes3B = 26
	
	api.setLockValue(FireworkLock4B,0,1)
	NewFireworkLockValue4B = 1
	Totalframes4B = 26

elseif callType == LuaCallType.SwitchDone then

			--api.levelNote(NextX..","..NextY..","..NextZ)
			--api.levelNote("Next firework in "..NextFirework.." seconds")
			--api.levelNote(os.time()-NextFireworkTimer)
			
	if context == StartFireworks then
			if FireworksOn == true then
				FireworksOn = false
			else
				FireworksOn = true
			end
	elseif context == FireworkSwitch1B then	
	
		FireworkDisplay1B.transform.localScale = api.vector3(NextScale,NextScale,1)
		FireworkDisplay1B.transform.position = api.vector3(NextX,NextY,NextZ)

		PrevX = NextX
		NextScale = math.random((MinScale*100),(MaxScale*100))/100
		NextX = math.random((MinX*100),(MaxX*100))/100
		NextY = math.random((MinY*100),(MaxY*100))/100
		NextZ = math.random((MinZ*100),(MaxZ*100))/100
			if (math.abs(NextX - PrevX)) < ((math.abs(MaxX-MinX))/RerollXScale) then
				--api.levelNote("Rerolling X")
				NextX = math.random((MinX*100),(MaxX*100))/100
			end
			if (math.abs(NextX - PrevX)) < ((math.abs(MaxX-MinX))/RerollXScale) then
				--api.levelNote("Rerolling X x2")
				NextX = math.random((MinX*100),(MaxX*100))/100
			end
			if (math.abs(NextX - PrevX)) < ((math.abs(MaxX-MinX))/RerollXScale) then
				--api.levelNote("Rerolling X x3")
				NextX = math.random((MinX*100),(MaxX*100))/100
			end
			if (math.abs(NextX - PrevX)) < ((math.abs(MaxX-MinX))/RerollXScale) then
				--api.levelNote("Rerolling X x4")
				NextX = math.random((MinX*100),(MaxX*100))/100
			end
			if (math.abs(NextX - PrevX)) < ((math.abs(MaxX-MinX))/RerollXScale) then
				--api.levelNote("Reroll FAILED")
				NextX = math.random((MinX*100),(MaxX*100))/100
			end

		
		NextFirework = math.random((FireworksSecondsVariabilityLow*100),(FireworksSecondsVariabilityHigh*100))/100
		NextFireworkTimer = os.time()
		
		firework1Banimating = true
		startTime1B = os.time()
		
	elseif context == FireworkSwitch2B then
		FireworkDisplay2B.transform.localScale = api.vector3(NextScale,NextScale,1)
		FireworkDisplay2B.transform.position = api.vector3(NextX,NextY,NextZ)


		PrevX = NextX
		NextScale = math.random((MinScale*100),(MaxScale*100))/100
		NextX = math.random((MinX*100),(MaxX*100))/100
		NextY = math.random((MinY*100),(MaxY*100))/100
		NextZ = math.random((MinZ*100),(MaxZ*100))/100
			if (math.abs(NextX - PrevX)) < ((math.abs(MaxX-MinX))/RerollXScale) then
				--api.levelNote("Rerolling X")
				NextX = math.random((MinX*100),(MaxX*100))/100
			end
			if (math.abs(NextX - PrevX)) < ((math.abs(MaxX-MinX))/RerollXScale) then
				--api.levelNote("Rerolling X x2")
				NextX = math.random((MinX*100),(MaxX*100))/100
			end
			if (math.abs(NextX - PrevX)) < ((math.abs(MaxX-MinX))/RerollXScale) then
				--api.levelNote("Rerolling X x3")
				NextX = math.random((MinX*100),(MaxX*100))/100
			end
			if (math.abs(NextX - PrevX)) < ((math.abs(MaxX-MinX))/RerollXScale) then
				--api.levelNote("Rerolling X x4")
				NextX = math.random((MinX*100),(MaxX*100))/100
			end
			if (math.abs(NextX - PrevX)) < ((math.abs(MaxX-MinX))/RerollXScale) then
				--api.levelNote("Reroll FAILED")
				NextX = math.random((MinX*100),(MaxX*100))/100
			end


		NextFirework = math.random((FireworksSecondsVariabilityLow*100),(FireworksSecondsVariabilityHigh*100))/100
		NextFireworkTimer = os.time()
		
		firework2Banimating = true
		startTime2B = os.time()
	elseif context == FireworkSwitch3B then
		FireworkDisplay3B.transform.localScale = api.vector3(NextScale,NextScale,1)
		FireworkDisplay3B.transform.position = api.vector3(NextX,NextY,NextZ)

		PrevX = NextX
		NextScale = math.random((MinScale*100),(MaxScale*100))/100
		NextX = math.random((MinX*100),(MaxX*100))/100
		NextY = math.random((MinY*100),(MaxY*100))/100
		NextZ = math.random((MinZ*100),(MaxZ*100))/100
			if (math.abs(NextX - PrevX)) < ((math.abs(MaxX-MinX))/RerollXScale) then
				--api.levelNote("Rerolling X")
				NextX = math.random((MinX*100),(MaxX*100))/100
			end
			if (math.abs(NextX - PrevX)) < ((math.abs(MaxX-MinX))/RerollXScale) then
				--api.levelNote("Rerolling X x2")
				NextX = math.random((MinX*100),(MaxX*100))/100
			end
			if (math.abs(NextX - PrevX)) < ((math.abs(MaxX-MinX))/RerollXScale) then
				--api.levelNote("Rerolling X x3")
				NextX = math.random((MinX*100),(MaxX*100))/100
			end
			if (math.abs(NextX - PrevX)) < ((math.abs(MaxX-MinX))/RerollXScale) then
				--api.levelNote("Rerolling X x4")
				NextX = math.random((MinX*100),(MaxX*100))/100
			end
			if (math.abs(NextX - PrevX)) < ((math.abs(MaxX-MinX))/RerollXScale) then
				--api.levelNote("Reroll FAILED")
				NextX = math.random((MinX*100),(MaxX*100))/100
			end

		
		NextFirework = math.random((FireworksSecondsVariabilityLow*100),(FireworksSecondsVariabilityHigh*100))/100
		NextFireworkTimer = os.time()
		
		firework3Banimating = true
		startTime3B = os.time()
	elseif context == FireworkSwitch4B then
		FireworkDisplay4B.transform.localScale = api.vector3(NextScale,NextScale,1)
		FireworkDisplay4B.transform.position = api.vector3(NextX,NextY,NextZ)

		PrevX = NextX
		NextScale = math.random((MinScale*100),(MaxScale*100))/100
		NextX = math.random((MinX*100),(MaxX*100))/100
		NextY = math.random((MinY*100),(MaxY*100))/100
		NextZ = math.random((MinZ*100),(MaxZ*100))/100
			if (math.abs(NextX - PrevX)) < ((math.abs(MaxX-MinX))/RerollXScale) then
				--api.levelNote("Rerolling X")
				NextX = math.random((MinX*100),(MaxX*100))/100
			end
			if (math.abs(NextX - PrevX)) < ((math.abs(MaxX-MinX))/RerollXScale) then
				--api.levelNote("Rerolling X x2")
				NextX = math.random((MinX*100),(MaxX*100))/100
			end
			if (math.abs(NextX - PrevX)) < ((math.abs(MaxX-MinX))/RerollXScale) then
				--api.levelNote("Rerolling X x3")
				NextX = math.random((MinX*100),(MaxX*100))/100
			end
			if (math.abs(NextX - PrevX)) < ((math.abs(MaxX-MinX))/RerollXScale) then
				--api.levelNote("Rerolling X x4")
				NextX = math.random((MinX*100),(MaxX*100))/100
			end
			if (math.abs(NextX - PrevX)) < ((math.abs(MaxX-MinX))/RerollXScale) then
				--api.levelNote("Reroll FAILED")
				NextX = math.random((MinX*100),(MaxX*100))/100
			end
		
		
		NextFirework = math.random((FireworksSecondsVariabilityLow*100),(FireworksSecondsVariabilityHigh*100))/100
		NextFireworkTimer = os.time()
		
		firework4Banimating = true
		startTime4B = os.time()
	end

elseif callType == LuaCallType.Update then
		
		if FireworksOn == true then

			if os.time()-NextFireworkTimer >= NextFirework then
				
					NextFireworkToPlay = math.random(1,4)
					--keep rolling random if the last played rolls again
					if NextFireworkToPlay == LastPlayedFirework then
						NextFireworkToPlay = math.random(1,4)
					end
					if NextFireworkToPlay == LastPlayedFirework then
						NextFireworkToPlay = math.random(1,4)
					end
					if NextFireworkToPlay == LastPlayedFirework then
						NextFireworkToPlay = math.random(1,4)
					end
					if NextFireworkToPlay == LastPlayedFirework then
						NextFireworkToPlay = math.random(1,4)
					end
					LastPlayedFirework = NextFireworkToPlay
					
					if NextFireworkToPlay == 1 then
						PlayFirework = FireworkSwitch1B
					elseif NextFireworkToPlay == 2 then
						PlayFirework = FireworkSwitch2B
					elseif NextFireworkToPlay == 3 then
						PlayFirework = FireworkSwitch3B
					elseif NextFireworkToPlay == 4 then
						PlayFirework = FireworkSwitch4B
					end
				api.activateSwitch(PlayFirework)
				--api.levelNote("Playing firework # "..NextFireworkToPlay)
			else
			end
		end
		
		
		if firework1animating == true then
			
			if NewFireworkLockValue1B <= (Totalframes1B-1) then
			
				-- show current frame
				--api.levelNote(NewFireworkLockValue1B)
				
				api.setLockValue(FireworkLock1B,NewFireworkLockValue1B,1)
				NewFireworkLockValue1B = math.ceil(((os.time()-startTime1B)/FireworkSpeed)*Totalframes1B)
				
			else
				firework1Banimating = false
				api.setLockValue(FireworkLock1B,0,1)
				NewFireworkLockValue1B = 1				

			end
			
		end		
		
		if firework2Banimating == true then
			
			if NewFireworkLockValue2B <= (Totalframes2B-1) then
			
				-- show current frame
				--api.levelNote(NewFireworkLockValue2B)
				
				api.setLockValue(FireworkLock2B,NewFireworkLockValue2B,1)
				NewFireworkLockValue2B = math.ceil(((os.time()-startTime2B)/FireworkSpeed)*Totalframes2B)
				
			else
				firework2Banimating = false
				api.setLockValue(FireworkLock2B,0,1)
				NewFireworkLockValue2B = 1			

			end
			
		end		
		
		if firework3Banimating == true then
			
			if NewFireworkLockValue3B <= (Totalframes3B-1) then
			
				-- show current frame
				--api.levelNote(NewFireworkLockValue3B)
				
				api.setLockValue(FireworkLock3B,NewFireworkLockValue3B,1)
				NewFireworkLockValue3B = math.ceil(((os.time()-startTime3B)/FireworkSpeed)*Totalframes3B)
				
			else
				firework3Banimating = false
				api.setLockValue(FireworkLock3B,0,1)
				NewFireworkLockValue3B = 1			

			end
			
		end		
		
		if firework4Banimating == true then
			
			if NewFireworkLockValue4B <= (Totalframes4B-1) then
			
				-- show current frame
				--api.levelNote(NewFireworkLockValue4B)
				
				api.setLockValue(FireworkLock4B,NewFireworkLockValue4B,1)
				NewFireworkLockValue4B = math.ceil(((os.time()-startTime4B)/FireworkSpeed)*Totalframes4B)
				
			else
				firework4Banimating = false
				api.setLockValue(FireworkLock4B,0,1)
				NewFireworkLockValue4B = 1			
			end
			
		end		
		
end