FuelMod = {["version"] = 1.7}
SLTWUpdate = function(i, x, y, s, n)
	chance = math.random(-1,1)
	electrocy = tpt.get_property('ctype', x, y)
	electro = tpt.get_property('type', x + math.random(-1,1), y + chance)
	if electrocy == tpt.el.sltw.id then
	else
		if electro == tpt.el.sprk.id and buttonable == 1 then
			if chance == -1 then
				sim.partChangeType(i, tpt.element('plye'))
			end
			if chance == 0 then
				sim.partChangeType(i, tpt.element('hygn'))
			end
			if chance == 1 then
				sim.partChangeType(i, tpt.element('caus'))
			end
			tpt.set_property('life', 20 ,x, y)
		end
	end
end
tpt.element_func(SLTWUpdate, tpt.element('SLTW'))

--petrol
local antifrzz = elements.allocate("JWARD", "AFRZ")
local petrolgas = elements.allocate("JWARD", "PTLV")
local petrol = elements.allocate("JWARD", "PTRL")
elements.element(elements.JWARD_PT_PTRL, elements.element(elements.DEFAULT_PT_GEL))
elements.property(elements.JWARD_PT_PTRL, "Name", "PTRL")
elements.property(elements.JWARD_PT_PTRL, "Description", "Petrol. Highly flammable liquid.")
elements.property(elements.JWARD_PT_PTRL, "Colour", 0x0A4A5C)
elements.property(elements.JWARD_PT_PTRL, "MenuSection", SC_LIQUID)
elements.property(elements.JWARD_PT_PTRL, "Gravity", 0.6)
elements.property(elements.JWARD_PT_PTRL, "Flammable", 65)
elements.property(elements.JWARD_PT_PTRL, "Explosive", 0)
elements.property(elements.JWARD_PT_PTRL, "Loss", 0.8)
elements.property(elements.JWARD_PT_PTRL, "AirLoss", 0.94)
elements.property(elements.JWARD_PT_PTRL, "AirDrag", 0.02)
elements.property(elements.JWARD_PT_PTRL, "Advection", 0.8)
elements.property(elements.JWARD_PT_PTRL, "Weight", 12)
elements.property(elements.JWARD_PT_PTRL, "Diffusion", 0)
elements.property(elements.JWARD_PT_PTRL, "Meltable", 0)
elements.property(elements.JWARD_PT_PTRL, "Hardness", 0)
elements.property(elements.JWARD_PT_PTRL, "Falldown", 2)
elements.property(elements.JWARD_PT_PTRL, "Properties", TYPE_LIQUID)
elements.property(elements.JWARD_PT_PTRL, "State", ST_LIQUID)
elements.property(elements.JWARD_PT_PTRL, "Temperature", 295.15)
elements.property(elements.JWARD_PT_PTRL, "HeatConduct", 78)
elements.property(elements.JWARD_PT_PTRL, "HighTemperature", 333.15)
elements.property(elements.JWARD_PT_PTRL, "HighTemperatureTransition", elements.JWARD_PT_PTLV)
elements.property(elements.JWARD_PT_PTRL, "LowTemperature", 225.15)
elements.property(elements.JWARD_PT_PTRL, "LowTemperatureTransition", elements.DEFAULT_PT_ICE)

elements.element(elements.JWARD_PT_PTLV, elements.element(elements.DEFAULT_PT_HYGN))
elements.property(elements.JWARD_PT_PTLV, "Name", "PTLV")
elements.property(elements.JWARD_PT_PTLV, "Description", "petrol gas")
elements.property(elements.JWARD_PT_PTLV, "Colour", 0x0A4A5C)
elements.property(elements.JWARD_PT_PTLV, "MenuVisible", 0)
elements.property(elements.JWARD_PT_PTLV, "Gravity", -0.02)
elements.property(elements.JWARD_PT_PTLV, "Flammable", 100)
elements.property(elements.JWARD_PT_PTLV, "Explosive", 1)
elements.property(elements.JWARD_PT_PTLV, "Loss", 0.75)
elements.property(elements.JWARD_PT_PTLV, "AirLoss", 0.97)
elements.property(elements.JWARD_PT_PTLV, "AirDrag", 0.01)
elements.property(elements.JWARD_PT_PTLV, "Advection", 1)
elements.property(elements.JWARD_PT_PTLV, "Weight", 0)
elements.property(elements.JWARD_PT_PTLV, "Diffusion", 0.7)
elements.property(elements.JWARD_PT_PTLV, "Meltable", 0)
elements.property(elements.JWARD_PT_PTLV, "Hardness", 0)
elements.property(elements.JWARD_PT_PTLV, "Falldown", 0)
elements.property(elements.JWARD_PT_PTLV, "Properties", TYPE_GAS)
elements.property(elements.JWARD_PT_PTLV, "State", ST_GAS)
elements.property(elements.JWARD_PT_PTLV, "Temperature", 343.15)
elements.property(elements.JWARD_PT_PTLV, "HeatConduct", 80)
elements.property(elements.JWARD_PT_PTLV, "LowTemperature", 333.14)
elements.property(elements.JWARD_PT_PTLV, "LowTemperatureTransition", elements.JWARD_PT_PTRL)

elements.element(elements.JWARD_PT_AFRZ, elements.element(elements.DEFAULT_PT_GEL))
elements.property(elements.JWARD_PT_AFRZ, "Name", "AFRZ")
elements.property(elements.JWARD_PT_AFRZ, "Description", "antifreeze, keeps your fuel nice and toasty. methnol")
elements.property(elements.JWARD_PT_AFRZ, "Colour", 0x0C3F5B)
elements.property(elements.JWARD_PT_AFRZ, "MenuSection", SC_LIQUID)
elements.property(elements.JWARD_PT_AFRZ, "Gravity", 0.6)
elements.property(elements.JWARD_PT_AFRZ, "Flammable", 65)
elements.property(elements.JWARD_PT_AFRZ, "Explosive", 0)
elements.property(elements.JWARD_PT_AFRZ, "Loss", 0.8)
elements.property(elements.JWARD_PT_AFRZ, "AirLoss", 0.94)
elements.property(elements.JWARD_PT_AFRZ, "AirDrag", 0.02)
elements.property(elements.JWARD_PT_AFRZ, "Advection", 0.8)
elements.property(elements.JWARD_PT_AFRZ, "Weight", 12)
elements.property(elements.JWARD_PT_AFRZ, "Diffusion", 0)
elements.property(elements.JWARD_PT_AFRZ, "Meltable", 0)
elements.property(elements.JWARD_PT_AFRZ, "Hardness", 0)
elements.property(elements.JWARD_PT_AFRZ, "Falldown", 2)
elements.property(elements.JWARD_PT_AFRZ, "Properties", TYPE_LIQUID)
elements.property(elements.JWARD_PT_AFRZ, "State", ST_LIQUID)
elements.property(elements.JWARD_PT_AFRZ, "Temperature", 295.15)
elements.property(elements.JWARD_PT_AFRZ, "HeatConduct", 78)
function AFRZ(i,x,y,s,n)
	warm = tpt.get_property("type",x+math.random(-1,1),y+math.random(-1,1))
	warm2 = tpt.get_property("temp",x,y)
	if warm == petrol and warm2 < 276 then
		tpt.set_property('temp', 296 ,x, y)
	end
	if warm == tpt.el.desl.id and warm2 < 276 then
		tpt.set_property('temp', 296 ,x, y)
	end
	if warm == BioDiesel and warm2 < 276 then
		tpt.set_property('temp', 296 ,x, y)
	end
	if warm == jetfuel and warm2 < 276 then
		tpt.set_property('temp', 296 ,x, y)
	end
	if warm == tpt.el.ice.id and warm2 < 276 then
		tpt.set_property('temp', 296 ,x, y)
	end
end
tpt.element_func(AFRZ, tpt.element('AFRZ'))

--diesel & bio diesel
local Dieselgas = elements.allocate("JWARD", "DSLV")
local potash_lye = elements.allocate("JWARD", "PLYE")
local cooking_oil = elements.allocate("JWARD", "COIL")
local BioDiesel = elements.allocate("JWARD", "BDSL")

elements.element(elements.JWARD_PT_DSLV, elements.element(elements.DEFAULT_PT_HYGN))
elements.property(elements.JWARD_PT_DSLV, "Name", "DSLV")
elements.property(elements.JWARD_PT_DSLV, "Description", "diesel gas")
elements.property(elements.JWARD_PT_DSLV, "Colour", 0x440000)
elements.property(elements.JWARD_PT_DSLV, "MenuVisible", 0)
elements.property(elements.JWARD_PT_DSLV, "Gravity", -0.02)
elements.property(elements.JWARD_PT_DSLV, "Flammable", 100)
elements.property(elements.JWARD_PT_DSLV, "Explosive", 1)
elements.property(elements.JWARD_PT_DSLV, "Loss", 0.75)
elements.property(elements.JWARD_PT_DSLV, "AirLoss", 0.97)
elements.property(elements.JWARD_PT_DSLV, "AirDrag", 0.01)
elements.property(elements.JWARD_PT_DSLV, "Advection", 1)
elements.property(elements.JWARD_PT_DSLV, "Weight", 0)
elements.property(elements.JWARD_PT_DSLV, "Diffusion", 0.7)
elements.property(elements.JWARD_PT_DSLV, "Meltable", 0)
elements.property(elements.JWARD_PT_DSLV, "Hardness", 0)
elements.property(elements.JWARD_PT_DSLV, "Falldown", 0)
elements.property(elements.JWARD_PT_DSLV, "Properties", TYPE_GAS)
elements.property(elements.JWARD_PT_DSLV, "State", ST_GAS)
elements.property(elements.JWARD_PT_DSLV, "Temperature", 483.15)
elements.property(elements.JWARD_PT_DSLV, "HeatConduct", 80)
elements.property(elements.JWARD_PT_DSLV, "LowTemperature", 473.15)
elements.property(elements.JWARD_PT_DSLV, "LowTemperatureTransition", elements.DEFAULT_PT_DESL)

elements.element(elements.JWARD_PT_COIL, elements.element(elements.DEFAULT_PT_GEL))
elements.property(elements.JWARD_PT_COIL, "Name", "COIL")
elements.property(elements.JWARD_PT_COIL, "Description", "Cooking oil")
elements.property(elements.JWARD_PT_COIL, "Colour", 0xA57214)
elements.property(elements.JWARD_PT_COIL, "MenuSection", 7)
elements.property(elements.JWARD_PT_COIL, "Gravity", 0.6)
elements.property(elements.JWARD_PT_COIL, "Flammable", 1)
elements.property(elements.JWARD_PT_COIL, "Explosive", 0)
elements.property(elements.JWARD_PT_COIL, "Loss", 0.7)
elements.property(elements.JWARD_PT_COIL, "AirLoss", 0.91)
elements.property(elements.JWARD_PT_COIL, "AirDrag", 0.02)
elements.property(elements.JWARD_PT_COIL, "Advection", 0.9)
elements.property(elements.JWARD_PT_COIL, "Weight", 10)
elements.property(elements.JWARD_PT_COIL, "Meltable", 0)
elements.property(elements.JWARD_PT_COIL, "Hardness", 86)
elements.property(elements.JWARD_PT_COIL, "Falldown", 2)
elements.property(elements.JWARD_PT_COIL, "Properties", TYPE_LIQUID)
elements.property(elements.JWARD_PT_COIL, "State", ST_LIQUID)
elements.property(elements.JWARD_PT_COIL, "Temperature", 295.15)
elements.property(elements.JWARD_PT_COIL, "HeatConduct", 100)
function COIL(i,x,y,s,n)
	cx = math.random(-3,3)
	cy = math.random(-5,1)
	reaction = tpt.get_property("temp",x,y)
	bio = tpt.get_property("type",x + math.random(-2,2), y + math.random(-2,2))
	bioo = tpt.get_property("type",x + math.random(-2,2), y + math.random(-2,2))
	biooo = tpt.get_property("type",x + cy, y + cx)
	local noncatalyst = tpt.get_property("life",x,y)
	if reaction > 363.15 and biooo ~= true then
		tpt.delete(x,y)
		tpt.create(x + cx, y + cy, 'COIL')
	end
	if bio == potash_lye and bioo == antifrzz then
		if cy == 1 then
			sim.partChangeType(i, tpt.element('GLCR'))
		else
			sim.partChangeType(i, tpt.element('BDSL'))
		end
	end
	if biooo == potash_lye and bioo == tpt.element('watr') and reaction > 290 and reaction < 330 then
		sim.partChangeType(i, tpt.element('SOAP'))
		tpt.delete(x + cx,y + cy)
	end
end
tpt.element_func(COIL, tpt.element('COIL'))

