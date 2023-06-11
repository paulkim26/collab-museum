if callType == LuaCallType.Init then
    --api.log("Bananas loaded")

elseif callType == LuaCallType.Update then
	mumbo_banana_spinner.transform.Rotate(-60*Vector3.up * Time.deltaTime)
end