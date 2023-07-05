if callType == LuaCallType.SwitchDone then

    if context == chazzyb_timer_sciencewing then
        if not context.isOn then
            context.outputValue = context.outputValue + 1
             
            if context.outputValue > 29 then
            	context.outputValue = 30
            end
            
            if context.outputValue < 29 then
                api.activateSwitch(chazzyb_timer_sciencewing)
        end
        
        end
        

    end

end