elements.element(elements.JWARD_PT_BDSL, elements.element(elements.DEFAULT_PT_GEL))
elements.property(elements.JWARD_PT_BDSL, "Name", "BDSL")
elements.property(elements.JWARD_PT_BDSL, "Description", "Bio Diesel. Made from cooking oil.")
elements.property(elements.JWARD_PT_BDSL, "Colour", 0x331000)
elements.property(elements.JWARD_PT_BDSL, "MenuSection", SC_LIQUID)
elements.property(elements.JWARD_PT_BDSL, "Gravity", 0.6)
elements.property(elements.JWARD_PT_BDSL, "Flammable", 35)
elements.property(elements.JWARD_PT_BDSL, "Explosive", 0)
elements.property(elements.JWARD_PT_BDSL, "Loss", 0.8)
elements.property(elements.JWARD_PT_BDSL, "AirLoss", 0.94)
elements.property(elements.JWARD_PT_BDSL, "AirDrag", 0.02)
elements.property(elements.JWARD_PT_BDSL, "Advection", 0.8)
elements.property(elements.JWARD_PT_BDSL, "Weight", 12)
elements.property(elements.JWARD_PT_BDSL, "Diffusion", 0)
elements.property(elements.JWARD_PT_BDSL, "Meltable", 0)
elements.property(elements.JWARD_PT_BDSL, "Hardness", 0)
elements.property(elements.JWARD_PT_BDSL, "Falldown", 2)
elements.property(elements.JWARD_PT_BDSL, "Properties", TYPE_LIQUID)
elements.property(elements.JWARD_PT_BDSL, "State", ST_LIQUID)
elements.property(elements.JWARD_PT_BDSL, "Temperature", 295.15)
elements.property(elements.JWARD_PT_BDSL, "HeatConduct", 99)
function BDSL(i,x,y,s,n)
	calstmp = tpt.get_property("tmp2",x,y)
	findcoil = tpt.get_property("type",x+math.random(-1,1),y+math.random(-1,1))
	if findcoil == cooking_oil then
		tpt.set_property('life', 2 ,x, y)
	end
	if calstmp == 2 then
		if findcoil == tpt.el.desl.id then
		sim.partChangeType(i, tpt.element('desl'))
		reaction = nil
		end
	end
end
tpt.element_func(BDSL, tpt.element('BDSL'))

elements.element(elements.JWARD_PT_PLYE, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.JWARD_PT_PLYE, "Name", "PLYE")
elements.property(elements.JWARD_PT_PLYE, "Description", "potash lye")
elements.property(elements.JWARD_PT_PLYE, "Colour", 0xCCCCCC)
elements.property(elements.JWARD_PT_PLYE, "MenuSection", 8)
elements.property(elements.JWARD_PT_PLYE, "Gravity", .35)
elements.property(elements.JWARD_PT_PLYE, "Flammable", 0)
elements.property(elements.JWARD_PT_PLYE, "Explosive", 0)
elements.property(elements.JWARD_PT_PLYE, "Loss", 0.15)
elements.property(elements.JWARD_PT_PLYE, "AirLoss", 0.96)
elements.property(elements.JWARD_PT_PLYE, "AirDrag", 0.03)
elements.property(elements.JWARD_PT_PLYE, "Advection", 0.4)
elements.property(elements.JWARD_PT_PLYE, "Weight", 60)
elements.property(elements.JWARD_PT_PLYE, "Diffusion", 0)
elements.property(elements.JWARD_PT_PLYE, "Falldown", 1)
elements.property(elements.JWARD_PT_PLYE, "Hardness", 0)
elements.property(elements.JWARD_PT_PLYE, "HeatConduct", 62)
elements.property(elements.JWARD_PT_PLYE, "Properties", elem.PROP_DEADLY)
elements.property(elements.JWARD_PT_PLYE, "HighTemperature", 679.15)
elements.property(elements.JWARD_PT_PLYE, "HighTemperatureTransition", elements.DEFAULT_PT_LAVA)
function PLYE(i,x,y,s,n)
	cy = math.random(-1,1)
	cx = math.random(-1,1)
	reaction = tpt.get_property("type",x+cx,y+cy)
	if reaction == tpt.el.acid.id then
		if cy == 1 then
			sim.partChangeType(i, tpt.element('hygn'))
		else
			sim.partChangeType(i, tpt.element('SLTW'))
		end
	end
end
tpt.element_func(PLYE, tpt.element('PLYE'))

function ACIDBASE(i,x,y,s,n)
	cy = math.random(-1,1)
	cx = math.random(-1,1)
	reaction = tpt.get_property("type",x+cx,y+cy)
	if reaction == tpt.element('PLYE') then
		if cy == 1 then
			sim.partChangeType(i, tpt.element('hygn'))
		else
			sim.partChangeType(i, tpt.element('SLTW'))
		end
	end
	if buttonable == 0 then
		if reaction == tpt.element('C4') or reaction == tpt.element('NITR') or reaction == tpt.element('GUN') or reaction == tpt.element('RBDM') or reaction == tpt.element('LRBD') then 
			sim.partChangeType(i, tpt.element('fire')) 
		end
		if reaction == tpt.element('WTRV') then 
			sim.partChangeType(i, tpt.element('CAUS')) 
		end
	else
	if reaction == tpt.element('GLCR') then
		sim.partChangeType(i, tpt.element('NITR')) 
	end
	end
end
tpt.element_func(ACIDBASE, tpt.element('acid'), 1)

--o0o NITROGEN o0o--
local nitrogen = elements.allocate("JWARD", "N2")
local Diazane = elements.allocate("JWARD", "N2H4")
local DinitrogenTetroxide = elements.allocate("JWARD", "N2O4")
local nitrous = elements.allocate("JWARD", "N2O")
local need4speed = elements.allocate("JWARD", "LN2O")
local amfoness = elements.allocate("JWARD", "AMFO")
elements.element(elements.JWARD_PT_LN2O, elements.element(elements.DEFAULT_PT_GEL))
elements.property(elements.JWARD_PT_LN2O, "Name", "LN2O")
elements.property(elements.JWARD_PT_LN2O, "Description", "Liquid Nitrous Oxide. Burns very quickly and very hot.")
elements.property(elements.JWARD_PT_LN2O, "Colour", 0x33C1F5)
elements.property(elements.JWARD_PT_LN2O, "MenuSection", 7)
elements.property(elements.JWARD_PT_LN2O, "Gravity", 0.8)
elements.property(elements.JWARD_PT_LN2O, "Flammable", 6000)
elements.property(elements.JWARD_PT_LN2O, "Explosive", 0)
elements.property(elements.JWARD_PT_LN2O, "Loss", 0.5)
elements.property(elements.JWARD_PT_LN2O, "AirLoss", 0.94)
elements.property(elements.JWARD_PT_LN2O, "AirDrag", 0.03)
elements.property(elements.JWARD_PT_LN2O, "Advection", 0.7)
elements.property(elements.JWARD_PT_LN2O, "Weight", 43)
elements.property(elements.JWARD_PT_LN2O, "Diffusion", 0)
elements.property(elements.JWARD_PT_LN2O, "Meltable", 0)
elements.property(elements.JWARD_PT_LN2O, "Hardness", 0)
elements.property(elements.JWARD_PT_LN2O, "Falldown", 2)
elements.property(elements.JWARD_PT_LN2O, "Properties", TYPE_LIQUID)
elements.property(elements.JWARD_PT_LN2O, "State", ST_LIQUID)
elements.property(elements.JWARD_PT_LN2O, "Temperature", 174)
elements.property(elements.JWARD_PT_LN2O, "HeatConduct", 58)
elements.property(elements.JWARD_PT_LN2O, "HighTemperature", 185)
elements.property(elements.JWARD_PT_LN2O, "HighTemperatureTransition", elements.JWARD_PT_N2O)
elements.property(elements.JWARD_PT_LN2O, "LowTemperature", 160.15)
elements.property(elements.JWARD_PT_LN2O, "LowTemperatureTransition", elements.DEFAULT_PT_ICE)

elements.element(elements.JWARD_PT_N2O, elements.element(elements.DEFAULT_PT_CO2))
elements.property(elements.JWARD_PT_N2O, "Name", "N2O")
elements.property(elements.JWARD_PT_N2O, "Description", "Nitrous Oxide. Highly flammable RACE CAR oxidizer!!!.")
elements.property(elements.JWARD_PT_N2O, "Colour", 0x43DAFF)
elements.property(elements.JWARD_PT_N2O, "MenuSection", 6)
elements.property(elements.JWARD_PT_N2O, "Gravity", 0)
elements.property(elements.JWARD_PT_N2O, "Flammable", 5000)
elements.property(elements.JWARD_PT_N2O, "Explosive", 0)
elements.property(elements.JWARD_PT_N2O, "Loss", 0.7)
elements.property(elements.JWARD_PT_N2O, "AirLoss", 0.91)
elements.property(elements.JWARD_PT_N2O, "AirDrag", 0.02)
elements.property(elements.JWARD_PT_N2O, "Advection", 0.9)
elements.property(elements.JWARD_PT_N2O, "Weight", 0)
elements.property(elements.JWARD_PT_N2O, "Diffusion", 1.5)
elements.property(elements.JWARD_PT_N2O, "Meltable", 0)
elements.property(elements.JWARD_PT_N2O, "Hardness", 0)
elements.property(elements.JWARD_PT_N2O, "Falldown", 0)
elements.property(elements.JWARD_PT_N2O, "Properties", TYPE_GAS)
elements.property(elements.JWARD_PT_N2O, "State", ST_GAS)
elements.property(elements.JWARD_PT_N2O, "Temperature", 295.15)
elements.property(elements.JWARD_PT_N2O, "HeatConduct", 80)
elements.property(elements.JWARD_PT_N2O, "LowTemperature", 185.67)
elements.property(elements.JWARD_PT_N2O, "LowTemperatureTransition", elements.JWARD_PT_LN2O)
function N2O(i,x,y,s,n)
	reaction = tpt.get_property("type",x+math.random(-1,1),y+math.random(-1,1))
	ol = math.random(-1,1)
	if reaction == tpt.el.fire.id or reaction == tpt.el.plsm.id then
		if ol == 0 then
			sim.partChangeType(i, tpt.element('N2'))
		end
		if ol == -1 then
			sim.partChangeType(i, tpt.element('thdr'))
		end
		if ol == 1 then
			sim.partChangeType(i, tpt.element('plsm'))
		end
	end
end
tpt.element_func(N2O,nitrous)

elements.element(elements.JWARD_PT_N2O4, elements.element(elements.DEFAULT_PT_GEL))
elements.property(elements.JWARD_PT_N2O4, "Name", "N2O4")
elements.property(elements.JWARD_PT_N2O4, "Description", "Dinitrogen Tetroxide rocket oxidizer")
elements.property(elements.JWARD_PT_N2O4, "Colour", 0x30CEC6)
elements.property(elements.JWARD_PT_N2O4, "MenuSection", 5)
elements.property(elements.JWARD_PT_N2O4, "Gravity", 0.8)
elements.property(elements.JWARD_PT_N2O4, "Flammable", 30)
elements.property(elements.JWARD_PT_N2O4, "Explosive", 0)
elements.property(elements.JWARD_PT_N2O4, "Loss", 0.7)
elements.property(elements.JWARD_PT_N2O4, "AirLoss", 0.91)
elements.property(elements.JWARD_PT_N2O4, "AirDrag", 0.03)
elements.property(elements.JWARD_PT_N2O4, "Advection", 0.6)
elements.property(elements.JWARD_PT_N2O4, "Weight", 46)
elements.property(elements.JWARD_PT_N2O4, "Diffusion", 1.5)
elements.property(elements.JWARD_PT_N2O4, "Meltable", 0)
elements.property(elements.JWARD_PT_N2O4, "Hardness", 0)
elements.property(elements.JWARD_PT_N2O4, "Falldown", 2)
elements.property(elements.JWARD_PT_N2O4, "Properties", TYPE_LIQUID)
elements.property(elements.JWARD_PT_N2O4, "State", ST_LIQUID)
elements.property(elements.JWARD_PT_N2O4, "Temperature", 295.15)
elements.property(elements.JWARD_PT_N2O4, "HeatConduct", 78)
elements.property(elements.JWARD_PT_N2O4, "LowTemperatureTransition", elements.DEFAULT_PT_ICE)
elements.property(elements.JWARD_PT_N2O4, "LowTemperature", 261.9)
function N2O4(i,x,y,s,n)
	ol = math.random(-1,1)
	rocket = tpt.get_property("type",x+math.random(-2,2),y+math.random(-2,2))
	if rocket == Diazane or rocket == tpt.element('plsm') or rocket == tpt.element('fire') or rocket == tpt.element('thdr') then
		if ol == -1 then
			sim.partChangeType(i, tpt.element('plsm'))
		end
		if ol == 0 then
			sim.partChangeType(i, tpt.element('thdr'))
		end
		if ol == 1 then
			sim.partChangeType(i, tpt.element('n2'))
		end
	end
