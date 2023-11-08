function handler1(evt)
  if ((evt.type == "presentation") and (evt.action == 'start')) then
    print("Lua received presentation start")
  end
end

function handler2(evt)
  if ((evt.type == "presentation") and (evt.action == 'stop')) then
    print("Lua received presentation stop")  
  end
end

event.register(handler1, 'ncl')
event.register(handler2, 'ncl')
