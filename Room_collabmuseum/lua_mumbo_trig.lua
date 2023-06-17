if callType == LuaCallType.Init then
    DEG_PER_SEC = 90
    X_FREQUENCY = DEG_PER_SEC
    Z_FREQUENCY = DEG_PER_SEC

    function ResetRotation()
    	trig_x_spinner.transform.localEulerAngles = api.vector3(0, 0, 0)
    	trig_z_spinner.transform.localEulerAngles = api.vector3(0, 270, 0)
    end

elseif callType == LuaCallType.SwitchDone then
	for i = 1, 4 do
		if context == trig_button_x[i] then
			if trig_button_x[i].isOn then
				ResetRotation()
				X_FREQUENCY = DEG_PER_SEC*i
			end
		elseif context == trig_button_z[i] then
			if trig_button_z[i].isOn then
				ResetRotation()
				Z_FREQUENCY = DEG_PER_SEC*i
			end
		end
	end


elseif callType == LuaCallType.Update then
	trig_x_spinner.transform.Rotate(X_FREQUENCY*Vector3.up * Time.deltaTime)
	trig_z_spinner.transform.Rotate(Z_FREQUENCY*Vector3.up * Time.deltaTime)
	
	--pen
	--trig_pen.transform.position = api.vector3(trig_x_tracker.transform.position.x, 1.08, trig_z_tracker.transform.position.z)
	--trig_x_arm.transform.position = api.vector3(trig_x_tracker.transform.position.x, 1.25, trig_z_tracker.transform.position.z + 0.44)
	--trig_z_arm.transform.position = api.vector3(trig_x_tracker.transform.position.x - 0.44, 1.25, trig_z_tracker.transform.position.z)

	--with (0, 90, 0) Rotation
	trig_pen.transform.position = api.vector3(trig_z_tracker.transform.position.x, 1.08, trig_x_tracker.transform.position.z)
	trig_x_arm.transform.position = api.vector3(trig_z_tracker.transform.position.x + 0.44, 1.25, trig_x_tracker.transform.position.z)
	trig_z_arm.transform.position = api.vector3(trig_z_tracker.transform.position.x, 1.25, trig_x_tracker.transform.position.z + 0.44)
end