end
tpt.element_func(N2O4,DinitrogenTetroxide)

elements.element(elements.JWARD_PT_N2H4, elements.element(elements.DEFAULT_PT_GEL))
elements.property(elements.JWARD_PT_N2H4, "Name", "N2H4")
elements.property(elements.JWARD_PT_N2H4, "Description", "Hydrazine rocket fuel")
elements.property(elements.JWARD_PT_N2H4, "Colour", 0xB6F064)
elements.property(elements.JWARD_PT_N2H4, "MenuSection", 5)
elements.property(elements.JWARD_PT_N2H4, "Gravity", 1)
elements.property(elements.JWARD_PT_N2H4, "Flammable", 1)
elements.property(elements.JWARD_PT_N2H4, "Explosive", 1)
elements.property(elements.JWARD_PT_N2H4, "Loss", 0.7)
elements.property(elements.JWARD_PT_N2H4, "AirLoss", 0.91)
elements.property(elements.JWARD_PT_N2H4, "AirDrag", 0.03)
elements.property(elements.JWARD_PT_N2H4, "Advection", 0.8)
elements.property(elements.JWARD_PT_N2H4, "Weight", 46)
elements.property(elements.JWARD_PT_N2H4, "Diffusion", 1.5)
elements.property(elements.JWARD_PT_N2H4, "Meltable", 0)
elements.property(elements.JWARD_PT_N2H4, "Hardness", 0)
elements.property(elements.JWARD_PT_N2H4, "Falldown", 2)
elements.property(elements.JWARD_PT_N2H4, "Properties", TYPE_LIQUID)
elements.property(elements.JWARD_PT_N2H4, "State", ST_LIQUID)
elements.property(elements.JWARD_PT_N2H4, "Temperature", 295.15)
elements.property(elements.JWARD_PT_N2H4, "HeatConduct", 83)
elements.property(elements.JWARD_PT_N2H4, "LowTemperatureTransition", elements.DEFAULT_PT_ICE)
elements.property(elements.JWARD_PT_N2H4, "LowTemperature", 275.15)
N2H4Update = function(i, x, y, s, n)
	local randomi = math.random(-1,1)
	local clife = tpt.get_property('life', x, y)
	if clife > 1 then
		for cx = -1, 1, 2 do
			for cy = -1, 1, 2 do
				if randomi == 1 then       
					tpt.create(x + cx, y + cy, 'fire')
				end 
				if randomi == 0 then
					tpt.create(x + cx, y + cy, 'N2')
				end
				if randomi == -1 then
					tpt.create(x + cx, y + cy, 'HYGN')
		   		end
				tpt.set_property('temp', 3000, x, y)
			end
		end
		tpt.set_property('life', clife - 1, x, y)
	elseif clife == 1 then
		tpt.set_property('type', 0, x, y)
	elseif s > 0 then
		for cx = -1, 1, 2 do
			for cy = -1, 1, 2 do
				if tpt.get_property('type', x + cx, y + cy) == 4 or tpt.get_property('type', x + cx, y + cy) == 49 then
					tpt.set_property('life', 500, x, y)
					return true
				end
			end
		end
	end
end
tpt.element_func(N2H4Update, tpt.element('N2H4'))

elements.element(elements.JWARD_PT_N2, elements.element(elements.DEFAULT_PT_CO2))
elements.property(elements.JWARD_PT_N2, "Name", "N2")
elements.property(elements.JWARD_PT_N2, "Description", "Nitrogen Gas. Combines with WATR to make N2O + H2.")
elements.property(elements.JWARD_PT_N2, "Colour", 0x5E52FF)
elements.property(elements.JWARD_PT_N2, "MenuSection", SC_GAS)
elements.property(elements.JWARD_PT_N2, "Gravity", 0)
elements.property(elements.JWARD_PT_N2, "Flammable", 0)
elements.property(elements.JWARD_PT_N2, "Explosive", 1)
elements.property(elements.JWARD_PT_N2, "Loss", 0.3)
elements.property(elements.JWARD_PT_N2, "AirLoss", 0.99)
elements.property(elements.JWARD_PT_N2, "AirDrag", 0.01)
elements.property(elements.JWARD_PT_N2, "Advection", 2.0)
elements.property(elements.JWARD_PT_N2, "Weight", 0)
elements.property(elements.JWARD_PT_N2, "Diffusion", 2.75)
elements.property(elements.JWARD_PT_N2, "State", ST_GAS)
elements.property(elements.JWARD_PT_N2, "Properties", elem.TYPE_GAS)
elements.property(elements.JWARD_PT_N2, "LowTemperatureTransition", elements.DEFAULT_PT_LN2)
elements.property(elements.JWARD_PT_N2, "LowTemperature", 76)
elements.property(elements.JWARD_PT_N2, "HeatConduct", 80)
function N2(i,x,y,s,n)
	calstmp = tpt.get_property("tmp2",x,y)
	if calstmp == 1 then
		sim.partChangeType(i, tpt.element('N2O'))
	end
end
tpt.element_func(N2, tpt.element('N2'))

function HYGN(i,x,y,s,n)
	calstmp = tpt.get_property("tmp2",x,y)
	if calstmp == 1 then
		sim.partChangeType(i, tpt.element('DSTW'))
	end
end
tpt.element_func(HYGN, tpt.element('HYGN'))

elements.element(elements.JWARD_PT_AMFO, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.JWARD_PT_AMFO, "Name", "AMFO")
elements.property(elements.JWARD_PT_AMFO, "Description", "amfo explosive")
elements.property(elements.JWARD_PT_AMFO, "Colour", 0xFFCECA)
elements.property(elements.JWARD_PT_AMFO, "MenuSection", 5)
elements.property(elements.JWARD_PT_AMFO, "Gravity", 0.54)
elements.property(elements.JWARD_PT_AMFO, "Flammable", 0)
elements.property(elements.JWARD_PT_AMFO, "Explosive", 0)
elements.property(elements.JWARD_PT_AMFO, "Loss", 0)
elements.property(elements.JWARD_PT_AMFO, "AirLoss", 0.96)
elements.property(elements.JWARD_PT_AMFO, "AirDrag", 0.03)
elements.property(elements.JWARD_PT_AMFO, "Advection", 0)
elements.property(elements.JWARD_PT_AMFO, "Weight", 75)
elements.property(elements.JWARD_PT_AMFO, "Diffusion", 0)
elements.property(elements.JWARD_PT_AMFO, "Falldown", 1)
elements.property(elements.JWARD_PT_AMFO, "Hardness", 0)
elements.property(elements.JWARD_PT_AMFO, "HeatConduct", 62)
elements.property(elements.JWARD_PT_AMFO, "Properties", elem.TYPE_PART+elem.PROP_DEADLY)
elements.property(elements.JWARD_PT_AMFO, "State", ST_SOLID)
function AMFO(i,x,y,s,n)
	cy = math.random(-1,1)
	cx = math.random(-1,1)
	ol = math.random(0,1)
	reaction = tpt.get_property("type",x+cx,y+cy)
	atemp = tpt.get_property("temp",x,y)
	calstmp = tpt.get_property("tmp2",x,y)
	if reaction == tpt.el.acid.id then
		if ol == 1 then
			sim.partChangeType(i, tpt.element('salt'))
		else
			sim.partChangeType(i, tpt.element('acid'))
		end
	end
	if reaction == tpt.el.fire.id then
		if cx == 1 then
			sim.partChangeType(i, tpt.element('thdr'))
		end
		if cx == 0 then
			if ol == 1 then
				sim.partChangeType(i, tpt.element('hygn'))
			else
				sim.partChangeType(i, tpt.element('oxyg'))
			end
			if cx == -1 then
				sim.partChangeType(i, tpt.element('N2O'))
			end
		end
	end
	if atemp > 483.15 then
		if ol == 1 then
			sim.partChangeType(i, tpt.element('wtrv'))
		else
			sim.partChangeType(i, tpt.element('N2O'))
		end
	end
	if calstmp == 1 then
		sim.partChangeType(i, tpt.element('n2o4'))
	end
end
tpt.element_func(AMFO, tpt.element('AMFO'))

--extra
local catalyst = elements.allocate("JWARD", "CALS")
local propane = elements.allocate("JWARD", "PRPN")
local Glycerol = elements.allocate("JWARD", "GLCR")

elements.element(elements.JWARD_PT_CALS, elements.element(elements.DEFAULT_PT_DMND))
elements.property(elements.JWARD_PT_CALS, "Colour", 0x90965F)
elements.property(elements.JWARD_PT_CALS, "Name", "CALS")
elements.property(elements.JWARD_PT_CALS, "Description", "catalyst, used to make multi element machines")
elements.property(elements.JWARD_PT_CALS, "HeatConduct", 0)
function CALS(i,x,y,s,n)
	calsd = tpt.get_property("type",x,y+1)
	calsu = tpt.get_property("type",x,y-1)
	calsr = tpt.get_property("type",x+1,y)
	calsl = tpt.get_property("type",x-1,y)
	calsdr = tpt.get_property("type",x+1,y+1)
	calsdl = tpt.get_property("type",x-1,y+1)
	calsur = tpt.get_property("type",x+1,y-1)
	calsul = tpt.get_property("type",x-1,y-1)
	if calsu == tpt.el.gold.id and calsd == tpt.el.gold.id then
		tpt.set_property('tmp2', 1, x+math.random(-1,1),y+math.random(-1,1))
	end
	if calsdr == tpt.el.metl.id and calsdl == tpt.el.metl.id and calsur == tpt.el.metl.id and calsul == tpt.el.metl.id then
		tpt.set_property('tmp2', 2, x+math.random(-2,2),y+math.random(-2,2))
	end
	if calsu == tpt.el.glas.id and calsdr == tpt.el.ttan.id and calsdl == tpt.el.ttan.id then
		tpt.set_property('ctype', tpt.element('ptrl'), x+math.random(-2,2),y+math.random(-2,2))
	end
	if calsu == tpt.el.glas.id and calsd == tpt.el.glas.id then
		tpt.set_property('tmp2', 1, x+math.random(-2,2),y+math.random(-2,2))
	end
end
tpt.element_func(CALS, tpt.element('CALS'))

elements.element(elements.JWARD_PT_GLCR, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.JWARD_PT_GLCR, "Name", "GLCR")
elements.property(elements.JWARD_PT_GLCR, "Description", "Glycerol, mix with acid to make nitr")
elements.property(elements.JWARD_PT_GLCR, "Colour", 0xE1E1E1)
elements.property(elements.JWARD_PT_GLCR, "MenuSection", 7)
elements.property(elements.JWARD_PT_GLCR, "Gravity", 0.44)
elements.property(elements.JWARD_PT_GLCR, "Flammable", 0)
elements.property(elements.JWARD_PT_GLCR, "Explosive", 0)
elements.property(elements.JWARD_PT_GLCR, "Loss", 0)
elements.property(elements.JWARD_PT_GLCR, "AirLoss", 0.96)
elements.property(elements.JWARD_PT_GLCR, "AirDrag", 0.04)
elements.property(elements.JWARD_PT_GLCR, "Advection", 0)
elements.property(elements.JWARD_PT_GLCR, "Weight", 75)
elements.property(elements.JWARD_PT_GLCR, "Diffusion", 0)
elements.property(elements.JWARD_PT_GLCR, "Falldown", 2)
elements.property(elements.JWARD_PT_GLCR, "Hardness", 0)
elements.property(elements.JWARD_PT_GLCR, "HeatConduct", 72)
elements.property(elements.JWARD_PT_GLCR, "Properties", elem.TYPE_LIQUID)
elements.property(elements.JWARD_PT_GLCR, "State", ST_LIQUID)
function GLCR(i,x,y,s,n)
	reaction = tpt.get_property("type",x+math.random(-1,1),y+math.random(-1,1))
	dis = tpt.get_property('temp', x, y)
	if reaction == tpt.element('ACID') then
		sim.partChangeType(i, tpt.element('NITR'))
	end
	if reaction == tpt.element('fire') and dis > 373.15 then
		sim.partChangeType(i, tpt.element('fire'))
	end
end
tpt.element_func(GLCR,Glycerol)

