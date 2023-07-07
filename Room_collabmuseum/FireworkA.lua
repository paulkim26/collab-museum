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

    api.setLockValue(FireworkLock1,0,1)
	NewFireworkLockValue1 = 1
	Totalframes1 = 26
	
	api.setLockValue(FireworkLock2,0,1)
	NewFireworkLockValue2 = 1
	Totalframes2 = 26
	
	api.setLockValue(FireworkLock3,0,1)
	NewFireworkLockValue3 = 1
	Totalframes3 = 26
	
	api.setLockValue(FireworkLock4,0,1)
	NewFireworkLockValue4 = 1
	Totalframes4 = 26

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
	elseif context == FireworkSwitch1 then	
	
		FireworkDisplay1.transform.localScale = api.vector3(NextScale,NextScale,1)
		FireworkDisplay1.transform.position = api.vector3(NextX,NextY,NextZ)

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
		
		firework1animating = true
		startTime1 = os.time()
		
	elseif context == FireworkSwitch2 then
		FireworkDisplay2.transform.localScale = api.vector3(NextScale,NextScale,1)
		FireworkDisplay2.transform.position = api.vector3(NextX,NextY,NextZ)


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
		
		firework2animating = true
		startTime2 = os.time()
	elseif context == FireworkSwitch3 then
		FireworkDisplay3.transform.localScale = api.vector3(NextScale,NextScale,1)
		FireworkDisplay3.transform.position = api.vector3(NextX,NextY,NextZ)

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
		
		firework3animating = true
		startTime3 = os.time()
	elseif context == FireworkSwitch4 then
		FireworkDisplay4.transform.localScale = api.vector3(NextScale,NextScale,1)
		FireworkDisplay4.transform.position = api.vector3(NextX,NextY,NextZ)

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
		
		firework4animating = true
		startTime4 = os.time()
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
						PlayFirework = FireworkSwitch1
					elseif NextFireworkToPlay == 2 then
						PlayFirework = FireworkSwitch2
					elseif NextFireworkToPlay == 3 then
						PlayFirework = FireworkSwitch3
					elseif NextFireworkToPlay == 4 then
						PlayFirework = FireworkSwitch4
					end
				api.activateSwitch(PlayFirework)
				--api.levelNote("Playing firework # "..NextFireworkToPlay)
			else
			end
		end
		
		
		if firework1animating == true then
			
			if NewFireworkLockValue1 <= (Totalframes1-1) then
			
				-- show current frame
				--api.levelNote(NewFireworkLockValue1)
				
				api.setLockValue(FireworkLock1,NewFireworkLockValue1,1)
				NewFireworkLockValue1 = math.ceil(((os.time()-startTime1)/FireworkSpeed)*Totalframes1)
				
			else
				firework1animating = false
				api.setLockValue(FireworkLock1,0,1)
				NewFireworkLockValue1 = 1				

			end
			
		end		
		
		if firework2animating == true then
			
			if NewFireworkLockValue2 <= (Totalframes2-1) then
			
				-- show current frame
				--api.levelNote(NewFireworkLockValue2)
				
				api.setLockValue(FireworkLock2,NewFireworkLockValue2,1)
				NewFireworkLockValue2 = math.ceil(((os.time()-startTime2)/FireworkSpeed)*Totalframes2)
				
			else
				firework2animating = false
				api.setLockValue(FireworkLock2,0,1)
				NewFireworkLockValue2 = 1			

			end
			
		end		
		
		if firework3animating == true then
			
			if NewFireworkLockValue3 <= (Totalframes3-1) then
			
				-- show current frame
				--api.levelNote(NewFireworkLockValue3)
				
				api.setLockValue(FireworkLock3,NewFireworkLockValue3,1)
				NewFireworkLockValue3 = math.ceil(((os.time()-startTime3)/FireworkSpeed)*Totalframes3)
				
			else
				firework3animating = false
				api.setLockValue(FireworkLock3,0,1)
				NewFireworkLockValue3 = 1			

			end
			
		end		
		
		if firework4animating == true then
			
			if NewFireworkLockValue4 <= (Totalframes4-1) then
			
				-- show current frame
				--api.levelNote(NewFireworkLockValue4)
				
				api.setLockValue(FireworkLock4,NewFireworkLockValue4,1)
				NewFireworkLockValue4 = math.ceil(((os.time()-startTime4)/FireworkSpeed)*Totalframes4)
				
			else
				firework4animating = false
				api.setLockValue(FireworkLock4,0,1)
				NewFireworkLockValue4 = 1			
			end
			
		end		
		
end