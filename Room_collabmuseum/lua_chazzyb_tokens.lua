function collectToken()
    token_count = token_count + 1;
	
	if token_message_enable then
		api.setLockValue(token_sound, 1, 1)
		api.levelNote("\bYou found a token!\nTokens can be spent in the Gift Shop, found in the Atrium.\n["..token_count.."/"..token_count_max.." found]");
	end
end

if callType == LuaCallType.Init then
	token_message_enable = true;
	token_count = 0;
	token_count_max = 16;

elseif callType == LuaCallType.Unlock then
	if context == token_disable	then
		token_message_enable = false;
	end

elseif callType == LuaCallType.TriggerExit then


    if context == token01 then
		collectToken();
	end

    if context == token02 then
        collectToken();
	end

    if context == token03 then
        collectToken();
	end

    if context == token04 then
        collectToken();
	end

    if context == token05 then
        collectToken();
	end

    if context == token06 then
        collectToken();
	end

    if context == token07 then
        collectToken();
	end

    if context == token08 then
        collectToken();
	end

    if context == token09 then
        collectToken();
	end

    if context == token10 then
        collectToken();
	end

    if context == token11 then
        collectToken();
	end

    if context == token12 then
        collectToken();
	end

    if context == token13 then
        collectToken();
	end

    if context == token14 then
        collectToken();
	end

    if context == token15 then
        collectToken();
	end

    if context == token16 then
        collectToken();
	end

end