--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v161,v162) local v163={};for v203=1, #v161 do v6(v163,v0(v4(v1(v2(v161,v203,v203 + 1 )),v1(v2(v162,1 + (v203% #v162) ,1 + (v203% #v162) + 1 )))%256 ));end return v5(v163);end local v8={v7("\243\198\207\49\255\141\206\16\217\198\210\40","\126\177\163\187\69\134\219\167"),v7("\17\204\28\192\228\42\193\38\204\233\46","\156\67\173\74\165"),v7("\44\132\74\4\189\49\95\21\187\93\71","\38\84\215\41\118\220\70"),v7("\64\25\45\2\237\85\31\46\23\236","\158\48\118\66\114"),v7("\130\35\23\47\64\164\246\170\0\21\37\102","\155\203\68\112\86\19\197"),v7("\64\220\50\249\68\116\211\221\112\242","\152\38\189\86\156\32\24\133"),v7("\246\88\180\78\233\86\174\85\250\86\164\67\253\91\179\19","\38\156\55\199"),v7("\184\111\115\34\22\119\238\124\187\113\121\56\7","\35\200\29\28\72\115\20\154"),v7("\48\177\203\218\157\56\61\1","\84\121\223\177\191\237\76"),v7("\159\127\200\173\53\94\52\238\189\113\200\173\63\66\15\248\143","\161\219\54\169\192\90\48\80"),v7("\64\81\11\44\77\81\3\55\64\82\20\119","\69\41\34\96"),v7("\189\198\212\15\12\63\174\204\194\25","\75\220\163\183\106\98"),v7("\8\175\140\48\216\3\177\138\46","\185\98\218\235\87"),v7("\230\51\40\245\211\171\204\57","\202\171\92\71\134\190"),v7("\37\208\42\142","\232\73\161\76")};local v9=13 + 2 ;local v10=v7("\128\224\77\72\94\186\203\71\29\16\180\205\2\74\22\178\205\71\81\23\168\205\71\89\35","\126\219\185\34\61");local v11=v7("\30\204\70\115\109\100\246\243\5\202\4\61\49\38\166\191\88\157\7\38\41\34\170","\135\108\174\62\18\30\23\147");local v12=v7("\164\235\50\202\11\189\54\211\191\237\112\132\87\247\100\158\229\186\114\152\65\247\107\145\227\189\124","\167\214\137\74\171\120\206\83");local v13=v7("\153\242\42\92\235\180\142\228\59\89\162\232\196\161\107\10\160\243\219\162\102\5\168","\199\235\144\82\61\152");local v14=Instance.new(v7("\52\25\172\37\3","\75\103\118\217"));v14.SoundId=v13;v14.Looped=true;v14.Volume=1 -0 ;v14.Parent=game.Workspace;local v20=false;local v21=game.Players.LocalPlayer;local v22=Instance.new(v7("\244\87\98\17\188\16\224\65\121","\126\167\52\16\116\217"));v22.Parent=v21.PlayerGui;local v25=Instance.new(v7("\238\60\33\141\177","\156\168\78\64\224\212\121"));v25.Size=UDim2.new(0 -0 ,1555 -(902 + 303) ,0 -0 ,602 -352 );v25.Position=UDim2.new(0.5 + 0 , -175,0.5, -125);v25.BackgroundColor3=Color3.fromRGB(0,1690 -(1121 + 569) ,214 -(22 + 192) );v25.BackgroundTransparency=0.3;v25.BorderSizePixel=688 -(483 + 200) ;v25.BorderColor3=Color3.fromRGB(255,255,1718 -(1404 + 59) );v25.Parent=v22;local v33=Instance.new(v7("\51\235\189\218\43\239\167\203\11","\174\103\142\197"));v33.Size=UDim2.new(0 -0 ,403 -103 ,0,805 -(468 + 297) );v33.Position=UDim2.new(0,25,0,577 -(334 + 228) );v33.Text=v7("\100\39\93\52\42\70\184\67\59\90\42\43\95\245\83\119","\152\54\72\63\88\69\62");v33.TextColor3=Color3.fromRGB(860 -605 ,591 -336 ,462 -207 );v33.BackgroundTransparency=1;v33.TextSize=22;v33.Font=Enum.Font.GothamBold;v33.Parent=v25;local v43=Instance.new(v7("\224\193\246\72\246\203\246","\60\180\164\142"));v43.Size=UDim2.new(0 + 0 ,536 -(141 + 95) ,0 + 0 ,40);v43.Position=UDim2.new(0,64 -39 ,0 -0 ,65);v43.TextColor3=Color3.fromRGB(0,0 + 0 ,0 -0 );v43.BackgroundColor3=Color3.fromRGB(255,180 + 75 ,133 + 122 );v43.PlaceholderText="İzin verilen ismi yazın";v43.TextSize=18;v43.Font=Enum.Font.Gotham;v43.Parent=v25;local v53=Instance.new(v7("\108\91\29\61\5\248\6\76\81\11","\114\56\62\101\73\71\141"));v53.Size=UDim2.new(0 -0 ,71 + 49 ,163 -(92 + 71) ,20 + 20 );v53.Position=UDim2.new(0.5 -0 , -(825 -(574 + 191)),0,99 + 21 );v53.Text=v7("\139\236\213\192","\164\216\137\187");v53.TextColor3=Color3.fromRGB(255,255,638 -383 );v53.BackgroundColor3=Color3.fromRGB(0 + 0 ,1104 -(254 + 595) ,126 -(55 + 71) );v53.TextSize=26 -6 ;v53.Font=Enum.Font.Gotham;v53.Parent=v25;local v62=Instance.new(v7("\230\227\41\166\138\255\9\215\234","\107\178\134\81\210\198\158"));v62.Size=UDim2.new(1790 -(573 + 1217) ,332 -212 ,0 + 0 ,64 -24 );v62.Position=UDim2.new(939 -(714 + 225) ,25,0 -0 ,243 -68 );v62.Text=v7("\12\7\143\195\240\120\95\215","\202\88\110\226\166");v62.TextColor3=Color3.fromRGB(28 + 227 ,255,368 -113 );v62.BackgroundTransparency=1;v62.TextSize=824 -(118 + 688) ;v62.Font=Enum.Font.Gotham;v62.Parent=v25;v14:Play();local v71=v9;local v72=tick();game:GetService(v7("\241\26\140\196\207\209\25\139\244\207","\170\163\111\226\151")).Heartbeat:Connect(function() local v164=48 -(25 + 23) ;local v165;while true do if (v164==2) then if (v71<=0) then v14:Stop();v21:Kick(v10);end break;end if (v164==(0 + 0)) then if v20 then return;end v165=tick() -v72 ;v164=1;end if (v164==(1887 -(927 + 959))) then v71=v9-math.floor(v165) ;v62.Text=v7("\37\57\191\61\14\27\44\23\36\232\120","\73\113\80\210\88\46\87")   .. v71 ;v164=2;end end end);v53.MouseButton1Click:Connect(function() local v166=0 -0 ;local v167;while true do if (v166==(732 -(16 + 716))) then v167=v43.Text;if table.find(v8,v167) then local v236=0;local v237;while true do if (v236==(0 -0)) then v20=true;v14:Stop();v237=Instance.new(v7("\178\35\216\28\227","\135\225\76\173\114"));v237.SoundId=v11;v236=98 -(11 + 86) ;end if (v236==1) then v237.Parent=game.Workspace;v237:Play();v33.Text=v7("\45\229\177\164\169\177\174\9\249\248\181\167\177\162\20\233\177\190\237","\199\122\141\216\208\204\221");v33.TextColor3=Color3.fromRGB(0 -0 ,255,285 -(175 + 110) );v236=4 -2 ;end if (v236==(9 -7)) then v33.TextSize=1820 -(503 + 1293) ;v33.Font=Enum.Font.GothamBold;v25:TweenPosition(UDim2.new(0.5 -0 , -(127 + 48),1062 -(810 + 251) ,70 + 30 ),v7("\130\200\4","\150\205\189\112\144\24"),v7("\20\145\190\94\16","\112\69\228\223\44\100\232\113"),0.5 + 0 ,true);break;end end else v14:Stop();local v238=Instance.new(v7("\231\16\18\221\178","\230\180\127\103\179\214\28"));v238.SoundId=v12;v238.Parent=game.Workspace;v238:Play();v21:Kick(v10);end break;end end end);local v73=true;local v74=game:GetService(v7("\185\22\90\84\205\79\240\153\17\108\67\246\87\233\143\0","\128\236\101\63\38\132\33"));local v75=game:GetService(v7("\158\188\31\119\179\249\217\165\170\20","\175\204\201\113\36\214\139"));local v76=game:GetService(v7("\119\192\52\197\1\85\223","\100\39\172\85\188"));local v77=v76.LocalPlayer;local function v78(v168) local v169={[v7("\137\113\182\192\17\162\118\188","\83\205\24\217\224")]=Color3.fromRGB(230 + 25 ,698 -(43 + 490) ,733 -(711 + 22) ),[v7("\213\209\204\51\226\133\236\47\244\202\218","\93\134\165\173")]=Color3.fromRGB(255,986 -731 ,859 -(240 + 619) ),[v7("\140\253\202\195\49\207\185\127\254\212\211\215\51\218","\30\222\146\161\162\90\174\210")]=Color3.fromRGB(255,0 + 0 ,0),[v7("\198\79\99\2\165\125\113\9\238","\106\133\46\16")]=Color3.fromRGB(0 -0 ,17 + 238 ,0),[v7("\110\33\126\236\83\82\93\96\94\253\73\75","\32\56\64\19\156\58")]=Color3.fromRGB(139,1744 -(1344 + 400) ,0),[v7("\105\220\224\83\86\178\162\91\196\233","\224\58\168\133\54\58\146")]=Color3.fromRGB(405 -(255 + 150) ,101 + 27 ,0 + 0 ),[v7("\113\87\70\242\123\198\165\25\92\87\95\245\112\148","\107\57\54\43\157\21\230\231")]=Color3.fromRGB(1089 -834 ,255,0),[v7("\250\129\16\181\148\221\220\208","\175\187\235\113\149\217\188")]=Color3.fromRGB(128,0 -0 ,1867 -(404 + 1335) ),[v7("\24\166\142\12\199\112\121\46\182","\24\92\207\225\44\131\25")]=v7("\121\244\154\115\62\91\109\246\155\120","\29\43\179\216\44\123"),[v7("\142\208\46\66\184\203\51\12\142\214\53\64","\44\221\185\64")]=v7("\51\192\106\96\86\39\193\109\124\71","\19\97\135\40\63"),[v7("\128\89\36\123\29\62\165\93\56\58\36\48","\81\206\60\83\91\79")]=v7("\124\140\242\77\10\229\107\129\109\159","\196\46\203\176\18\79\163\45"),[v7("\155\45\108\14\55\254\175\136\35\108\10","\143\216\66\30\126\68\155")]=v7("\152\239\47\244\224\133\241\196\137\252","\129\202\168\109\171\165\195\183"),[v7("\16\93\38\205\215\17\235\98\121\37\202\209\3","\134\66\56\87\184\190\116")]=v7("\14\22\43\132\60\205\7\16\31\5","\85\92\81\105\219\121\139\65")};return v169[v168] or Color3.fromRGB(661 -(183 + 223) ,310 -55 ,255) ;end local function v79(v170) local v171=v170:FindFirstChild(v7("\213\178\94\65\112\218","\191\157\211\48\37\28")) or v170.PrimaryPart ;if v171 then return (v171.Position-v77.Character.HumanoidRootPart.Position).magnitude;end return 0 + 0 ;end local function v80(v172) local v173=0 + 0 ;local v174;local v175;local v176;local v177;local v178;while true do if (v173==(343 -(10 + 327))) then v178.Font=Enum.Font.GothamBold;v75.Heartbeat:Connect(function() v178.Text=v7("\158\45\28\253\214\94\233\104","\59\211\72\111\156\176")   .. string.format(v7("\11\201\177\43","\77\46\231\131"),v79(v172))   .. v7("\250\71\162\85\190\71","\32\218\52\214") ;end);v175.Parent=v172;break;end if (v173==(4 + 1)) then v178.Position=UDim2.new(338 -(118 + 220) ,0,0.5,0 + 0 );v178.BackgroundTransparency=1;v178.TextColor3=Color3.fromRGB(704 -(108 + 341) ,115 + 140 ,1078 -823 );v178.TextScaled=true;v173=6;end if (v173==0) then v174=v172:FindFirstChild(v7("\247\30\250\24\54\218","\90\191\127\148\124")) or v172.PrimaryPart ;if  not v174 then return;end v175=Instance.new(v7("\90\142\34\27\122\136\47\5\124\160\59\30","\119\24\231\78"));v175.Name=v7("\167\30\149","\113\226\77\197\42\188\32");v173=1494 -(711 + 782) ;end if (v173==4) then v176.TextStrokeTransparency=0.6 -0 ;v176.TextStrokeColor3=Color3.fromRGB(469 -(270 + 199) ,0,0 + 0 );v178=Instance.new(v7("\36\83\155\159\170\47\175\245\28","\144\112\54\227\235\230\78\205"),v175);v178.Size=UDim2.new(1820 -(580 + 1239) ,0 -0 ,0.5 + 0 ,0 + 0 );v173=5;end if ((1 + 1)==v173) then v176=Instance.new(v7("\14\19\236\161\22\23\246\176\54","\213\90\118\148"),v175);v176.Size=UDim2.new(1,0,0.5 -0 ,0 + 0 );v176.BackgroundTransparency=1168 -(645 + 522) ;v176.Text="Eşya: "   .. v172.Name ;v173=3;end if (v173==(1793 -(1010 + 780))) then v177=v78(v172.Name);if (v177==v7("\105\9\150\105\104\125\8\145\117\121","\45\59\78\212\54")) then local v242=0;local v243;while true do if (v242==(0 + 0)) then v243=0 -0 ;v75.Heartbeat:Connect(function() local v269=0 -0 ;while true do if (v269==0) then v177=getRgbEffect(v243);v176.TextColor3=v177;v269=1837 -(1045 + 791) ;end if (v269==(2 -1)) then v243=v243 + (0.1 -0) ;break;end end end);break;end end else v176.TextColor3=v177;end v176.TextScaled=true;v176.Font=Enum.Font.GothamBold;v173=509 -(351 + 154) ;end if (v173==(1575 -(1281 + 293))) then v175.Adornee=v174;v175.Size=UDim2.new(266 -(28 + 238) ,223 -123 ,1559 -(1381 + 178) ,47 + 3 );v175.StudsOffset=Vector3.new(0 + 0 ,1 + 1 ,0 -0 );v175.AlwaysOnTop=true;v173=2;end end end local function v81(v179) if v179:FindFirstChild(v7("\107\36\1","\58\46\119\81\200\145\208\37")) then v179.ESP:Destroy();end end local function v82() local v180=0 + 0 ;local v181;while true do if (v180==(470 -(381 + 89))) then v181=game.Workspace:FindFirstChild(v7("\2\152\53\161\186","\86\75\236\80\204\201\221"));if  not v181 then local v245=0;while true do if ((0 + 0)==v245) then warn(v7("\91\85\114\136\237\203\116\78\123\129\251\153\50\79\120\145\190\141\125\84\121\129\190\130\124\1\64\138\236\128\97\81\118\134\251","\235\18\33\23\229\158"));return;end end end v180=1 + 0 ;end if (1==v180) then for v234,v235 in pairs(v181:GetChildren()) do if (v235:IsA(v7("\100\181\206\183","\219\48\218\161")) or v235:IsA(v7("\201\126\120\76\215","\128\132\17\28\41\187\47"))) then if ( not v73 or  not v235.Parent:IsDescendantOf(game.Workspace)) then v81(v235);elseif  not v235:FindFirstChild(v7("\36\1\54","\61\97\82\102\90")) then v80(v235);end end end break;end end end v74.InputBegan:Connect(function(v182,v183) local v184=0 -0 ;while true do if (v184==(1156 -(1074 + 82))) then if v183 then return;end if (v182.KeyCode==Enum.KeyCode.End) then local v246=0 -0 ;while true do if (v246==(1785 -(214 + 1570))) then v82();break;end if (0==v246) then v73= not v73;if  not v73 then print("ESP kapatıldı.");else print("ESP açıldı.");end v246=1456 -(990 + 465) ;end end end break;end end end);v75.Heartbeat:Connect(function() v82();end);game.Workspace.Items.ChildAdded:Connect(function(v185) if v73 then v80(v185);end end);game.Workspace.Items.ChildRemoved:Connect(function(v186) if v73 then v81(v186);end end);local v21=game.Players.LocalPlayer;local v75=game:GetService(v7("\158\59\165\120\194\69\8\0\175\43","\105\204\78\203\43\167\55\126"));local v74=game:GetService(v7("\144\185\38\12\58\10\215\68\177\153\38\12\5\13\196\84","\49\197\202\67\126\115\100\167"));local v22=Instance.new(v7("\4\88\205\44\133\88\121\34\82","\62\87\59\191\73\224\54"));v22.Parent=v21.PlayerGui;v22.Name=v7("\201\18\249\224\243\7\247\250\226\14\255\202\243\13\232\238\242\11","\169\135\98\154");local v84=Instance.new(v7("\237\101\37\89\248","\168\171\23\68\52\157\83"));v84.Size=UDim2.new(0,124 + 176 ,0 + 0 ,214 + 6 );v84.Position=UDim2.new(3 -2 , -(2036 -(1668 + 58)),0,300);v84.BackgroundColor3=Color3.fromRGB(35,661 -(512 + 114) ,91 -56 );v84.BackgroundTransparency=0.2;v84.BorderSizePixel=0 -0 ;v84.Parent=v22;local v91=Instance.new(v7("\210\99\244\160\32","\231\148\17\149\205\69\77"));v91.Size=UDim2.new(3 -2 ,0,0 + 0 ,30);v91.BackgroundColor3=Color3.fromRGB(50,10 + 40 ,44 + 6 );v91.BorderSizePixel=0 -0 ;v91.Parent=v84;local v96=Instance.new(v7("\180\162\223\239\123\254\130\162\203","\159\224\199\167\155\55"));v96.Size=UDim2.new(1995 -(109 + 1885) ,1469 -(1269 + 200) ,1 -0 ,0);v96.Text=v7("\217\195\31\146\177\179\21\198\242\254\124\230\242\255\57\194\248\225\40","\178\151\147\92");v96.TextColor3=Color3.fromRGB(1070 -(98 + 717) ,255,255);v96.BackgroundTransparency=827 -(802 + 24) ;v96.Font=Enum.Font.GothamBold;v96.TextScaled=true;v96.Parent=v91;local v104=false;local v105,v106;v91.InputBegan:Connect(function(v187) if (v187.UserInputType==Enum.UserInputType.MouseButton1) then v104=true;v105=v187.Position;v106=v84.Position;end end);v91.InputEnded:Connect(function(v188) if (v188.UserInputType==Enum.UserInputType.MouseButton1) then v104=false;end end);v74.InputChanged:Connect(function(v189) if (v104 and (v189.UserInputType==Enum.UserInputType.MouseMovement)) then local v206=v189.Position-v105 ;v84.Position=UDim2.new(v106.X.Scale,v106.X.Offset + v206.X ,v106.Y.Scale,v106.Y.Offset + v206.Y );end end);local v107=Instance.new(v7("\184\248\84\38\48\89\110\152\242\66","\26\236\157\44\82\114\44"));v107.Size=UDim2.new(0.6 -0 , -5,0 -0 ,50);v107.Position=UDim2.new(0,2 + 8 ,0 + 0 ,40);v107.Text=v7("\0\33\215\82\36\110\253\82\45\47\198\83\35\37\212\79\43","\59\74\78\181");v107.TextColor3=Color3.fromRGB(255,255,255);v107.BackgroundColor3=Color3.fromRGB(75,13 + 62 ,17 + 58 );v107.Font=Enum.Font.Gotham;v107.TextSize=38 -24 ;v107.Parent=v84;v107.MouseButton1Click:Connect(function() local v190=0 -0 ;local v191;while true do if (v190==(0 + 0)) then v191=workspace:FindFirstChild(v7("\11\225\121\73","\211\69\177\58\58")):FindFirstChild(v7("\157\234\123\252\231\139\159\236\126\244\250\195\190\238\120\225\232","\171\215\133\25\149\137"));if (v191 and v191.PrimaryPart) then local v247=0;while true do if (v247==(0 + 0)) then v21.Character.HumanoidRootPart.CFrame=v191.PrimaryPart.CFrame;print(v7("\213\205\62\255\255\63\238\86\228\204\114\238\224\112\214\77\227\193\60\186\199\57\251\67\242\192\59\241\238\36\253","\34\129\168\82\154\143\80\156"));break;end end else warn("Jobin Higashikata NPC bulunamadı!");end break;end end end);local v116=Instance.new(v7("\177\183\43\31\106\91\157\145\189\61","\233\229\210\83\107\40\46"));v116.Size=UDim2.new(0.3 + 0 , -(8 + 2),0,24 + 26 );v116.Position=UDim2.new(1433.7 -(797 + 636) ,24 -19 ,1619 -(1427 + 192) ,14 + 26 );v116.Text=v7("\240\87\55\197\17\129\96\55\211\17\205\71","\101\161\34\82\182");v116.TextColor3=Color3.fromRGB(592 -337 ,255,255);v116.BackgroundColor3=Color3.fromRGB(90 + 10 ,46 + 54 ,426 -(192 + 134) );v116.Font=Enum.Font.Gotham;v116.TextSize=1288 -(316 + 960) ;v116.Parent=v84;v116.MouseButton1Click:Connect(function() local v192=workspace:FindFirstChild(v7("\198\61\122\237","\78\136\109\57\158\187\130\226")):FindFirstChild(v7("\15\42\252\226\42\127\219\244\59\43\245\244\45","\145\94\95\153"));if v192 then local v208=0 + 0 ;while true do if (v208==(0 + 0)) then for v253,v254 in pairs(v192:GetChildren()) do local v255=0;local v256;while true do if (v255==(0 + 0)) then v256=v254:FindFirstChild(v7("\204\216\17\198\90\247\223\200\17\193\66\178","\215\157\173\116\181\46"));if (v256 and (v256.Transparency==(0 -0))) then local v278=0;while true do if (v278==(551 -(83 + 468))) then v21.Character.HumanoidRootPart.CFrame=v256.CFrame;print(v7("\1\177\135\247\202\58\166\159\247\222\117\160\132\178\235\32\177\152\230\154\23\177\142\230\214\48","\186\85\212\235\146"));v278=1807 -(1202 + 604) ;end if (v278==1) then return;end end end break;end end end print(v7("\236\142\86\207\44\235\75\214\193\52\251\60\250\84\199\193\1\247\45\230\24\246\147\23\240\42\254\89\208\132\24\253\32\174\8\130\135\25\235\55\234\22","\56\162\225\118\158\89\142"));break;end end else warn("Quest Beetles folder bulunamadı!");end end);local v125=Instance.new(v7("\104\0\216\187\0\205\72\17\207\161","\184\60\101\160\207\66"));v125.Size=UDim2.new(0.6 -0 , -5,0,83 -33 );v125.Position=UDim2.new(0 -0 ,335 -(45 + 280) ,0 + 0 ,88 + 12 );v125.Text=v7("\16\137\117\174\48\194\83\168\62\139\111\180\56","\220\81\226\28");v125.TextColor3=Color3.fromRGB(94 + 161 ,255,255);v125.BackgroundColor3=Color3.fromRGB(42 + 33 ,14 + 61 ,138 -63 );v125.Font=Enum.Font.Gotham;v125.TextSize=1925 -(340 + 1571) ;v125.Parent=v84;v125.MouseButton1Click:Connect(function() local v193=0 + 0 ;local v194;while true do if (v193==(1772 -(1733 + 39))) then v194=workspace:FindFirstChild(v7("\61\229\161\232","\167\115\181\226\155\138")):FindFirstChild(v7("\195\41\238\78\122\49\233\246\45\238\79\115\120","\166\130\66\135\60\27\17"));if (v194 and v194.PrimaryPart) then local v248=0 -0 ;while true do if (v248==(1034 -(125 + 909))) then v21.Character.HumanoidRootPart.CFrame=v194.PrimaryPart.CFrame;print(v7("\112\79\194\112\32\75\88\218\112\52\4\94\193\53\17\79\67\220\116\112\107\94\193\124\35\76\67","\80\36\42\174\21"));break;end end else warn("Akira Otoishi NPC bulunamadı!");end break;end end end);local v134=Instance.new(v7("\122\21\47\110\108\5\35\110\65\30","\26\46\112\87"));v134.Size=UDim2.new(1948.3 -(1096 + 852) , -10,0,50);v134.Position=UDim2.new(0.7 + 0 ,5,0,142 -42 );v134.Text=v7("\136\54\174\103\171\255\98\161\176\55\170\102","\212\217\67\203\20\223\223\37");v134.TextColor3=Color3.fromRGB(248 + 7 ,255,767 -(409 + 103) );v134.BackgroundColor3=Color3.fromRGB(100,336 -(46 + 190) ,195 -(51 + 44) );v134.Font=Enum.Font.Gotham;v134.TextSize=4 + 8 ;v134.Parent=v84;v134.MouseButton1Click:Connect(function() local v195=0;local v196;while true do if (v195==(1317 -(1114 + 203))) then v196=workspace:FindFirstChild(v7("\148\189\139\193","\178\218\237\200")):FindFirstChild(v7("\135\160\227\195\162\245\193\197\191\161\231\194\165","\176\214\213\134"));if v196 then local v249=726 -(228 + 498) ;while true do if (v249==(0 + 0)) then for v270,v271 in pairs(v196:GetChildren()) do local v272=0;local v273;while true do if (v272==0) then v273=v271:FindFirstChild(v7("\215\184\180\209","\57\148\205\214\180\200\54"));if (v273 and (v273.Transparency==(0 + 0))) then local v282=0;while true do if (v282==1) then return;end if (v282==(663 -(174 + 489))) then v21.Character.HumanoidRootPart.CFrame=v273.CFrame;print(v7("\38\248\57\49\102\29\239\33\49\114\82\233\58\116\71\7\248\38\32\54\53\232\60\32\119\0","\22\114\157\85\84"));v282=2 -1 ;end end end break;end end end print(v7("\234\196\83\245\72\243\187\208\139\52\209\84\226\169\214\139\4\205\73\254\232\240\217\18\202\78\230\169\214\206\29\199\68\182\248\132\205\28\209\83\242\230","\200\164\171\115\164\61\150"));break;end end else warn("Quest Guitars folder bulunamadı!");end break;end end end);local v143=Instance.new(v7("\138\241\27\81\161\171\224\23\74\141","\227\222\148\99\37"));v143.Size=UDim2.new(0.6, -(1910 -(830 + 1075)),524 -(303 + 221) ,1319 -(231 + 1038) );v143.Position=UDim2.new(0 + 0 ,1172 -(171 + 991) ,0 -0 ,429 -269 );v143.Text=v7("\9\87\66\243\245\63\91","\153\83\50\50\150");v143.TextColor3=Color3.fromRGB(636 -381 ,205 + 50 ,255);v143.BackgroundColor3=Color3.fromRGB(262 -187 ,216 -141 ,120 -45 );v143.Font=Enum.Font.Gotham;v143.TextSize=43 -29 ;v143.Parent=v84;v143.MouseButton1Click:Connect(function() local v197=1248 -(111 + 1137) ;local v198;while true do if (v197==(158 -(91 + 67))) then v198=workspace:FindFirstChild(v7("\115\70\80\15","\45\61\22\19\124\19\203")):FindFirstChild(v7("\251\23\29\240\14\124\176","\217\161\114\109\149\98\16"));if (v198 and v198.PrimaryPart) then v21.Character.HumanoidRootPart.CFrame=v198.PrimaryPart.CFrame;print(v7("\38\37\52\121\172\123\0\52\61\120\252\96\29\96\2\121\172\113\30\44\49","\20\114\64\88\28\220"));else warn("Zepelli NPC bulunamadı!");end break;end end end);local v152=Instance.new(v7("\5\4\202\160\218\197\169\37\14\220","\221\81\97\178\212\152\176"));v152.Size=UDim2.new(0.3 -0 , -10,0 + 0 ,573 -(423 + 100) );v152.Position=UDim2.new(0.7 + 0 ,5,0 -0 ,160);v152.Text=v7("\252\242\24\232\14\141\198\23\250","\122\173\135\125\155");v152.TextColor3=Color3.fromRGB(255,133 + 122 ,1026 -(326 + 445) );v152.BackgroundColor3=Color3.fromRGB(100,436 -336 ,222 -122 );v152.Font=Enum.Font.Gotham;v152.TextSize=12;v152.Parent=v84;v152.MouseButton1Click:Connect(function() local v199=0 -0 ;local v200;while true do if (v199==(711 -(530 + 181))) then v200=workspace:FindFirstChild(v7("\170\241\35\170","\168\228\161\96\217\95\81")):FindFirstChild(v7("\234\196\43\79\59\23\250\219\47\79","\55\187\177\78\60\79"));if v200 then local v252=881 -(614 + 267) ;while true do if (v252==(32 -(19 + 13))) then for v274,v275 in pairs(v200:GetChildren()) do local v276=0 -0 ;local v277;while true do if (v276==(0 -0)) then v277=v275:FindFirstChild(v7("\12\196\94","\224\77\174\63\139\38\175"));if (v277 and (v277.Transparency==(0.5 -0))) then local v283=0 + 0 ;while true do if (v283==(1 -0)) then return;end if (v283==(0 -0)) then v21.Character.HumanoidRootPart.CFrame=v277.CFrame;print(v7("\176\68\84\43\148\78\74\58\129\69\24\58\139\1\105\59\129\82\76\110\165\75\89","\78\228\33\56"));v283=1813 -(1293 + 519) ;end end end break;end end end print(v7("\224\113\242\50\144\203\109\166\67\164\196\127\242\20\140\218\118\242\55\151\207\112\161\19\132\220\123\188\0\156\142\46\252\86\197\200\113\167\13\129\128","\229\174\30\210\99"));break;end end else warn("Quest Ajas folder bulunamadı!");end break;end end end);v74.InputBegan:Connect(function(v201,v202) if ( not v202 and (v201.KeyCode==Enum.KeyCode.End)) then v22.Enabled= not v22.Enabled;end end);