elements.element(elements.JWARD_PT_PRPN, elements.element(elements.DEFAULT_PT_CO2))
elements.property(elements.JWARD_PT_PRPN, "Name", "PRPN")
elements.property(elements.JWARD_PT_PRPN, "Description", "Propane. Explodes very easily.")
elements.property(elements.JWARD_PT_PRPN, "Colour", 0xF4A26A)
elements.property(elements.JWARD_PT_PRPN, "MenuSection", 5)
elements.property(elements.JWARD_PT_PRPN, "Gravity", -0.02)
elements.property(elements.JWARD_PT_PRPN, "Flammable", 3000)
elements.property(elements.JWARD_PT_PRPN, "Explosive", 1)
elements.property(elements.JWARD_PT_PRPN, "Loss", 0.75)
elements.property(elements.JWARD_PT_PRPN, "AirLoss", 0.97)
elements.property(elements.JWARD_PT_PRPN, "AirDrag", 0.01)
elements.property(elements.JWARD_PT_PRPN, "Advection", 1)
elements.property(elements.JWARD_PT_PRPN, "Weight", 0)
elements.property(elements.JWARD_PT_PRPN, "Diffusion", 0.7)
elements.property(elements.JWARD_PT_PRPN, "Meltable", 0)
elements.property(elements.JWARD_PT_PRPN, "Hardness", 0)
elements.property(elements.JWARD_PT_PRPN, "Falldown", 0)
elements.property(elements.JWARD_PT_PRPN, "Properties", TYPE_GAS)
elements.property(elements.JWARD_PT_PRPN, "State", ST_GAS)
elements.property(elements.JWARD_PT_PRPN, "Temperature", 295.15)
elements.property(elements.JWARD_PT_PRPN, "HeatConduct", 95)
elements.property(elements.JWARD_PT_PRPN, "HighTemperature", 2379.15)
elements.property(elements.JWARD_PT_PRPN, "HighTemperatureTransition", tpt.el.fire.id)
elements.property(elements.JWARD_PT_PRPN, "LowTemperatureTransition", NT)
function PRPN(i,x,y,s,n)
	calstmp = tpt.get_property("tmp2",x,y)
	if calstmp == 1 then
		sim.partChangeType(i, tpt.element('ptrl'))
	end
end
tpt.element_func(PRPN,propane)

--kerosene
local KEROSENEGAS = elements.allocate("JWARD", "KERV")
local KEROSENE = elements.allocate("JWARD", "KERO")
elements.element(elements.JWARD_PT_KERO, elements.element(elements.DEFAULT_PT_GEL))
elements.property(elements.JWARD_PT_KERO, "Name", "KERO")
elements.property(elements.JWARD_PT_KERO, "Description", "KERO BURNS HOT AND QUICK")
elements.property(elements.JWARD_PT_KERO, "Colour", 0x01B3D7)
elements.property(elements.JWARD_PT_KERO, "MenuSection", 5)
elements.property(elements.JWARD_PT_KERO, "Gravity", .04)
elements.property(elements.JWARD_PT_KERO, "Flammable", 1500)
elements.property(elements.JWARD_PT_KERO, "Explosive", 1)
elements.property(elements.JWARD_PT_KERO, "Loss", 1)
elements.property(elements.JWARD_PT_KERO, "AirLoss", .5)
elements.property(elements.JWARD_PT_KERO, "AirDrag", .01)
elements.property(elements.JWARD_PT_KERO, "Advection", .01)
elements.property(elements.JWARD_PT_KERO, "Weight", 5)
elements.property(elements.JWARD_PT_KERO, "State", ST_liquid)
elements.property(elements.JWARD_PT_KERO, "Properties", elem.TYPE_LIQUID+elem.PROP_DEADLY)
elements.property(elements.JWARD_PT_KERO, "HighTemperature", 393.15)
elements.property(elements.JWARD_PT_KERO, "HighTemperatureTransition", elements.JWARD_PT_KERV)
function KERO(i,x,y,s,n)
reaction = tpt.get_property("type",x+math.random(-1,1),y+math.random(-1,1))
	calstmp = tpt.get_property("tmp2",x,y)
	if calstmp == 2 then
		if reaction == petrol then
			sim.partChangeType(i, tpt.element('JETB'))
			reaction = nil
		end
	end
end
tpt.element_func(KERO,KEROSENE)

elements.element(elements.JWARD_PT_KERV, elements.element(elements.DEFAULT_PT_HYGN))
elements.property(elements.JWARD_PT_KERV, "Name", "KERV")
elements.property(elements.JWARD_PT_KERV, "Description", "kerosene gas")
elements.property(elements.JWARD_PT_KERV, "Colour", 0x01B3D7)
elements.property(elements.JWARD_PT_KERV, "MenuVisible", 0)
elements.property(elements.JWARD_PT_KERV, "Gravity", -0.02)
elements.property(elements.JWARD_PT_KERV, "Flammable", 600)
elements.property(elements.JWARD_PT_KERV, "Explosive", 1)
elements.property(elements.JWARD_PT_KERV, "Loss", 0.75)
elements.property(elements.JWARD_PT_KERV, "AirLoss", 0.97)
elements.property(elements.JWARD_PT_KERV, "AirDrag", 0.01)
elements.property(elements.JWARD_PT_KERV, "Advection", 1)
elements.property(elements.JWARD_PT_KERV, "Weight", 0)
elements.property(elements.JWARD_PT_KERV, "Diffusion", 0.7)
elements.property(elements.JWARD_PT_KERV, "Meltable", 0)
elements.property(elements.JWARD_PT_KERV, "Hardness", 0)
elements.property(elements.JWARD_PT_KERV, "Falldown", 0)
elements.property(elements.JWARD_PT_KERV, "Properties", TYPE_GAS)
elements.property(elements.JWARD_PT_KERV, "State", ST_GAS)
elements.property(elements.JWARD_PT_KERV, "Temperature", 403.15)
elements.property(elements.JWARD_PT_KERV, "HeatConduct", 195)
elements.property(elements.JWARD_PT_KERV, "LowTemperature", 393.15)
elements.property(elements.JWARD_PT_KERV, "LowTemperatureTransition", elements.JWARD_PT_KERO)

--jetfuel
local JETFUEL = elements.allocate("JWARD", "JETB")
elements.element(elements.JWARD_PT_JETB, elements.element(elements.DEFAULT_PT_GEL))
elements.property(elements.JWARD_PT_JETB, "Name", "JETB")
elements.property(elements.JWARD_PT_JETB, "Description", "Jet b type fuel-blend of Kero and Ptrl for jet engines")
elements.property(elements.JWARD_PT_JETB, "Colour", 0x676601)
elements.property(elements.JWARD_PT_JETB, "MenuSection", 5)
elements.property(elements.JWARD_PT_JETB, "Gravity", .04)
elements.property(elements.JWARD_PT_JETB, "Flammable", 5000)
elements.property(elements.JWARD_PT_JETB, "Explosive", 1)
elements.property(elements.JWARD_PT_JETB, "Loss", 0.8)
elements.property(elements.JWARD_PT_JETB, "AirLoss", 0.94)
elements.property(elements.JWARD_PT_JETB, "AirDrag", 0.02)
elements.property(elements.JWARD_PT_JETB, "Advection", 0.8)
elements.property(elements.JWARD_PT_JETB, "HighTemperature", 353.15)
elements.property(elements.JWARD_PT_JETB, "Weight", 13)
elements.property(elements.JWARD_PT_JETB, "State", ST_liquid)
elements.property(elements.JWARD_PT_JETB, "Properties", elem.TYPE_LIQUID+elem.PROP_DEADLY)
elements.property(elements.JWARD_PT_JETB, "LowTemperature", 225.15)
elements.property(elements.JWARD_PT_JETB, "LowTemperatureTransition", elements.DEFAULT_PT_ICE)

--tar
local TARGAS = elements.allocate("JWARD", "TARV")
local TAR = elements.allocate("JWARD", "TAR")
elements.element(elements.JWARD_PT_TAR, elements.element(elements.DEFAULT_PT_SOAP))
elements.property(elements.JWARD_PT_TAR, "Name", "TAR")
elements.property(elements.JWARD_PT_TAR, "Description", "tar hard to burn")
elements.property(elements.JWARD_PT_TAR, "Colour", 0x0D0D03)
elements.property(elements.JWARD_PT_TAR, "MenuSection", 5)
elements.property(elements.JWARD_PT_TAR, "Gravity", .1)
elements.property(elements.JWARD_PT_TAR, "Flammable", 2)
elements.property(elements.JWARD_PT_TAR, "Explosive", 0)
elements.property(elements.JWARD_PT_TAR, "Loss", 1)
elements.property(elements.JWARD_PT_TAR, "AirLoss", .5)
elements.property(elements.JWARD_PT_TAR, "AirDrag", .01)
elements.property(elements.JWARD_PT_TAR, "Advection", .01)
elements.property(elements.JWARD_PT_TAR, "Diffusion", 0.01)
elements.property(elements.JWARD_PT_TAR, "State", ST_liquid)
elements.property(elements.JWARD_PT_TAR, "Weight", 50)
elements.property(elements.JWARD_PT_TAR, "Properties", elem.TYPE_LIQUID+elem.PROP_DEADLY)
elements.property(elements.JWARD_PT_TAR, "HighTemperature", 873.15)
elements.property(elements.JWARD_PT_TAR, "HighTemperatureTransition", elements.JWARD_PT_TARV)

elements.element(elements.JWARD_PT_TARV, elements.element(elements.DEFAULT_PT_HYGN))
elements.property(elements.JWARD_PT_TARV, "Name", "TARV")
elements.property(elements.JWARD_PT_TARV, "Description", "tar gas")
elements.property(elements.JWARD_PT_TARV, "Colour", 0x4C2D20)
elements.property(elements.JWARD_PT_TARV, "MenuVisible", 0)
elements.property(elements.JWARD_PT_TARV, "Gravity", -0.02)
elements.property(elements.JWARD_PT_TARV, "Flammable", 10)
elements.property(elements.JWARD_PT_TARV, "Explosive", 0)
elements.property(elements.JWARD_PT_TARV, "Loss", 0.75)
elements.property(elements.JWARD_PT_TARV, "AirLoss", 0.97)
elements.property(elements.JWARD_PT_TARV, "AirDrag", 0.01)
elements.property(elements.JWARD_PT_TARV, "Advection", 1)
elements.property(elements.JWARD_PT_TARV, "Weight", 0)
elements.property(elements.JWARD_PT_TARV, "Diffusion", 0.7)
elements.property(elements.JWARD_PT_TARV, "Meltable", 0)
elements.property(elements.JWARD_PT_TARV, "Hardness", 0)
elements.property(elements.JWARD_PT_TARV, "Falldown", 0)
elements.property(elements.JWARD_PT_TARV, "Properties", TYPE_GAS)
elements.property(elements.JWARD_PT_TARV, "State", ST_GAS)
elements.property(elements.JWARD_PT_TARV, "Temperature", 403.15)
elements.property(elements.JWARD_PT_TARV, "HeatConduct", 195)
elements.property(elements.JWARD_PT_TARV, "LowTemperature", 873.15)
elements.property(elements.JWARD_PT_TARV, "LowTemperatureTransition", elements.JWARD_PT_TAR)

--wax
local WAXGAS = elements.allocate("JWARD", "WAXV")
elements.element(elements.JWARD_PT_WAXV, elements.element(elements.DEFAULT_PT_HYGN))
elements.property(elements.JWARD_PT_WAXV, "Name", "WAXV")
elements.property(elements.JWARD_PT_WAXV, "Description", "wax gas")
elements.property(elements.JWARD_PT_WAXV, "Colour", 0xF0F0BB)
elements.property(elements.JWARD_PT_WAXV, "MenuSection", SC_GAS)
elements.property(elements.JWARD_PT_WAXV, "Gravity", -0.02)
elements.property(elements.JWARD_PT_WAXV, "Flammable", 500)
elements.property(elements.JWARD_PT_WAXV, "Explosive", 0)
elements.property(elements.JWARD_PT_WAXV, "Loss", 0.75)
elements.property(elements.JWARD_PT_WAXV, "AirLoss", 0.97)
elements.property(elements.JWARD_PT_WAXV, "AirDrag", 0.01)
elements.property(elements.JWARD_PT_WAXV, "Advection", 1)
elements.property(elements.JWARD_PT_WAXV, "Weight", 0)
elements.property(elements.JWARD_PT_WAXV, "Diffusion", 0.7)
elements.property(elements.JWARD_PT_WAXV, "Meltable", 0)
elements.property(elements.JWARD_PT_WAXV, "Hardness", 0)
elements.property(elements.JWARD_PT_WAXV, "Falldown", 0)
elements.property(elements.JWARD_PT_WAXV, "Properties", TYPE_GAS)
elements.property(elements.JWARD_PT_WAXV, "State", ST_GAS)
elements.property(elements.JWARD_PT_WAXV, "Temperature", 833.15)
elements.property(elements.JWARD_PT_WAXV, "HeatConduct", 195)
elements.property(elements.JWARD_PT_WAXV, "LowTemperature", 823.15)
elements.property(elements.JWARD_PT_WAXV, "LowTemperatureTransition", elements.DEFAULT_PT_WAX)

