if callType == LuaCallType.SwitchDone then

    if context == chazzyb_timer_sciencepillars then
        if not context.isOn then
            context.outputValue = context.outputValue + 1
             
            if context.outputValue > 14 then
            	context.outputValue = context.outputValue - 15
            end
            
            if context.outputValue < 15 then
                api.activateSwitch(chazzyb_timer_sciencepillars)
        end
        
        end
        

    end

end