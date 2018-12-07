pico-8 cartridge // http://www.pico-8.com
version 16
__lua__

-- 1- do it like tiny text
-- 2- or like egor's advice
-- https://8bit-caaz.tumblr.com/post/171458093376/layering-sprite-data

-- our letter size (monospaces)
-- 4x6


-- clear the screen, so nothing previously ran screws this up
cls()
for x = 0, 127 do
  for y = 8, 15 do
    -- get the pixels at the bottom layer (0-15)
    bottom_color = sget(x,y-8)
    -- get the pixels at the top layer (16,31)
    top_color = sget(x,y)
    -- add them together, shifting the bottom layer two bits over
    total_color = top_color + shl(bottom_color,2)
    -- set the pixel on the screen to display it.
    pset(x,y-8,total_color)
    -- set the sprite pixel on the next page the combined layer.
    sset(x,y+24,total_color)
  end
end
-- save the new spritesheet to rom.
cstore(0,0,0x2000)
-- pause the program until exit.
function _update() end

__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07000070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000070000000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000070000000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700070000000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07000070070000000777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000666000006660000066600000060000000600000006000000777000000000000077700000777000000000000077700000
00000000000000000000000000000000000000000000000000000000666000006660000066600000007000007770000000700000007000007770000000700000
00000000070700000700000070700000707000000700000070700000707000000700000070700000777000000070000077770000777000000070000077770000
00000000077700007777000077770000777000007777000077770000777000007777000077770000760000007777000076000000700000007777000070000000
00000000006000000600000006000000000000000000000000000000000000000000000000000000077000000060000007700000077000000000000007700000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
06000000060000000600000000000000000000006000000006000000000000000000000000000000000000000000000000000000000000000000000000000000
77700000000000007770000000000000000000000000000000000000000000000000000000600000006000000000000000000000000000000000000000000000
00700000777000000070000077000000770000007700000077000000000000000000000000000000000000000000000000000000000000000000000000000000
77700000007000007777000000700000007000000070000000700000007000000070000000700000007000007070707070700000707070700000000000000000
70000000777700007000000077700000777700007770000077770000007000000077000000700000007700007077770077770000707777770000000000000000
07700000000000000770000000000000000000000000000000000000770000007700000077000000770000000700000000000000070000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00006000060000000000600000000000000000000000060000600000700000007060000000000000000000000000000006000000000000000000000000000000
00066600666000000006660000000000000000000000000000000000700000007000000000700000000000000070000000700000060000000070000000000000
00000000000000000000000000007700077700000000777007770000777000007770000007000000007000000700000007000000007000000700000000000000
70707070707000007070707070770070700700007077007070070000700700007007000077700000070000007777000077700000070000007777000000000000
70777700777700007077770070777770777700007077777077770000777700007777000070000000777700007000000070000000777700007000000000000000
07000000000000000700000007000000000000000700000000000000000000000000000007700000000000000770000007700000000000000770000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0c0000c0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00c00c00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000cc0000c0000000c00000000000000666000006660000066600000060000000600000006000000777000000000000077700000777000000000000077700000
000cc0000c0000000c00000000000000000000000000000000000000666000006660000066600000007000007770000000700000007000007770000000700000
00c00c00030700000300000070700000707000000700000070700000707000000700000070700000777000000070000077770000777000000070000077770000
0c0000c0037700007333000077770000777000007777000077770000777000007777000077770000760000007777000076000000700000007777000070000000
00000000006000000600000006000000000000000000000000000000000000000000000000000000077000000060000007700000077000000000000007700000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006600000
00000000060000000000000077000000070000000770000007000000070000000000000000000000000000000000000000000000000000006660000066000000
06000000000000000000000000700000707000000007000070700000707000000077000000770000000000000000000000000000000000000000000000000000
00000000070000007700000070700000077000000707000007700000077700007070000070700000070000000000000000000000000000007700000007000000
70700000777700007070000077770000007700007777000000700000007000000770000007700000777700000880000008000000080000007070000077700000
07000000000000000700000000000000000000000000000077000000770000000660000000000000666000008800000088000000800000000700000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66600000066000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000660000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07000000007700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
70700000707000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07700000077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00770000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00001fffff1f000000001fffff1f0000666666666666666633333b3333333b330000144444140000000014444414000055555555555555556666676666666766
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
f0808f8f8f8f80f0f0808f8f8f8f80f0666566666666666665656565656565654090949494949040409094949494904055515555555555555151515151515151
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000e8e8e8e8000000e0e8e8e8e8e000666666666656666666666666666666660000a9a9a9a9000000a0a9a9a9a9a00555555555551555555555555555555555
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00004e00004e000004000000000000046666666666666666666666666666666600008a00008a0000080000000000000855555555555555555555555555555555
__map__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0300000000000000000003040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000013140000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0004040600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030300030303030303000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202050215160303000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000025260300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000015160000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000025260000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
00080000310703607038070360703207031070310703306037050360403a0402d0302f02034020390103c0103f0503f05039050360503305001050010502605034050350503605037050390503a0503a0503b050
0110000028070000000000000000280700000029070000002b07000000000000000028070000002b070000002d070000002b07000000280700000000000000002607000000000000000024070000000000000000
0110000024070000000000000000280700000000000000001f0700000000000000002807000000000000000024070000000000000000280700000000000000001f07000000000000000028070000000000000000
0110000022070000000000000000260700000000000000001d0700000000000000002607000000000000000022070000000000000000260700000000000000001d07000000000000000026070000000000000000
01100000290700000000000000002d0700000000000000002b0700000029070000002607000000240700000022070000001c0701d070000000000000000000000000000000000000000000000000000000000000
001000002405024050240502405025050250502a0502a0502a0502a050240502505025050260502605026050260502a0502a0502a0502a0502a0502a0502a0502205022050220502205025050250502805028050
__music__
01 01024141
01 03044141
02 01030441
03 40414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141
00 41414141