--coke
local CoalCoke = elements.allocate("JWARD", "COKE")
elements.element(elements.JWARD_PT_COKE, elements.element(elements.DEFAULT_PT_BCOL))
elements.property(elements.JWARD_PT_COKE, "Name", "COKE")
elements.property(elements.JWARD_PT_COKE, "Description", "COAL COKE. Burns for a long time and hot.")
elements.property(elements.JWARD_PT_COKE, "Colour", 0xAAAAAA)
elements.property(elements.JWARD_PT_COKE, "MenuSection", 5)
elements.property(elements.JWARD_PT_COKE, "Gravity", .35)
elements.property(elements.JWARD_PT_COKE, "Flammable", 0)
elements.property(elements.JWARD_PT_COKE, "Explosive", 0)
elements.property(elements.JWARD_PT_COKE, "Loss", 0.15)
elements.property(elements.JWARD_PT_COKE, "AirLoss", 0.96)
elements.property(elements.JWARD_PT_COKE, "AirDrag", 0.03)
elements.property(elements.JWARD_PT_COKE, "Advection", 0.4)
elements.property(elements.JWARD_PT_COKE, "Weight", 78)
elements.property(elements.JWARD_PT_COKE, "Falldown", 1)
COKEUpdate = function(i, x, y, s, n)
	local clife = tpt.get_property('life', x, y)
	if clife > 1 then
		for cx = -1, 1, 2 do
			for cy = -1, 1, 2 do
				tpt.create(x + cx, y + cy, 'fire')
				tpt.set_property('temp', 1700, x, y)
			end
		end
		tpt.set_property('life', clife - 1, x, y)
	elseif clife == 1 then
		tpt.set_property('type', 0, x, y)
	elseif s > 0 then
		for cx = -1, 1, 2 do
			for cy = -1, 1, 2 do
				if tpt.get_property('type', x + cx, y + cy) == 4 or tpt.get_property('type', x + cx, y + cy) == 49 then
					tpt.set_property('life', 500, x, y)
					return true
				end
			end
		end
	end
end
tpt.element_func(COKEUpdate, tpt.element('coke'))

COALUpdate = function(i, x, y, s, n)
	dis = tpt.get_property('temp', x, y)
	if dis > 1273.15 then
		if buttonable == 1 or buttonablest == 0 then
			sim.partChangeType(i, tpt.element('coke'))
			tpt.set_property('life', 0, x, y)
			tpt.create(x, y + 1, 'CRST')
			tpt.create(x, y - 1, 'TAR')
		end
	end
end
tpt.element_func(COALUpdate, tpt.element('coal'))

BCOLUpdate = function(i, x, y, s, n)
	dis = tpt.get_property('temp', x, y)
	if dis > 1273.15 then
		if buttonable == 1 or buttonablest == 0 then
			sim.partChangeType(i, tpt.element('coke'))
			tpt.set_property('life', 0, x, y)
			tpt.create(x, y + 1, 'CRST')
			tpt.create(x, y - 1, 'TAR')
		end
	end
end
tpt.element_func(BCOLUpdate, tpt.element('bcol'))

local CreosoteGas = elements.allocate("JWARD", "CRTV")
elements.element(elements.JWARD_PT_CRTV, elements.element(elements.DEFAULT_PT_BOYL))
elements.property(elements.JWARD_PT_CRTV, "Name", "CRTV")
elements.property(elements.JWARD_PT_CRTV, "Description", "creosote gas")
elements.property(elements.JWARD_PT_CRTV, "Colour", 0x585117)
elements.property(elements.JWARD_PT_CRTV, "MenuVisible", 0)
elements.property(elements.JWARD_PT_CRTV, "Gravity", -0.02)
elements.property(elements.JWARD_PT_CRTV, "Explosive", 0)
elements.property(elements.JWARD_PT_CRTV, "Loss", 0.75)
elements.property(elements.JWARD_PT_CRTV, "AirDrag", 0.01)
elements.property(elements.JWARD_PT_CRTV, "Advection", 1)
elements.property(elements.JWARD_PT_CRTV, "Weight", 0)
elements.property(elements.JWARD_PT_CRTV, "Diffusion", 0.7)
elements.property(elements.JWARD_PT_CRTV, "Hardness", 0)
elements.property(elements.JWARD_PT_CRTV, "Falldown", 0)
elements.property(elements.JWARD_PT_CRTV, "Properties", elem.TYPE_GAS)
elements.property(elements.JWARD_PT_CRTV, "State", ST_GAS)
elements.property(elements.JWARD_PT_CRTV, "Temperature", 883.15)
elements.property(elements.JWARD_PT_CRTV, "HeatConduct", 81)
function CRTV(i,x,y,s,n)
	dis = tpt.get_property('temp', x, y)
	if dis < 873.15 then
		sim.partChangeType(i, tpt.element('CRST'))
	end
end
tpt.element_func(CRTV,CreosoteGas)

local Creosote = elements.allocate("JWARD", "CRST")
elements.element(elements.JWARD_PT_CRST, elements.element(elements.DEFAULT_PT_SOAP))
elements.property(elements.JWARD_PT_CRST, "Name", "CRST")
elements.property(elements.JWARD_PT_CRST, "Description", "creosote ")
elements.property(elements.JWARD_PT_CRST, "Colour", 0x0F0E04)
elements.property(elements.JWARD_PT_CRST, "MenuSection", SC_LIQUID)
elements.property(elements.JWARD_PT_CRST, "Gravity", .04)
elements.property(elements.JWARD_PT_CRST, "Flammable", 10)
elements.property(elements.JWARD_PT_CRST, "Explosive", 0)
elements.property(elements.JWARD_PT_CRST, "Loss", 1)
elements.property(elements.JWARD_PT_CRST, "AirLoss", .5)
elements.property(elements.JWARD_PT_CRST, "AirDrag", .01)
elements.property(elements.JWARD_PT_CRST, "Advection", .01)
elements.property(elements.JWARD_PT_CRST, "Weight", 35)
elements.property(elements.JWARD_PT_CRST, "State", ST_liquid)
elements.property(elements.JWARD_PT_CRST, "Properties", elem.TYPE_LIQUID)
elements.property(elements.JWARD_PT_CRST, "HighTemperature", 873)
elements.property(elements.JWARD_PT_CRST, "HighTemperatureTransition", elements.JWARD_PT_CRTV)
--crude oil
function OIL(i,x,y,s,n)
	calstmp = tpt.get_property("tmp2",x,y)
	calsctype = tpt.get_property("ctype",x,y)
	calstype = tpt.get_property("type",x + math.random(-1,1),y + math.random(-1,1))
	if calsctype == tpt.element('ptrl') and calstmp == 2 and calstype == tpt.element('ptrl') then
		sim.partChangeType(i, tpt.element('ptrl'))
	end
end
tpt.element_func(OIL,tpt.element('oil'))

local OILCRUDE = elements.allocate("JWARD", "OILC")
elements.element(elements.JWARD_PT_OILC, elements.element(elements.DEFAULT_PT_GEL))
elements.property(elements.JWARD_PT_OILC, "Name", "OILC")
elements.property(elements.JWARD_PT_OILC, "Description", "Crude oil can be distilled, didn't name it coil for a reason")
elements.property(elements.JWARD_PT_OILC, "Colour", 0x35350D)
elements.property(elements.JWARD_PT_OILC, "MenuSection", 7)
elements.property(elements.JWARD_PT_OILC, "Gravity", .04)
elements.property(elements.JWARD_PT_OILC, "Flammable", 50)
elements.property(elements.JWARD_PT_OILC, "Explosive", 0)
elements.property(elements.JWARD_PT_OILC, "Loss", 1)
elements.property(elements.JWARD_PT_OILC, "AirLoss", .5)
elements.property(elements.JWARD_PT_OILC, "AirDrag", .01)
elements.property(elements.JWARD_PT_OILC, "Advection", .01)
elements.property(elements.JWARD_PT_OILC, "Weight", 5)
elements.property(elements.JWARD_PT_OILC, "State", ST_liquid)
elements.property(elements.JWARD_PT_OILC, "Properties", elem.TYPE_LIQUID+elem.PROP_DEADLY)
function OILC(i,x,y,s,n)
	dis = tpt.get_property('temp', x, y)
	if dis > 973.15 then
		tpt.set_property('tmp', math.random(1,9), x, y)
	end
	oillife = tpt.get_property('tmp', x, y)
	if oillife == 9 then
		sim.partChangeType(i, tpt.element('crtv'))
		oillife = nil
	end
	if oillife == 8 then
		sim.partChangeType(i, tpt.element('gas'))
		oillife = nil
	end
	if oillife == 7 then
		sim.partChangeType(i, tpt.element('kerv'))
		oillife = nil
	end
	if oillife == 6 then
		sim.partChangeType(i, tpt.element('ptlv'))
		oillife = nil
	end
	if oillife == 5 then
		sim.partChangeType(i, tpt.element('dslv'))
		oillife = nil
	end
	if oillife == 4 then
		sim.partChangeType(i, tpt.element('waxv'))
		oillife = nil
	end
	if oillife == 3 then
		sim.partChangeType(i, tpt.element('coke'))
		oillife = nil
	end
	if oillife == 2 then
		sim.partChangeType(i, tpt.element('tarv'))
		oillife = nil
	end
	if oillife == 1 then
		sim.partChangeType(i, tpt.element('PRPN'))
		oillife = nil
	end
end
tpt.element_func(OILC,OILCRUDE)

--better states of matter
function BSM(i,x,y,s,n)
	stctype = tpt.get_property('ctype', x, y)
	sttemp = tpt.get_property('temp', x, y)
	if stctype == tpt.element('hygn') and sttemp > 14 then
		sim.partChangeType(i, tpt.el.hygn.id)
	end
	if stctype == tpt.element('nble') and sttemp > 1 then
		sim.partChangeType(i, tpt.el.nble.id)
	end
	if stctype == tpt.element('desl') and sttemp > 255.15 then
		sim.partChangeType(i, tpt.el.desl.id)
	end
	if stctype == tpt.element('ptrl') and sttemp > 225.15 then
		sim.partChangeType(i, tpt.element('ptrl'))
	end
end
tpt.element_func(BSM,tpt.el.ice.id)

function BSMp(i,x,y,s,n)
	stctype = tpt.get_property('ctype', x, y)
	sttemp = tpt.get_property('temp', x, y)
	if stctype == tpt.element('hygn') and sttemp > 14 then
		sim.partChangeType(i, tpt.el.hygn.id)
	end
	if stctype == tpt.element('nble') and sttemp > 1 then
		sim.partChangeType(i, tpt.el.nble.id)
	end
	if stctype == tpt.element('desl') and sttemp > 255.15 then
		sim.partChangeType(i, tpt.el.desl.id)
	end
	if stctype == tpt.element('ptrl') and sttemp > 225.15 then
		sim.partChangeType(i, tpt.element('ptrl'))
	end
end
tpt.element_func(BSMp,tpt.el.snow.id)

function BSMM(i,x,y,s,n)
	stctype = tpt.get_property('ctype', x, y)
	sttemp = tpt.get_property('temp', x, y)
	if stctype == tpt.element('merc') and sttemp > 234 then
		sim.partChangeType(i, tpt.el.merc.id)
		tpt.set_property('tmp', 22, x, y)
	end
end
tpt.element_func(BSMM,tpt.el.metl.id)

function BSMMY(i,x,y,s,n)
sttemp = tpt.get_property('temp', x, y)
	if buttonablest == 0 and sttemp < 234 then
		sim.partChangeType(i, tpt.el.metl.id)
		tpt.set_property('ctype', tpt.el.merc.id, x, y)
	end
end
tpt.element_func(BSMMY,tpt.el.merc.id)

function BSMWT(i,x,y,s,n)
	stctype = tpt.get_property('ctype', x, y)
	sttemp = tpt.get_property('temp', x, y)
	if stctype == tpt.element('deut') and sttemp < 376 then
		sim.partChangeType(i, tpt.el.deut.id)
	end
end
tpt.element_func(BSMWT,tpt.el.wtrv.id)

function BSMDWT(i,x,y,s,n)
	stctype = tpt.get_property('ctype', x, y)
	if stctype == tpt.element('deut') then
		sim.partChangeType(i, tpt.el.deut.id)
	end
end
tpt.element_func(BSMDWT,tpt.el.dstw.id)

function BSMDT(i,x,y,s,n)
	sttemp = tpt.get_property('temp', x, y)
	if buttonablest == 0 and sttemp > 376 then
		sim.partChangeType(i, tpt.el.wtrv.id)
		tpt.set_property('ctype', tpt.el.deut.id, x, y)
	end
end
tpt.element_func(BSMDT,tpt.el.deut.id)

