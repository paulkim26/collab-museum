-- From Thoroniul's LUA Tutorial: https://steamcommunity.com/sharedfiles/filedetails/?id=2809817128

if callType == LuaCallType.Init then
    d_theta = 3  -- angle change per second

elseif callType == LuaCallType.SwitchDone then

if context == balloon_rotation_cw then

   balloon_rotating = true
end

 elseif callType == LuaCallType.Update then
     if balloon_rotating == true then
     delta = d_theta * Time.deltaTime
   balloon_rotation_cw.transform.Rotate(0,delta,0)
   end

end