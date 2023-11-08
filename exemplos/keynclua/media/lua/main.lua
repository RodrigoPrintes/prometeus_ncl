
function handler(evt) 
  print('Evento gerado: '..evt.type)
  if (evt.class == 'key') and (evt.type == 'release') then
    
    canvas:attrColor(0,0,0,0)
    canvas:clear()
    canvas:attrColor('yellow')
    canvas:drawText(50, 60, "...Voce pressionou a tecla: "..evt.key)
    canvas:flush()
     
  end
end

event.register(handler)