function BSMP(i,x,y,s,n)
	sttemp = tpt.get_property('temp', x, y)
	if buttonablest == 0 and sttemp < 260 then
		BSMchance = math.random(1,3)
	else
		BSMchance = 0
	end
	if BSMchance == 1 then
		sim.partChangeType(i, tpt.el.clst.id)
	end
	if BSMchance == 2 then
		sim.partChangeType(i, tpt.el.ice.id)
		tpt.set_property('ctype', tpt.el.pste.id, x, y)
	end
	if BSMchance == 3 then
		sim.partChangeType(i, tpt.el.ice.id)
		tpt.set_property('ctype', tpt.el.watr.id, x, y)
	end
end
tpt.element_func(BSMP,tpt.el.pste.id)

--button
--http://powdertoy.co.uk/Wiki/W/Lua.html
topress = 0
thx = 0
buttonable = 1

function tick()
 if nil == HL2Mod then
 if thx == 1 then
 tpt.message_box("thanks "..tpt.get_name().." for your purchase, ","construction or theft of one or more of jward's mods")
 thx = 0
 end
 if tpt.version.jacob1s_mod or elem.DEFAULT_PT_IRNX == 181 or nil ~= TPTMP then
 if  tpt.hud() == 1 then
 if  tpt.mousex >= 613 and tpt.mousey >= 1 and tpt.mousex <= 627 and tpt.mousey <= 14 then
 else
tpt.drawrect(597, 1, 14, 14, 204, 204, 204)
tpt.fillrect(597, 1, 14, 14, 0, 0, 0, 255)
tpt.drawtext(598, 5, "JW", 255, 255, 255, 255)
topress = 1
if tpt.mousex >= 597 and tpt.mousey >= 1 and tpt.mousex <= 611 and tpt.mousey <= 14 then
tpt.drawrect(597, 1, 14, 14, 255, 255, 255)
end
end
end
else
tpt.drawrect(613, 113, 14, 14, 204, 204, 204)
tpt.fillrect(613, 113, 14, 14, 0, 0, 0, 255)
tpt.drawtext(614, 117, "JW", 255, 255, 255, 255)
topress = 2
if tpt.mousex >= 613 and tpt.mousey >= 113 and tpt.mousex <= 627 and tpt.mousey <= 124 then
tpt.drawrect(613, 113, 14, 14, 255, 255, 255)
tpt.drawtext(500, 117, "JWARD's Mod options", 255, 255, 255, 255)
end
end
if toopress == 1 then
if topress == 1 then
 tpt.fillrect(596, 0, 16, 16, 255, 255, 255, 255)
 tpt.drawtext(598, 5, "JW", 0, 0, 0, 255)
 end
 if topress == 2 then
 tpt.fillrect(612, 112, 16, 16, 255, 255, 255, 255)
 tpt.drawtext(614, 117, "JW", 0, 0, 0, 255)
 end
 if items == 1 then
 tpt.fillrect(150, 174, 16, 15, 255, 255, 255, 255)
 tpt.drawline(153, 176, 158, 181, 0, 0, 0)
 tpt.drawline(163, 176, 158, 181, 0, 0, 0)
 tpt.drawline(153, 181, 158, 186, 0, 0, 0)
 tpt.drawline(163, 181, 158, 186, 0, 0, 0)
 tpt.drawrect(0, 205, 600, 175, 255, 255, 255)
 tpt.fillrect(0, 205, 600, 175, 0, 0, 0, 255)
 tpt.drawtext(25, 210, "JWARD's Mods' elements", 255, 255, 255, 255)
 tpt.drawrect(5, 208, 14, 14, 255, 255, 255)
 tpt.drawline(17, 215, 12, 210, 255, 255, 255)
 tpt.drawline(7, 215, 12, 210, 255, 255, 255)
 tpt.drawline(17, 220, 12, 215, 255, 255, 255)
 tpt.drawline(7, 220, 12, 215, 255, 255, 255)
 tpt.drawtext(6, 229, "Fuel mod:", 255, 255, 255, 255)
 --anfo
 tpt.fillrect(50, 225, 28, 15, 255, 206, 202, 255)
 tpt.drawtext(51, 229, "AMFO", 0, 0, 0, 255)
 if  tpt.mousex >= 50 and tpt.mousey >= 225 and tpt.mousex <= 78 and tpt.mousey <= 240 and items == 1 then
 tpt.drawrect(49, 224, 30, 17, 255, 0, 0)
 end
 if redrect == 1 then
 tpt.drawrect(49, 224, 30, 17, 255, 0, 0)
 end
--PRPN
 tpt.fillrect(83, 225, 28, 15, 244, 162, 106, 255)
 tpt.drawtext(85, 229, "PRPN", 0, 0, 0, 255)
 if  tpt.mousex >= 83 and tpt.mousey >= 225 and tpt.mousex <= 111 and tpt.mousey <= 240 and items == 1 then
 tpt.drawrect(82, 224, 30, 17, 255, 0, 0)
 end
 if redrect == 2 then
 tpt.drawrect(82, 224, 30, 17, 255, 0, 0)
 end
 --COKE
 tpt.fillrect(116, 225, 28, 15, 170, 170, 170, 255)
 tpt.drawtext(118, 229, "COKE", 0, 0, 0, 255)
 if  tpt.mousex >= 116 and tpt.mousey >= 225 and tpt.mousex <= 144 and tpt.mousey <= 240 and items == 1 then
 tpt.drawrect(115, 224, 30, 17, 255, 0, 0)
 end
 if redrect == 3 then
 tpt.drawrect(115, 224, 30, 17, 255, 0, 0)
 end
 --OILC
 tpt.fillrect(149, 225, 28, 15, 53, 53, 13, 255)
 tpt.drawtext(153, 229, "OILC", 255, 255, 255, 255)
 if  tpt.mousex >= 149 and tpt.mousey >= 225 and tpt.mousex <= 177 and tpt.mousey <= 240 and items == 1 then
 tpt.drawrect(148, 224, 30, 17, 255, 0, 0)
 end
 if redrect == 4 then
 tpt.drawrect(148, 224, 30, 17, 255, 0, 0)
 end
--plye
 tpt.fillrect(182, 225, 28, 15, 204, 204, 204, 255)
 tpt.drawtext(186, 229, "PLYE", 0, 0, 0, 255)
 if  tpt.mousex >= 182 and tpt.mousey >= 225 and tpt.mousex <= 210 and tpt.mousey <= 240 and items == 1 then
 tpt.drawrect(181, 224, 30, 17, 255, 0, 0)
 end
 if redrect == 5 then
 tpt.drawrect(181, 224, 30, 17, 255, 0, 0)
 end
 --JETB
 tpt.fillrect(215, 225, 28, 15, 103, 102, 1, 255)
 tpt.drawtext(217, 229, "JETB", 255, 255, 255, 255)
 if  tpt.mousex >= 215 and tpt.mousey >= 225 and tpt.mousex <= 243 and tpt.mousey <= 240 and items == 1 then
 tpt.drawrect(214, 224, 30, 17, 255, 0, 0)
 end
 if redrect == 6 then
 tpt.drawrect(214, 224, 30, 17, 255, 0, 0)
 end
 --kerosene
 tpt.fillrect(248, 225, 28, 15, 1, 179, 255, 255)
 tpt.drawtext(250, 229, "KERO", 0, 0, 0, 255)
 if  tpt.mousex >= 248 and tpt.mousey >= 225 and tpt.mousex <= 276 and tpt.mousey <= 240 and items == 1 then
 tpt.drawrect(247, 224, 30, 17, 255, 0, 0)
 end
 if redrect == 7 then
 tpt.drawrect(247, 224, 30, 17, 255, 0, 0)
 end
 --N2H4
 tpt.fillrect(281, 225, 28, 15, 182, 240, 100, 255)
 tpt.drawtext(283, 229, "N2H4", 0, 0, 0, 255)
 if  tpt.mousex >= 281 and tpt.mousey >= 225 and tpt.mousex <= 309 and tpt.mousey <= 240 and items == 1 then
 tpt.drawrect(280, 224, 30, 17, 255, 0, 0)
 end
 if redrect == 8 then
 tpt.drawrect(280, 224, 30, 17, 255, 0, 0)
 end
  --N2O4
 tpt.fillrect(314, 225, 28, 15, 48, 206, 198, 255)
 tpt.drawtext(316, 229, "N2O4", 0, 0, 0, 255)
 if  tpt.mousex >= 314 and tpt.mousey >= 225 and tpt.mousex <= 342 and tpt.mousey <= 240 and items == 1 then
 tpt.drawrect(313, 224, 30, 17, 255, 0, 0)
 end
 if redrect == 9 then
 tpt.drawrect(313, 224, 30, 17, 255, 0, 0)
 end
 --TAR
 tpt.fillrect(347, 225, 28, 15, 13, 13, 3, 255)
 tpt.drawtext(352, 229, "TAR", 255, 255, 255, 255)
 if  tpt.mousex >= 347 and tpt.mousey >= 225 and tpt.mousex <= 375 and tpt.mousey <= 240 and items == 1 then
 tpt.drawrect(346, 224, 30, 17, 255, 0, 0)
 end
 if redrect == 10 then
 tpt.drawrect(346, 224, 30, 17, 255, 0, 0)
 end
 --AFRZ
 tpt.fillrect(380, 225, 28, 15, 12, 63, 91, 255)
 tpt.drawtext(382, 229, "AFRZ", 255, 255, 255, 255)
 if  tpt.mousex >= 380 and tpt.mousey >= 225 and tpt.mousex <= 408 and tpt.mousey <= 240 and items == 1 then
 tpt.drawrect(379, 224, 30, 17, 255, 0, 0)
 end
 if redrect == 11 then
 tpt.drawrect(379, 224, 30, 17, 255, 0, 0)
 end
 --N2O
 tpt.fillrect(413, 225, 28, 15, 67, 218, 255, 255)
 tpt.drawtext(418, 229, "N2O", 0, 0, 0, 255)
 if  tpt.mousex >= 413 and tpt.mousey >= 225 and tpt.mousex <= 441 and tpt.mousey <= 240 and items == 1 then
 tpt.drawrect(412, 224, 30, 17, 255, 0, 0)
 end
 if redrect == 12 then
 tpt.drawrect(412, 224, 30, 17, 255, 0, 0)
 end
 --N2
 tpt.fillrect(446, 225, 28, 15, 94, 82, 255, 255)
 tpt.drawtext(454, 229, "N2", 0, 0, 0, 255)
 if  tpt.mousex >= 446 and tpt.mousey >= 225 and tpt.mousex <= 474 and tpt.mousey <= 240 and items == 1 then
 tpt.drawrect(445, 224, 30, 17, 255, 0, 0)
 end
 if redrect == 13 then
 tpt.drawrect(445, 224, 30, 17, 255, 0, 0)
 end
 --PTRL
 tpt.fillrect(479, 225, 28, 15, 10, 74, 92, 255)
 tpt.drawtext(482, 229, "PTRL", 255, 255, 255, 255)
 if  tpt.mousex >= 479 and tpt.mousey >= 225 and tpt.mousex <= 507 and tpt.mousey <= 240 and items == 1 then
 tpt.drawrect(478, 224, 30, 17, 255, 0, 0)
 end
 if redrect == 14 then
 tpt.drawrect(478, 224, 30, 17, 255, 0, 0)
 end
 --COIL
 tpt.fillrect(512, 225, 28, 15, 165, 114, 20, 255)
 tpt.drawtext(515, 229, "COIL", 0, 0, 0, 255)
 if  tpt.mousex >= 512 and tpt.mousey >= 225 and tpt.mousex <= 540 and tpt.mousey <= 240 and items == 1 then
 tpt.drawrect(511, 224, 30, 17, 255, 0, 0)
 end
 if redrect == 15 then
 tpt.drawrect(511, 224, 30, 17, 255, 0, 0)
 end
 --CALS
 tpt.fillrect(545, 225, 28, 15, 144, 150, 95, 255)
 tpt.drawtext(548, 229, "CALS", 0, 0, 0, 255)
 if  tpt.mousex >= 545 and tpt.mousey >= 225 and tpt.mousex <= 573 and tpt.mousey <= 240 and items == 1 then
 tpt.drawrect(544, 224, 30, 17, 255, 0, 0)
 end
 if redrect == 16 then
 tpt.drawrect(544, 224, 30, 17, 255, 0, 0)
 end
 --BDSL
 tpt.fillrect(6, 245, 28, 15, 51, 16, 0, 255)
 tpt.drawtext(8, 249, "BDSL", 255, 255, 255, 255)
 if  tpt.mousex >= 6 and tpt.mousey >= 245 and tpt.mousex <= 34 and tpt.mousey <= 260 and items == 1 then
 tpt.drawrect(5, 244, 30, 17, 255, 0, 0)
 end
 if redrect == 17 then
 tpt.drawrect(5, 244, 30, 17, 255, 0, 0)
 end
 --LN2O
 tpt.fillrect(39, 245, 28, 15, 51, 193, 245, 255)
 tpt.drawtext(41, 249, "LN2O", 0, 0, 0, 255)
 if  tpt.mousex >= 39 and tpt.mousey >= 245 and tpt.mousex <= 67 and tpt.mousey <= 260 and items == 1 then
 tpt.drawrect(38, 244, 30, 17, 255, 0, 0)
 end
 if redrect == 18 then
 tpt.drawrect(38, 244, 30, 17, 255, 0, 0)
 end
 --CRST
 tpt.fillrect(72, 245, 28, 15, 15, 14, 4, 255)
 tpt.drawtext(74, 249, "CRST", 255, 255, 255, 255)
 if  tpt.mousex >= 72 and tpt.mousey >= 245 and tpt.mousex <= 100 and tpt.mousey <= 260 and items == 1 then
 tpt.drawrect(71, 244, 30, 17, 255, 0, 0)
 end
 if redrect == 19 then
 tpt.drawrect(71, 244, 30, 17, 255, 0, 0)
 end
 end
 tpt.drawrect(0, 0, 200, 200, 255, 255, 255)
 tpt.fillrect(0, 0, 200, 200, 0, 0, 0, 255)
 tpt.drawtext(10, 5, "JWARD's Mod options", 255, 255, 255, 255)
 --close
 tpt.drawrect(10, 174, 60, 16, 255, 255, 255)
 tpt.drawtext(25, 178, "Close", 255, 255, 255, 255)
 --antisave breaking
 tpt.drawrect(10, 150, 15, 15, 255, 255, 255)
 tpt.drawrect(35, 150, 15, 15, 255, 255, 255)
 tpt.drawtext(13, 154, "on", 255, 255, 255, 255)
 tpt.drawtext(37, 154, "off", 255, 255, 255, 255)
 tpt.drawtext(10, 140, "antisave breaking", 255, 255, 255, 255)
 --THanKs
 tpt.drawrect(80, 174, 60, 16, 255, 255, 255)
 tpt.drawtext(88, 178, ">THanKs<", 255, 255, 255, 255)
 --better states of matter
 tpt.drawtext(13, 127, "on", 255, 255, 255, 255)
 tpt.drawtext(37, 127, "off", 255, 255, 255, 255)
 tpt.drawrect(10, 123, 15, 15, 255, 255, 255)
 tpt.drawrect(35, 123, 15, 15, 255, 255, 255)
 tpt.drawtext(10, 114, "better states of matter", 255, 255, 255, 255)
  --elements
 tpt.drawrect(150, 174, 16, 15, 255, 255, 255)
 tpt.drawline(153, 176, 158, 181, 255, 255, 255)
 tpt.drawline(163, 176, 158, 181, 255, 255, 255)
 tpt.drawline(153, 181, 158, 186, 255, 255, 255)
 tpt.drawline(163, 181, 158, 186, 255, 255, 255)
