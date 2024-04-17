--[[
__lua_init__.lua
to init some variable and config
]]--
--load luacom for com call
require("luacom");
--dm test

--[[op = luacom.CreateObject("dm.dmsoft");
print("dm ver:",op:Ver());

hdll=GetModuleHandle("dm.dll");
if hdll then
	write_int(0x1063d0+hdll,1);
end
]]--
--op test
--print("freeCOM:",setupA("E:\\project\\op\\bin\\x86\\op_x86.dll"));
op = luacom.CreateObject("op.opsoft");
print("op ver:",op:Ver());
op:SetShowErrorMsg(1);
op:EnablePicCache(0);
print("op base path:",op:GetBasePath());
--gui init

_display={"normal","gdi","gdi2","dx2","dx","dx.d3d9","dx.d3d10","dx.d3d11","opengl","opengl.std","opengl.nox","opengl.es"};
_mouse={"normal","windows"};
_keypad={"normal","windows"};
_mode={"0","1"};
for k,v in pairs(_display) do
	append_item(0,v);
end

for k,v in pairs(_mouse) do
	append_item(1,v);
end

for k,v in pairs(_keypad) do
	append_item(2,v);
end

for k,v in pairs(_mode) do
	append_item(3,v);
end