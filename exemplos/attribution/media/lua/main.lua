local contador = 0

function handler(evt) 
  print('Evento gerado: '..evt.type)
  if (evt.class == 'ncl') and (evt.type == 'attribution') and (evt.action == 'start') then
    contador = contador + evt.value
    
    canvas:attrColor(0,0,0,0)
    canvas:clear()
    canvas:attrColor('yellow')
    canvas:drawText(50, 60, "...A tecla 1 foi pressionada: "..tostring(contador)..' vezes')
    canvas:flush()
     
  end
end

event.register(handler)