end
end
end
function pressthingy()
if HL2Mod == nil then
if topress == 1 then
 if tpt.mousex >= 597 and tpt.mousey >= 1 and tpt.mousex <= 611 and tpt.mousey <= 14 and tpt.hud() == 1 then
 open = 1
 windowclick = 1
 end
 end
 if topress == 2 then
 if tpt.mousex >= 613 and tpt.mousey >= 113 and tpt.mousex <= 627 and tpt.mousey <= 124 then
 open = 1
 windowclick = 1
 end
 end
 if  tpt.mousex >= 0 and tpt.mousey >= 0 and tpt.mousex <= 200 and tpt.mousey <= 200 and windowclick == 1 then
 open = 1
 end
 if open == 1 then
 if  tpt.mousex >= 10 and tpt.mousey >= 174 and tpt.mousex <= 70 and tpt.mousey <= 190 then
 open = 0
 toopress = 0
 windowclick = 0
 end
 if  tpt.mousex >= 80 and tpt.mousey >= 174 and tpt.mousex <= 140 and tpt.mousey <= 190 then
 thx = 1
 end
 if  tpt.mousex >= 150 and tpt.mousey >= 174 and tpt.mousex <= 166 and tpt.mousey <= 189 then
 items = 1
 end
 if  tpt.mousex >= 5 and tpt.mousey >= 208 and tpt.mousex <= 19 and tpt.mousey <= 222 and items == 1 then
 items = 0
 end
 if  tpt.mousex >= 50 and tpt.mousey >= 225 and tpt.mousex <= 78 and tpt.mousey <= 240 and items == 1 then
 tpt.selectedl="JWARD_PT_AMFO"
 redrect = 1
 end
 if  tpt.mousex >= 83 and tpt.mousey >= 225 and tpt.mousex <= 111 and tpt.mousey <= 240 and items == 1 then
 tpt.selectedl="JWARD_PT_PRPN"
 redrect = 2
 end
 if  tpt.mousex >= 116 and tpt.mousey >= 225 and tpt.mousex <= 144 and tpt.mousey <= 240 and items == 1 then
 tpt.selectedl="JWARD_PT_COKE"
 redrect = 3
 end
 if  tpt.mousex >= 149 and tpt.mousey >= 225 and tpt.mousex <= 177 and tpt.mousey <= 240 and items == 1 then
 tpt.selectedl="JWARD_PT_OILC"
 redrect = 4
 end
 if  tpt.mousex >= 182 and tpt.mousey >= 225 and tpt.mousex <= 210 and tpt.mousey <= 240 and items == 1 then
 tpt.selectedl="JWARD_PT_PLYE"
 redrect = 5
 end
 if  tpt.mousex >= 215 and tpt.mousey >= 225 and tpt.mousex <= 243 and tpt.mousey <= 240 and items == 1 then
 tpt.selectedl="JWARD_PT_JETB"
 redrect = 6
 end
 if  tpt.mousex >= 248 and tpt.mousey >= 225 and tpt.mousex <= 276 and tpt.mousey <= 240 and items == 1 then
 tpt.selectedl="JWARD_PT_KERO"
 redrect = 7
 end
 if  tpt.mousex >= 281 and tpt.mousey >= 225 and tpt.mousex <= 309 and tpt.mousey <= 240 and items == 1 then
 tpt.selectedl="JWARD_PT_N2H4"
 redrect = 8
 end
 if  tpt.mousex >= 314 and tpt.mousey >= 225 and tpt.mousex <= 342 and tpt.mousey <= 240 and items == 1 then
 tpt.selectedl="JWARD_PT_N2O4"
 redrect = 9
 end
 if  tpt.mousex >= 347 and tpt.mousey >= 225 and tpt.mousex <= 375 and tpt.mousey <= 240 and items == 1 then
 tpt.selectedl="JWARD_PT_TAR"
 redrect = 10
 end
 if  tpt.mousex >= 380 and tpt.mousey >= 225 and tpt.mousex <= 408 and tpt.mousey <= 240 and items == 1 then
 tpt.selectedl="JWARD_PT_AFRZ"
 redrect = 11
 end
 if  tpt.mousex >= 413 and tpt.mousey >= 225 and tpt.mousex <= 441 and tpt.mousey <= 240 and items == 1 then
 tpt.selectedl="JWARD_PT_N2O"
 redrect = 12
 end
 if  tpt.mousex >= 446 and tpt.mousey >= 225 and tpt.mousex <= 474 and tpt.mousey <= 240 and items == 1 then
 tpt.selectedl="JWARD_PT_N2"
 redrect = 13
 end
 if  tpt.mousex >= 479 and tpt.mousey >= 225 and tpt.mousex <= 507 and tpt.mousey <= 240 and items == 1 then
 tpt.selectedl="JWARD_PT_PTRL"
 redrect = 14
 end
 if  tpt.mousex >= 512 and tpt.mousey >= 225 and tpt.mousex <= 540 and tpt.mousey <= 240 and items == 1 then
 tpt.selectedl="JWARD_PT_COIL"
 redrect = 15
 end
 if  tpt.mousex >= 545 and tpt.mousey >= 225 and tpt.mousex <= 573 and tpt.mousey <= 240 and items == 1 then
 tpt.selectedl="JWARD_PT_CALS"
 redrect = 16
 end
 if  tpt.mousex >= 6 and tpt.mousey >= 245 and tpt.mousex <= 34 and tpt.mousey <= 260 and items == 1 then
 tpt.selectedl="JWARD_PT_BDSL"
 redrect = 17
 end
 if  tpt.mousex >= 39 and tpt.mousey >= 245 and tpt.mousex <= 67 and tpt.mousey <= 260 and items == 1 then
 tpt.selectedl="JWARD_PT_LN2O"
 redrect = 18
 end
 if  tpt.mousex >= 72 and tpt.mousey >= 245 and tpt.mousex <= 100 and tpt.mousey <= 260 and items == 1 then
 tpt.selectedl="JWARD_PT_CRST"
 redrect = 19
 end
 if  tpt.mousex >= 35 and tpt.mousey >= 123 and tpt.mousex <= 50 and tpt.mousey <= 138 then
elements.property(elements.DEFAULT_PT_LN2, "HighTemperature", 77)
elements.property(elements.DEFAULT_PT_LN2, "HighTemperatureTransition", elements.DEFAULT_PT_NONE)
elements.property(elements.DEFAULT_PT_GAS, "HighPressureTransition", elements.DEFAULT_PT_OIL)
elements.property(elements.DEFAULT_PT_GAS, "LowTemperature", 0)
elements.property(elements.DEFAULT_PT_GAS, "HotAir", 0.001)
elements.property(elements.DEFAULT_PT_GAS, "LowTemperatureTransition", DEFAULT_PT_GAS)
elements.property(elements.DEFAULT_PT_GAS, "HighTemperatureTransition", elements.DEFAULT_PT_FIRE)
elements.property(elements.DEFAULT_PT_GAS, "Temperature", 273.15)
elements.property(elements.DEFAULT_PT_GAS, "HighTemperature", 573)
elements.property(elements.DEFAULT_PT_GAS, "HighPressure", 6)
elements.property(elements.DEFAULT_PT_OIL, "HighTemperature", 333)
elements.property(elements.DEFAULT_PT_OIL, "HighTemperatureTransition", elements.DEFAULT_PT_GAS)
elements.property(elements.DEFAULT_PT_DESL, "LowTemperature", NT)
elements.property(elements.DEFAULT_PT_DESL, "LowTemperatureTransition", ITL)
elements.property(elements.DEFAULT_PT_HYGN, "LowTemperature", NT)
elements.property(elements.DEFAULT_PT_HYGN, "LowTemperatureTransition", ITL)
elements.property(elements.DEFAULT_PT_NBLE, "LowTemperature", NT)
elements.property(elements.DEFAULT_PT_NBLE, "LowTemperatureTransition", ITL)
elements.property(elements.DEFAULT_PT_COAL, "HighPressure", 256)
elements.property(elements.DEFAULT_PT_COAL, "HighPressureTransition", elements.DEFAULT_PT_COAL)
elements.property(elements.DEFAULT_PT_BCOL, "HighPressure", 256)
elements.property(elements.DEFAULT_PT_BCOL, "HighPressureTransition", elements.DEFAULT_PT_BCOL)
elements.property(elements.JWARD_PT_COKE, "HighPressure", 256)
elements.property(elements.JWARD_PT_COKE, "HighPressureTransition", elements.JWARD_PT_COKE)
elements.property(elements.JWARD_PT_COKE, "HighTemperature", 10000)
elements.property(elements.JWARD_PT_COKE, "HighTemperatureTransition", elements.JWARD_PT_COKE)
elements.property(elements.DEFAULT_PT_URAN, "HighTemperature", 10000)
elements.property(elements.DEFAULT_PT_URAN, "HighTemperatureTransition", elements.DEFAULT_PT_URAN)
elements.property(elements.DEFAULT_PT_PLUT, "HighTemperature", 10000)
elements.property(elements.DEFAULT_PT_PLUT, "HighTemperatureTransition", elements.DEFAULT_PT_PLUT)
elements.property(elements.DEFAULT_PT_DEUT, "LowTemperature", 0)
elements.property(elements.DEFAULT_PT_DEUT, "LowTemperatureTransition", elements.DEFAULT_PT_DEUT)
buttonablest = 1
 end
