alarm[0] = 90
cutscenetype = "RiseUp"
targety = y
targetx = x
x = targetx
y = (targety + 64)
if instance_exists(obj_closingdoors)
    global.doorsneedtoclose = instance_number(obj_closingdoors)
else
    global.doorsneedtoclose = 0
