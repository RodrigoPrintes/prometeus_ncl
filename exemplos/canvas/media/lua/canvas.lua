canvas:attrColor(0,0,0,0)
canvas:clear()

local mainCanvasX, mainCanvasY = canvas:attrSize()

canvas:attrColor('fuchsia')
canvas:drawRect('fill', 50, 50, mainCanvasX/2, 400)

local img = canvas:new('../img/cat_cute.png')
print('##New dimensions:: '..img:attrSize())
local x, y = img:attrSize()
print('##ImgX: '..x)
print('##ImgY: '..y)

canvas:compose(mainCanvasX/4, mainCanvasY/10, img)

canvas:attrColor('yellow')
local face, size, style = canvas:attrFont()

canvas:drawText(x+(x/2),y+5,'----Cat cute----')

canvas:flush()