if  tpt.mousex >= 10 and tpt.mousey >= 123 and tpt.mousex <= 25 and tpt.mousey <= 138 then
elements.property(elements.DEFAULT_PT_LN2, "HighTemperature", 76)
elements.property(elements.DEFAULT_PT_LN2, "HighTemperatureTransition", elements.JWARD_PT_N2)
elements.property(elements.DEFAULT_PT_GAS, "HighPressureTransition", 256)
elements.property(elements.DEFAULT_PT_GAS, "LowTemperature", 573.15)
elements.property(elements.DEFAULT_PT_GAS, "HotAir", 0)
elements.property(elements.DEFAULT_PT_GAS, "LowTemperatureTransition", elements.DEFAULT_PT_OIL)
elements.property(elements.DEFAULT_PT_GAS, "HighTemperatureTransition", NT)
elements.property(elements.DEFAULT_PT_GAS, "Temperature", 583.15)
elements.property(elements.DEFAULT_PT_GAS, "HighTemperature", 10000)
elements.property(elements.DEFAULT_PT_OIL, "HighTemperature", 573.15)
elements.property(elements.DEFAULT_PT_OIL, "HighTemperatureTransition", elements.DEFAULT_PT_GAS)
elements.property(elements.DEFAULT_PT_DESL, "HighTemperatureTransition", elements.JWARD_PT_DSLV)
elements.property(elements.DEFAULT_PT_DESL, "HighTemperature", 473.15)
elements.property(elements.DEFAULT_PT_DESL, "LowTemperature", 255.15)
elements.property(elements.DEFAULT_PT_DESL, "LowTemperatureTransition", elements.DEFAULT_PT_ICE)
elements.property(elements.DEFAULT_PT_HYGN, "LowTemperature", 14)
elements.property(elements.DEFAULT_PT_HYGN, "LowTemperatureTransition", elements.DEFAULT_PT_ICE)
elements.property(elements.DEFAULT_PT_NBLE, "LowTemperature", 1)
elements.property(elements.DEFAULT_PT_NBLE, "LowTemperatureTransition", elements.DEFAULT_PT_ICE)
elements.property(elements.DEFAULT_PT_COAL, "HighPressure", 122)
elements.property(elements.DEFAULT_PT_COAL, "HighPressureTransition", elements.DEFAULT_PT_DMND)
elements.property(elements.DEFAULT_PT_BCOL, "HighPressure", 122)
elements.property(elements.DEFAULT_PT_BCOL, "HighPressureTransition", elements.DEFAULT_PT_DMND)
elements.property(elements.JWARD_PT_COKE, "HighPressure", 122)
elements.property(elements.JWARD_PT_COKE, "HighPressureTransition", elements.DEFAULT_PT_DMND)
elements.property(elements.JWARD_PT_COKE, "HighTemperature", 4373.15)
elements.property(elements.JWARD_PT_COKE, "HighTemperatureTransition", elements.DEFAULT_PT_CO2)
elements.property(elements.DEFAULT_PT_URAN, "HighTemperature", 1405)
elements.property(elements.DEFAULT_PT_URAN, "HighTemperatureTransition", elements.DEFAULT_PT_LAVA)
elements.property(elements.DEFAULT_PT_PLUT, "HighTemperature", 912)
elements.property(elements.DEFAULT_PT_PLUT, "HighTemperatureTransition", elements.DEFAULT_PT_LAVA)
elements.property(elements.DEFAULT_PT_DEUT, "LowTemperature", 276)
elements.property(elements.DEFAULT_PT_DEUT, "LowTemperatureTransition", elements.DEFAULT_PT_ICE)
buttonablest = 0
 end
 if  tpt.mousex >= 10 and tpt.mousey >= 150 and tpt.mousex <= 25 and tpt.mousey <= 165 then
elements.property(elements.DEFAULT_PT_ACID, "Diffusion", 0)
elements.property(elements.DEFAULT_PT_ACID, "Gravity", 0.1)
elements.property(elements.DEFAULT_PT_ACID, "Description", "Dissolves almost everything.")
elements.property(elements.DEFAULT_PT_ACID, "Flammable", 40)
elements.property(elements.DEFAULT_PT_INSL, "Hardness", 10)
elements.property(elements.DEFAULT_PT_INSL, "Flammable", 7)
elements.property(elements.DEFAULT_PT_LN2, "HighTemperature", 77)
elements.property(elements.DEFAULT_PT_LN2, "HighTemperatureTransition", elements.DEFAULT_PT_NONE)
elements.property(elements.DEFAULT_PT_WATR, "Hardness", 20)
elements.property(elements.DEFAULT_PT_WATR, "Weight", 30)
elements.property(elements.DEFAULT_PT_DSTW, "Hardness", 20)
elements.property(elements.DEFAULT_PT_DSTW, "Weight", 30)
elements.property(elements.DEFAULT_PT_SLTW, "Hardness", 20)
elements.property(elements.DEFAULT_PT_SLTW, "Weight", 35)
elements.property(elements.DEFAULT_PT_BUBW, "Hardness", 20)
elements.property(elements.DEFAULT_PT_BUBW, "Weight", 30)
elements.property(elements.DEFAULT_PT_GAS, "HighPressureTransition", elements.DEFAULT_PT_OIL)
elements.property(elements.DEFAULT_PT_GAS, "LowTemperature", 0)
elements.property(elements.DEFAULT_PT_GAS, "HotAir", 0.001)
elements.property(elements.DEFAULT_PT_GAS, "LowTemperatureTransition", DEFAULT_PT_GAS)
elements.property(elements.DEFAULT_PT_GAS, "HighTemperatureTransition", elements.DEFAULT_PT_FIRE)
elements.property(elements.DEFAULT_PT_GAS, "Temperature", 273.15)
elements.property(elements.DEFAULT_PT_GAS, "HighTemperature", 573)
elements.property(elements.DEFAULT_PT_GAS, "HighPressure", 6)
elements.property(elements.DEFAULT_PT_OIL, "HighTemperature", 333)
elements.property(elements.DEFAULT_PT_OIL, "HighTemperatureTransition", elements.DEFAULT_PT_GAS)
elements.property(elements.DEFAULT_PT_DESL, "LowTemperature", NT)
elements.property(elements.DEFAULT_PT_DESL, "LowTemperatureTransition", ITL)
elements.property(elements.DEFAULT_PT_DESL, "Weight", 15)
elements.property(elements.DEFAULT_PT_DESL, "HighPressure", 2)
elements.property(elements.DEFAULT_PT_NITR, "Hardness", 3)
buttonable = 0
 end
 if  tpt.mousex >= 35 and tpt.mousey >= 150 and tpt.mousex <= 50 and tpt.mousey <= 165 then
 elements.property(elements.DEFAULT_PT_ACID, "Diffusion", 1.2)
elements.property(elements.DEFAULT_PT_ACID, "Gravity", 0.62)
elements.property(elements.DEFAULT_PT_ACID, "Description", "Bubbling caustic liquid.")
elements.property(elements.DEFAULT_PT_ACID, "Flammable", 0)
elements.property(elements.DEFAULT_PT_INSL, "Hardness", 0)
elements.property(elements.DEFAULT_PT_INSL, "Flammable", 0)
elements.property(elements.DEFAULT_PT_LN2, "HighTemperature", 76)
elements.property(elements.DEFAULT_PT_LN2, "HighTemperatureTransition", elements.JWARD_PT_N2)
elements.property(elements.DEFAULT_PT_WATR, "Hardness", 0.25)
elements.property(elements.DEFAULT_PT_WATR, "Weight", 32)
elements.property(elements.DEFAULT_PT_DSTW, "Hardness", 0)
elements.property(elements.DEFAULT_PT_DSTW, "Weight", 32)
elements.property(elements.DEFAULT_PT_SLTW, "Hardness", 0)
elements.property(elements.DEFAULT_PT_SLTW, "Weight", 32)
elements.property(elements.DEFAULT_PT_BUBW, "Hardness", 0)
elements.property(elements.DEFAULT_PT_BUBW, "Weight", 32)
elements.property(elements.DEFAULT_PT_GAS, "HighPressureTransition", 256)
elements.property(elements.DEFAULT_PT_GAS, "LowTemperature", 573.15)
elements.property(elements.DEFAULT_PT_GAS, "HotAir", 0)
elements.property(elements.DEFAULT_PT_GAS, "LowTemperatureTransition", elements.DEFAULT_PT_OIL)
elements.property(elements.DEFAULT_PT_GAS, "HighTemperatureTransition", NT)
elements.property(elements.DEFAULT_PT_GAS, "Temperature", 583.15)
elements.property(elements.DEFAULT_PT_GAS, "HighTemperature", 10000)
elements.property(elements.DEFAULT_PT_OIL, "HighTemperature", 573.15)
elements.property(elements.DEFAULT_PT_OIL, "HighTemperatureTransition", elements.DEFAULT_PT_GAS)
elements.property(elements.DEFAULT_PT_DESL, "HighTemperatureTransition", elements.JWARD_PT_DSLV)
elements.property(elements.DEFAULT_PT_DESL, "HighTemperature", 473.15)
elements.property(elements.DEFAULT_PT_DESL, "LowTemperature", 255.15)
elements.property(elements.DEFAULT_PT_DESL, "LowTemperatureTransition", elements.DEFAULT_PT_ICE)
elements.property(elements.DEFAULT_PT_DESL, "Weight", 12)
elements.property(elements.DEFAULT_PT_DESL, "HighPressure", 256)
elements.property(elements.DEFAULT_PT_NITR, "Hardness", 0)
buttonable = 1
 end
 tpt.set_pause(1)
 toopress = 1
 return false
 else
 toopress = 0
 return true
end
end
end

tpt.register_mouseclick(pressthingy)
tpt.register_mouseclick(tick)
tpt.register_step(tick)

--default editing
elements.property(elements.DEFAULT_PT_ACID, "Flammable", 0)
elements.property(elements.DEFAULT_PT_DMND, "MenuSection", 9)
elements.property(elements.DEFAULT_PT_MORT, "MenuVisible", 1)
elements.property(elements.DEFAULT_PT_MORT, "MenuSection", 8)
elements.property(elements.DEFAULT_PT_INSL, "Hardness", 0)
elements.property(elements.DEFAULT_PT_NITR, "Hardness", 0)
elements.property(elements.DEFAULT_PT_INSL, "Flammable", 0)
elements.property(elements.DEFAULT_PT_LN2, "HighTemperature", 76)
elements.property(elements.DEFAULT_PT_WATR, "Hardness", 0.25)
elements.property(elements.DEFAULT_PT_DSTW, "Hardness", 0)
elements.property(elements.DEFAULT_PT_SLTW, "Hardness", 0)
elements.property(elements.DEFAULT_PT_BUBW, "Hardness", 0)
elements.property(elements.DEFAULT_PT_WATR, "Weight", 32)
elements.property(elements.DEFAULT_PT_DSTW, "Weight", 32)
elements.property(elements.DEFAULT_PT_SLTW, "Weight", 32)
elements.property(elements.DEFAULT_PT_BUBW, "Weight", 32)
elements.property(elements.DEFAULT_PT_ACID, "Weight", 32)
elements.property(elements.DEFAULT_PT_ACID, "Diffusion", 1.2)
elements.property(elements.DEFAULT_PT_ACID, "Description", "Bubbling caustic liquid.")
elements.property(elements.DEFAULT_PT_ACID, "Gravity", 0.62)
elements.property(elements.DEFAULT_PT_DESL, "HighPressure", 256)
elements.property(elements.DEFAULT_PT_GAS, "HighPressureTransition", 256)
elements.property(elements.DEFAULT_PT_GAS, "LowTemperature", 573.15)
elements.property(elements.DEFAULT_PT_GAS, "HotAir", 0)
elements.property(elements.DEFAULT_PT_GAS, "LowTemperatureTransition", elements.DEFAULT_PT_OIL)
elements.property(elements.DEFAULT_PT_GAS, "Temperature", 583.15)
elements.property(elements.DEFAULT_PT_GAS, "HighTemperature", 10000)
elements.property(elements.DEFAULT_PT_LN2, "HighTemperatureTransition", elements.JWARD_PT_N2)
elements.property(elements.DEFAULT_PT_OIL, "HighTemperature", 573.15)
elements.property(elements.DEFAULT_PT_OIL, "HighTemperatureTransition", elements.DEFAULT_PT_GAS)
elements.property(elements.DEFAULT_PT_DESL, "HighTemperatureTransition", elements.JWARD_PT_DSLV)
elements.property(elements.DEFAULT_PT_DESL, "HighTemperature", 473.15)
elements.property(elements.DEFAULT_PT_DESL, "LowTemperature", 255.15)
elements.property(elements.DEFAULT_PT_DESL, "LowTemperatureTransition", elements.DEFAULT_PT_ICE)
elements.property(elements.DEFAULT_PT_DESL, "Weight", 12)
elements.property(elements.DEFAULT_PT_MWAX, "HighTemperatureTransition", elements.JWARD_PT_WAXV)
elements.property(elements.DEFAULT_PT_MWAX, "HighTemperature", 643.15)
elements.property(elements.DEFAULT_PT_WAX, "HeatConduct", 25)
