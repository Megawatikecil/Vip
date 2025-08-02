LUA = 'ZombieState'
UPDATE = 'Risk Banned,be Careful'
GLabel = 'Zombie State'
GProcess = 'games.my.zombie.shooter'
GVersion = '(Auto-Update)'
xbit = 64 
LibResult = 1
xlib = 'libil2cpp.so'
xSVx = 15.01
xREV = 1
xCNE = 0
xFNE = 0
xSSE = 0
XbitX = 2
printx = '---------------------------------------------------------------'
print(printx)
xTAGx = 'Bochil Suka Janda'
print(xTAGx)
xMOTOx = 'Che4ters Without Skill'
print(xMOTOx)
xLINKx = 'xXx.com'
print(xLINKx)
print(LUA)
print(GLabel..'  '..GVersion)
print(printx)
--███████████████████████
--███████████████████████
--███████████████████████
gg.require('101.1')
::RESTARTSCRIPT::
I=nil I={}
A=nil A={} for i = 1,100 do A[i]={} end
apex=1
gg.setVisible(false)
v=gg.getTargetInfo()
    if v==nil then
        print("×× ERROR ××\n×× INVALID PROCESS SELECTED / OR NO ROOT ACCESS") 
        gg.setVisible(true) os.exit()
        return
    end 
is64 = v.x64 
------------------------------------------------------------------------------
AUalert="\nThis Script Auto-Updates\nPlease Wait...\n" 
-- [START] / [NO] 
------------------------------------------------------------------------------

OFF="× " ON="√ "
WS=OFF DE=OFF
UT=OFF SW=OFF 
ER=OFF KE=OFF 
UC=OFF LV=OFF
HL=OFF UN=OFF
PT=OFF RS=OFF
WP=OFF RR=OFF
AM=OFF

function menu()
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.toast(xTAGx)  
mc=gg.multiChoice({
    RS.."Add Resource(Money+Gold)",
	WS.."Increase Damage",
	AM.."Increase Ammo",
    HL.."Increase HP",
	SW.."Spawn All Zombie", 
	KE.."Auto Kill Zombie",  
	DE.."Freeze Zombie",
	UT.."Unlock All Talents", 
    LV.."Hero Max lvl",
    UN.."Hero+Evo Unlocked",
    PT.."Hero Fragment",
    WP.."Weapon Unlocked",
    RR.."Gacha Rarity Rate",
    --UC.."Skip Power Required",
	"[ EXIT ]"},nil, (os.date([[╭ ─┉──┉──┉──┉───┉──¡! • !¡──┉───┉──┉──┉──┉─ ╮
   ZOMBIE STATE
   ══════════════════════════════════════
   ─┉─Che4ting Is An Art In The Game─┉─
   ══════════════════════════════════════
  Today : %A, %d %B %Y
  Time : %H : %M : %S
╰ ─┉──┉──┉──┉───┉──¡! • !¡──┉───┉──┉──┉──┉─ ╯]])))
	
	if mc==nil then cancel() return end
	if mc[1] then resource() end
	if mc[2] then ammo() end
	if mc[3] then weapon() end 
	if mc[4] then health() end 
    if mc[5] then spawn() end 
	if mc[6] then kill() end 
	if mc[7] then enemy() end 
	if mc[8] then talents() end 
    if mc[8] then level() end 
    if mc[10] then unlock() end 
    if mc[11] then part() end 
    if mc[12] then armory() end
    if mc[13] then gacha() end
	--if mc[8] then power() end 
	
		
xhaX={
    RS.."Add Resource(Money+Gold)",
	WS.."Increase Damage",
	AM.."Increase Ammo",
    HL.."Increase HP",
	SW.."Spawn All Zombie", 
	KE.."Auto Kill Zombie",  
	DE.."Freeze Zombie",
	UT.."Unlock All Talents", 
    LV.."Hero Max lvl",
    UN.."Hero+Evo Unlocked",
    PT.."Hero Fragment",
    WP.."Weapon Unlocked",
    RR.."Gacha Rarity Rate",
	--UC.."Skip Power Required",
	}
xhaX=table.concat(xhaX, "\n")
xhaX=tostring(xhaX) 

	if mc[14] then exit() return end 

gg.toast("[√] Complete") 
gg.alert(GLabel.."\n\n"..xhaX,"OK",nil,xTAGx)  

end
--███████████████████████

-- public class WeaponConfiguration : WeaponConfigurationModifier, IShotConfiguration, IActionHandsConfiguration // TypeDefIndex:
-- public int get_clipSize() { }
A[1].class="WeaponConfiguration" 
A[1].method="get_clipSize"

-- public static class GameDamageExtensions //
A[2].method="CalcPlayerDamageModifier"

function weapon()
if A[2].error==1 then error() return end 
 
   if is64 then    
        x2={'52848000h','72A91E80h','1E270000h','D65F03C0h'}
    else
        x2={'E3020400h','E34408F4h','EE070A90h','EEB00A67h','E12FFF1Eh'}
    end
x=x2 H4CK(2,2,WS) 
WS=ONOFF(WS)  
end 

function ammo()
if A[1].errror==1 then error() return end
if is64 then
  x1={'128BDBE0h','72A000E0h','D65F03C0h'} 
else
  x1={'E30A0120h','E3400007h','E12FFF1Eh'}
end
x=x1 H4CK(1,1,AM) 
 AM=ONOFF(AM) 
end 

--███████████████████████

-- All Class 
-- public bool IsTalentPurchased(
A[3].method="IsTalentPurchased" 

function talents()
if A[3].errror==1 then error() return end
x=1 H4CK(3,3,UT) UT=ONOFF(UT) 
end 

--███████████████████████

-- public class BotMindSystem : IExecuteSystem, ISystem // TypeDefIndex:
-- private bool CheckIgnore(GameEntity activeCharacterEntity, GameEntity botEntity) { }
A[4].method="CheckIgnore"

function enemy()
if A[4].error==1 then error() return end
x=1 H4CK(4,4,DE) DE=ONOFF(DE) 
end 
        
--███████████████████████

-- public class CalculatedData : ICalculatedData // TypeDefIndex:
-- public float GetEnemyHpCoef(bool isBoss) { }
A[5].class="CalculatedData" 
A[5].method="GetEnemyHpCoef"

function kill()
if A[5].error==1 then error() return end 

    if is64 then x={'128D2FE0h','72B96300h','1E270000h','D65F03C0h'} -- (-10m float) 
    else x={'E3090680h','E34C0B18h','EE070A90h','EEB00A67h','E12FFF1Eh'}
    end 
H4CK(5,5,KE) KE=ONOFF(KE) 
end 

--███████████████████████

-- public class Wave : IWaveInfo // TypeDefIndex:
-- private bool AllMobsInWaveWereSpawnedAndDead() { }
A[6].method="AllMobsInWaveWereSpawnedAndDead"

-- private bool NeedToStart() { }
A[7].method="NeedToStart"

function spawn()
if A[6].error==1 or A[7].error==1 then error() return end
x=1 H4CK(6,7,SW) SW=ONOFF(SW) 
end 

--███████████████████████
A[8].class="HeroStateProxy" 
A[8].method="get_levelIndex" 
A[9].class="HeroStateProxy"
A[9].method="get_evolutionIndex"
A[10].class="HeroEvolutionViewModel"
A[10].method="get_isEvolutionUnlocked"
A[11].class="HeroStateProxy"
A[11].method="get_isUnlocked"
A[12].class="HeroStateProxy"
A[12].method="get_partsAmount"

function level()
if A[8].error==1 then error() return end
if is64 then x={'528008A0h','72A00000h','D65F03C0h'} 
else x={'E3000045h','E3400000h','E12FFF1Eh'} end H4CK(8,8,LV) LV=ONOFF(LV) 

end
--███████████████████████
function unlock()
if A[10].error==1 or A[11].error==1 then error() return end
x=1 H4CK(10,11,UN) UN=ONOFF(UN) 
end
--███████████████████████
function part()
if A[12].error==1 then error() return end
if is64 then x={'F2803E80h','F2A00000h','F2C00000h','F2E00000h','D65F03C0h'} else x={'E30001F4h','E3400000h','E3001000h','E3401000h','EC410B10h','E12FFF1Eh'} end H4CK(12,12,PT) PT=ONOFF(PT) 
gg.alert("Only to increase rank up level, Not to recruit heroes")


end 
--███████████████████████
A[13].class="RunDataManager"
A[13].method="get_health"
A[14].class="RunDataManager"
A[14].method="get_maxHealth"

function health()
if A[13].error==1 or A[14].error==1 then error() return end
if is64 then x={'128D2FE0h','72A96300h','1E270000h','D65F03C0h'} else x={'E3090680h','E3440B18h','EE070A90h','EEB00A67h','E12FFF1Eh'} end H4CK(13,14,HL) HL=ONOFF(HL) 
end 

--███████████████████████
A[15].class="WeaponSkinStateProxy" 
A[15].method="get_isUnlocked" 
A[16].class="PlayerLevelStateProxy"
A[16].method="get_levelIndex"
A[17].class="PlayerLevelStateProxy"
A[17].method="get_levelExp"
A[18].class="AfkRewardRules"
A[18].method="GetTimePassed"

function armory()
if A[15].error==1 then error() return end
x=1 H4CK(15,15,WP) WP=ONOFF(WP) 
end 
--███████████████████████
function resource()
if A[16].error==1 or A[18].error==1 then error() return end
if is64 then 
x3={'52800040h','72A00000h','D65F03C0h'}--3int
x4={'52836000h','72A016E0h','D65F03C0h'}--12jt int
x5={'F2800000h','F2B2BEA0h','F2DE5CE0h','F2E007E0h','D65F03C0h'}--18trilion long
else
x3={'E3000002h','E3400000h','E12FFF1Eh'}
x4={'E3010B00h','E34000B7h','E12FFF1Eh'}
x5={'E3000000h','E34905F5h','E30F12E7h','E340103Fh','EC410B10h','E12FFF1Eh'} 
end 
x=x3 H4CK(16,16,RS) 
x=x4 H4CK(17,17,RS) 
x=x5 H4CK(18,18,RS) 
RS=ONOFF(RS)
gg.alert[[Claim AFK/Patrol Rewards,And See Gold, Money, Stamina will increase

Note: Claim enough & turn off the feature when you have enough resources]]
end 
--███████████████████████
A[19].class="PityCounterStateProxy" 
A[19].method="get_countLeft" 

function gacha()
if A[19].error==1 then error() return end
x=1 H4CK(19,19,RR) RR=ONOFF(RR) 
end 

--███████████████████████
-- public class RegionsRules : IInternalRegionsRules, IRegionsRules, IReadOnlyRegionsRules, IStartupRules // TypeDefIndex:
-- private bool IsLockedByPowerDelta(RegionRef regionRef, int powerDelta) { }
--A[15].method="IsLockedByPowerDelta"

function power()
if A[15].error==1 then error() return end
x=0 H4CK(15,15,UC) UC=ONOFF(UC) 
end 

--███████████████████████



--███████████████████████
--███████████████████████
--███████████████████████
    if v.processName~=GProcess then
        print("This Script is For:\n    "..GLabel.."\n    "..GProcess.."\nYou Selected:\n    "..v.label.."\n    "..v.processName)
        gg.setVisible (true) os.exit()
        return
    end 
------------------------------------------------------------------------------
    if is64 then bitx=64 xBITx="[x64]" else bitx=32 xBITx="[x32]" end 
------------------------------------------------------------------------------
    if XbitX==1 then 
        if bitx~=xbit then 
            print("This Script is For "..xbit.."bit Process\nYour Process is "..bitx.."bit")
            gg.setVisible(true) os.exit()
            return
        end 
    end 
------------------------------------------------------------------------------
-- APEX[GG]v2
--███████████████████████
    if LibResult==1 then 
    xAPEXx={} xXx=0
    xLibRes=0 
    libx=gg.getRangesList()
        if #(libx)==0 then 
        print("×× LIB ERROR #01 ××\nNo Libs Found\nTry a Different Virtual Environment \nor Try a Better Game Installation Method\nor Download Game From 'apkcombo.com' ")
        gg.setVisible(true) 
        os.exit() 
        end
    libx=gg.getRangesList(xlib)
        if #(libx)==0 then  
        print("×× No "..xlib.." Found")
        xLibRes=2 
        goto APEX_SPLIT 
        end
    xlibn=0 
        for i, v in ipairs(libx) do 
            if libx[i].state=="Xa" then 
            xXx=xXx+1 
            xAPEXx[xXx]=libx[i].start 
            XLIBSIZE=libx[i]["end"]-libx[i].start 
            xLibRes=1
            end
        end 
        if xLibRes==0 then 
        print("×× LIB ERROR #03 ××\nNo "..xlib.." Found in Xa\nTry a Different Virtual Environment \nor Try a Better Game Installation Method\nor Download Game From 'apkcombo.com' ")
        gg.setVisible(true) 
        os.exit()     
        end    
                  
        ::APEX_SPLIT::     
        if xLibRes==2 then
        splitapk=0
        libx=gg.getRangesList()
            for i, v in ipairs(libx) do 
                if libx[i].state=="Xa" and string.match(libx[i].name,"split_config") then
                splitapk=1
                end
            end 
            if splitapk==1 then 
            xsapk={} xsapkx=0
                for i, v in ipairs(libx) do
                    if libx[i].state=="Xa" then
                    xsapkx=xsapkx+1
                    xsapk[xsapkx]=libx[i]["end"]-libx[i].start
                    end
                end 
                if xsapkx~=0 then                 
                APEXQ=math.max(table.unpack(xsapk))
                    for i, v in ipairs(libx) do              
                        if libx[i].state=="Xa" and libx[i]["end"]-libx[i].start==APEXQ then              
                        xXx=xXx+1             
                       xAPEXx[xXx]=libx[i].start
                       XLIBSIZE=libx[i]["end"]-libx[i].start 
                        print("√√ Split Apk Lib Found\n√√ "..libx[i].name) 
                        xLibRes=1                       
                        end
                    end
                end 
            end 
         
             if splitapk==0 and xLibRes~=1 then
             print("×× No split_config Lib Found")  
             xc=1 xt={} 
             libx=gg.getRangesList()
                 for i, v in ipairs(libx) do
                     if libx[i].state=="Xa" then 
                     xt[xc]=tonumber(libx[i]["end"]-libx[i].start) 
                     xc=xc+1
                     end
                 end
                 if xc==1 then
                     print("×× No libs in Xa Region\n-- Your Device is Broken --\nGoodbye")
                     gg.setVisible(true)  os.exit() 
                     return
                 end 
             APEXQ=math.max(table.unpack(xt))
                 for i, v in ipairs(libx) do              
                     if libx[i].state=="Xa" and libx[i]["end"]-libx[i].start==APEXQ then        
                     xXx=xXx+1       
                     xAPEXx[xXx]=libx[i].start
                     XLIBSIZE=libx[i]["end"]-libx[i].start 
                     print("√√ math.max Xa Lib Found\n√√ "..libx[i].name) 
                     xLibRes=1   
                     end 
                 end
            end                        

            if xLibRes~=1 then
            print("×× Correct Lib Not Found ××\n×× Direct/Split Config/Xa Max ××")
            gg.setVisible(true) 
            os.exit()
             return
            end 
        end 
        
    end 
--███████████████████████
-- OO=ONOFF(OO) 
function ONOFF(OO) 
    if OO==OFF then OO=ON else OO=OFF end
return OO
end 
------------------------------------------------------------------------------  
function H4CK(v1,v2,v3)
    for i = A[v1].start, A[v2].finish do o=I[i] 
        if v3==OFF then arm() else revert() end
    end
end 
------------------------------------------------------------------------------  
function ERR(E1,E2)
E=0
    for i = E1,E2 do if A[i].error==1 then E=1 end end    
end 
------------------------------------------------------------------------------  
function arm()
o=tonumber(o) 
    for XxX=1,#(xAPEXx) do
        xdump=nil xdump={} 
        if type(x)~="table" then 
        xdump[1]={} xdump[2]={}
        xdump[1].address=xAPEXx[XxX] + o
        xdump[1].flags=4
            if x==0 then xdump[1].value=xfalse end
            if x==1 then xdump[1].value=xtrue end
            if x~=0 and x~=1 then xdump[1].value=x end 
        xdump[2].address=xAPEXx[XxX]+(o+4)
        xdump[2].flags=4
        xdump[2].value=xEND 
        else
        cc=0
            for c=1,#(x) do
            xdump[c]={} 
            xdump[c].address=xAPEXx[XxX]+o+cc
            xdump[c].flags=4   
            xdump[c].value=tostring(x[c])
            cc=cc+4
            end         
        end 
    gg.setValues(xdump) 
    end 
end 
------------------------------------------------------------------------------  
function revert()
    for XxX=1,#(xAPEXx) do 
    REVERT=nil REVERT={} xRx=nil xRx=1 
        for i, v in ipairs(ORIG) do
            if tonumber(xAPEXx[XxX]+o)==ORIG[i].address then
                if type(x)~="table" then
                    REVERT[xRx]={}
                    REVERT[xRx].address=xAPEXx[XxX]+o
                    REVERT[xRx].flags=4
                    REVERT[xRx].value=ORIG[i].value
                    xRx=xRx+1
                    REVERT[xRx]={}
                    REVERT[xRx].address=xAPEXx[XxX]+o+4
                    REVERT[xRx].flags=4
                    REVERT[xRx].value=ORIG[i+1].value 
                    xRx=xRx+1 
                else              
                offcnt=0 tnuc=0
                    for dfg=1,#(x) do 
                    REVERT[xRx]={}
                    REVERT[xRx].address=xAPEXx[XxX]+o+offcnt 
                    REVERT[xRx].flags=4
                    REVERT[xRx].value=ORIG[i+tnuc].value
                    offcnt=offcnt+4 tnuc=tnuc+1 xRx=xRx+1
                    end 
                end 
            gg.setValues(REVERT) 
            break
            end
            -- xRx+1 
        end 
    end 
end 
--███████████████████████
if is64 then
xtrue="h200080D2" -- MOV X0, #0x1
xfalse="h000080D2" -- MOV X0, #0x0 
xEND="hC0035FD6" -- RET
else 
xtrue="h0100A0E3" -- MOVW R0, #1 
xfalse="h0000A0E3" -- MOVW R0, #0 
xEND="h1EFF2FE1" -- BX LR 
end 
------------------------------------------------------------------------------  

-- APEX[GG]v2
-- APEX[GG]v2
function clear()
gg.getResults(gg.getResultsCount())
gg.clearResults()
end
------------------------------------------------------------------------------  
function search()
gg.getResults(gg.getResultsCount())
gg.clearResults()
gg.searchNumber(x,t) 
end 
------------------------------------------------------------------------------  
function refine()
gg.refineNumber(x,t) 
end 
------------------------------------------------------------------------------  
function check()
E=nil E=gg.getResultsCount()
end 
------------------------------------------------------------------------------  
function offset()
o=tonumber(o) addoff=nil 
addoff=gg.getResults(gg.getResultsCount())
    for i, v in ipairs(addoff) do
        addoff[i].address=addoff[i].address+o
        addoff[i].flags=t
    end
gg.loadResults(addoff) 
end 
--███████████████████████

-- APEX[GG]v2
------------------------------------------------------------------------------  
function cancel()
gg.toast("CANCELLED")
end 
------------------------------------------------------------------------------  
function wait()
gg.toast("Please Wait..") 
end 
------------------------------------------------------------------------------  
function error()
gg.toast("× ERROR ×")
gg.sleep(1000)
end 
------------------------------------------------------------------------------  

------------------------------------------------------------------------------  
function exit()
gg.getListItems()
gg.clearList()
gg.getResults(gg.getResultsCount())
gg.clearResults()
gg.toast("[ EXIT ]")  
    if xhaX~=nil then 
        print(printx) 
        print(xhaX) 
        print(printx)  
    end 
gg.setVisible(true) 
os.exit()
return
end 

--███████████████████████

NEEDSEARCH=1 
SFILE=nil 
SFILE=io.open(gg.EXT_FILES_DIR.."/"..GProcess..".lua")
    if SFILE==nil then
        STARTALERT=xTAGx.."\n"..GLabel.."\n"..v.versionName.."  "..GVersion.."\n"..LUA.."\n"..UPDATE.."\n"..AUalert 
    else 
        SFILE=nil 
        SFILE=io.open(gg.EXT_FILES_DIR.."/"..GProcess..".lua"):read("*all")
        pcall(load(SFILE))
            if XsvX==nil or XsvX~=xSVx then 
                gg.alert(GLabel.."\n"..v.versionName.."  "..GVersion.."\n"..LUA.."\n"..UPDATE.."\n\n* New Script Version Detected.\n* Saved File Will Be Deleted.\n","OK",nil,xTAGx)
                os.remove(gg.EXT_FILES_DIR.."/"..GProcess..".lua") 
                NEEDSEARCH=1 
                goto RESTARTSCRIPT 
                return 
            end 
            if tostring(v.versionName)~=tostring(SFversion) then 
                gg.alert(GLabel.."\n"..v.versionName.."  "..GVersion.."\n"..LUA.."\n"..UPDATE.."\n\n* New Game Version Detected.\n* Saved File Will Be Deleted.\n","OK",nil,xTAGx)
                os.remove(gg.EXT_FILES_DIR.."/"..GProcess..".lua") 
                NEEDSEARCH=1 
                goto RESTARTSCRIPT 
            else
                STARTALERT=gg.alert(xTAGx.."\n\n"..GLabel.."\n"..v.versionName.."  "..GVersion.."\n"..LUA.."\n"..UPDATE.."\n\n√ Saved Offsets File Found.\n ","[ START ]","DELETE","-- EXIT --")
                if STARTALERT==3 then exit() return end 
                if STARTALERT==1 then NEEDSEARCH=0 end
                if STARTALERT==2 then 
                   os.remove(gg.EXT_FILES_DIR.."/"..GProcess..".lua") 
                   NEEDSEARCH=1 
                   goto RESTARTSCRIPT 
                   return
               end                 
            end
    end 
                
if NEEDSEARCH==1 then 
::XGETREADYX::
plwt=gg.alert(xTAGx.."\n"..GLabel.."\n"..v.versionName.."  "..GVersion.."\n"..LUA.."\n"..UPDATE.."\n"..AUalert,"[ START ]","[ NO ]","[ -- EXIT -- ]") 
if plwt==3 then exit() return end 
if plwt==2 then
    gg.setVisible(false) 
    while true do
        if gg.isVisible() then gg.setVisible(false) break end
    end
    goto XGETREADYX
    return
end 

local xtx=0
local gvr={"Ca","Cd","Cb","A","O"}
local sr={gg.REGION_C_ALLOC, gg.REGION_C_DATA, gg.REGION_C_BSS, gg.REGION_ANONYMOUS, gg.REGION_OTHER}
gg.clearResults() gg.toast("Please Wait..") 
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_ANONYMOUS | gg.REGION_OTHER)
gg.searchNumber(":get_localToWorldMatrix_Injected",1)
gg.refineNumber(":g",1)
gg.searchPointer(0)
    if gg.getResultsCount()~=0 then 
        rp=gg.getResults(1)
        rt={} rt[1]={}
        rt[1].address=rp[1].value
        rt[1].flags=1
        rt=gg.getValues(rt) 
        rt=gg.getValuesRange(rt) 
        rt=tostring(rt[1]) 
        rp=gg.getValuesRange(rp) 
        rp=tostring(rp[1])  
            if rp==rt then
                for i = 1,5 do
                    if rp==tostring(gvr[i]) then
                        r1=sr[i] r2=sr[i]
                        xtx=2
                        break
                    end
                end
            else
                for i = 1,5 do
                    if rp==tostring(gvr[i]) then r2=sr[i] xtx=1 break end
                end
                for i = 1,5 do
                    if rt==tostring(gvr[i]) then r1=sr[i] xtx=xtx+1 break end
                end                 
            end 
            if xtx~=2 then gg.setRanges(gg.REGION_OTHER | gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS) end 
    end 
sr=nil gvr=nil rp=nil rt=nil  plwt=nil 

--███████████████████████

SFT={} 
SFT[1]="SFversion = '"..v.versionName.."'" 
SFT[2]="XsvX = "..xSVx 
SFT[3]="A={}" 
SFT[4]="I={}" 
SFTA={}
SFTI={} 

if is64 then off1=-16 typ=32 else off1=-8 typ=4 end 

ATOTAL=0
for i = 1,100 do
    if A[i].method==nil then break end
    ATOTAL=ATOTAL+1
end 

ASTART=1 AEND=0 ATABT=ATOTAL+1 ATAB=1
S=0 
    while ATAB<=ATOTAL do 
    ::AUTOSTART::
    gg.setVisible(false)
        if ATAB>ATOTAL then break goto FINISHED end 
    gg.toast("Please Wait.. [ "..ATABT-ATAB.." ]") 
    A[ATAB].error=1 
    ANAME=nil ANAME={}
    if A[ATAB].name~=nil then 
        for i = 1,#(tostring(A[ATAB].name)) do
            ANAME[i]=string.byte(A[ATAB].name,i) 
        end 
    else
        A[ATAB].name=0
    end 
    ACLASS=nil ACLASS={}
    if A[ATAB].class~=nil then 
        for i = 1,#(tostring(A[ATAB].class))+1 do
            if i == #(tostring(A[ATAB].class))+1 then 
                ACLASS[i]=0 
            else
                ACLASS[i]=string.byte(A[ATAB].class,i) 
            end 
        end 
    else
        A[ATAB].class=0
    end 
    
                ASTART=AEND+1
                if xtx==2 then gg.setRanges(r1) end 
                clear() t=1 
                gg.searchNumber(":"..tostring(A[ATAB].method),1) 
                if xtx==2 then gg.setRanges(r2) end 
                xm=gg.getResults(2) gg.getResults(gg.getResultsCount())
                check() 
                    if E==0 then ATAB=ATAB+1 
                        if ATAB>ATOTAL then break return end
                    goto AUTOSTART return 
                    end 
                x=xm[1].value..";"..xm[2].value.."::2" refine()
                x=xm[1].value refine() 
                o=-1 offset() x=0 refine() oo=#(tostring(A[ATAB].method))
                o=oo+1 offset() refine() o=-oo offset()
                check() 
                    if E==0 then ATAB=ATAB+1 
                        if ATAB>ATOTAL then break return end
                    goto AUTOSTART return 
                    end 
                gg.searchPointer(0) xcount=gg.getResultsCount()
                xpoint=gg.getResults(xcount,nil, nil, nil, nil, nil, nil, nil,gg.POINTER_READ_ONLY)
                    if #(xpoint)==0 then ATAB=ATAB+1 
                        if ATAB>ATOTAL then break return end
                    goto AUTOSTART return 
                    end 
                clear() 
                    for xp=1,#(xpoint) do
                    xpoint[xp].address=xpoint[xp].address+off1
                    xpoint[xp].flags=typ
                    end
                gg.loadResults(xpoint) 
                xoff=gg.getResults(#(xpoint),nil, nil, nil, nil, nil, nil, nil, gg.POINTER_EXECUTABLE | gg.POINTER_READ_ONLY)
                    if #(xoff)==0 then ATAB=ATAB+1 
                        if ATAB>ATOTAL then break return end
                    goto AUTOSTART return 
                    end 
                    xfin=1
                    while xfin<=#(xoff) do 
                    ::XFIN:: 
                        if xfin>#(xoff) then ATAB=ATAB+1
                            if ATAB>ATOTAL then break return end 
                        goto AUTOSTART return
                        end 
                        if is64 then 
                            xadd=tonumber(xoff[xfin].value)  
                        else 
                            xadd=string.format("%X",tonumber(xoff[xfin].value)) 
                            xadd=string.sub(tostring(xadd), -8,-1)
                            xadd=tonumber("0x"..xadd) 
                        end     
                    gval1=nil gval1={} gval1[1]={}
                        if is64 then gvo=24 gvo1=16 gvo2=24 else gvo=12 gvo1=8 gvo2=12 end 
                    gval1[1].address=xoff[xfin].address+gvo
                    gval1[1].flags=typ
                    gval1=gg.getValues(gval1) 
                        if is64 then 
                            gval=tonumber(gval1[1].value)  
                        else 
                            gval=string.format("%X",tonumber(gval1[1].value)) 
                            gval=string.sub(tostring(gval), -8,-1)
                            gval=tonumber("0x"..gval) 
                        end     
                    gval2=nil gval2={} gval2[1]={} gval2[2]={}
                    gval2[1].address=gval+gvo1
                    gval2[1].flags=typ
                    gval2[2].address=gval+gvo2
                    gval2[2].flags=typ 
                    gval2=gg.getValues(gval2)
                        if is64 then 
                            gval21=tonumber(gval2[1].value)  
                            gval22=tonumber(gval2[2].value) 
                        else 
                            gval21=string.format("%X",tonumber(gval2[1].value)) 
                            gval21=string.sub(tostring(gval21), -8,-1)
                            gval21=tonumber("0x"..gval21) 
                            gval22=string.format("%X",tonumber(gval2[2].value)) 
                            gval22=string.sub(tostring(gval22), -8,-1)
                            gval22=tonumber("0x"..gval22) 
                        end    
                         xrefine=0
                         if A[ATAB].class~=0 then 
                            for xyz=1,#(ACLASS) do
                                gvalc={} gvalc[1]={} 
                                gvalc[1].address=gval21+(xyz-1)
                                gvalc[1].flags=1                        
                                gvalc=gg.getValues(gvalc) 
                                if gvalc[1].value~=ACLASS[xyz] then xrefine=1 break xfin=xfin+1 goto XFIN end
                            end
                        end 
                        
                        if A[ATAB].name~=0 then 
                            for xyz=1,#(ANAME) do
                                gvalc={} gvalc[1]={} 
                                gvalc[1].address=gval22+(xyz-1)
                                gvalc[1].flags=1                        
                                gvalc=gg.getValues(gvalc) 
                                    if gvalc[1].value~=ANAME[xyz] then xrefine=1 break xfin=xfin+1 goto XFIN end                                
                            end
                        end 
                         
                         if xrefine==0 then 
                        A[ATAB].start=ASTART AEND=AEND+1
                        A[ATAB].finish=AEND 
                        A[ATAB].error=0 
                        clear() I[AEND]=xadd-xAPEXx[xXx]
                        SFTA[ATAB]="A["..ATAB.."]={}\nA["..ATAB.."].name = "..A[ATAB].name.."\nA["..ATAB.."].class = "..A[ATAB].class.."\nA["..ATAB.."].method = "..A[ATAB].method.."\nA["..ATAB.."].start = "..ASTART.."\nA["..ATAB.."].finish = "..AEND.."\nA["..ATAB.."].error = 0"
                        SFTI[AEND]="I["..AEND.."] = "..xadd-xAPEXx[xXx]      
                        end 
                    xfin=xfin+1             
                    end -- xfin 
    ATAB=ATAB+1
    end -- ATAB 
    
---------------------------------------------------

::FINISHED:: 
 xBAR=0
    for i = 1, ATOTAL do 
        if A[i].error~=0 then xBAR=xBAR+1 end
    end
    if xBAR>=ATOTAL  then 
        gg.toast("×× FAILURE ××") gg.alert("× AUTO UPDATE FAILURE ×","EXIT",nil, xTAGx)  
        exit() 
        return
    end 
    if xBAR>=1 then gg.toast("× ERROR ×") gg.alert("× Auto Update Errors\nSome/All H4CKs May Not Work","OK",nil, xTAGx) 
    end
    
    if xBAR==0 then 
    sft=table.concat(SFT,"\n") 
    sfta=table.concat(SFTA,"\n")
    sfti=table.concat(SFTI,"\n") 
    wstring=tostring(sft.."\n"..sfta.."\n"..sfti) 
    local sfsuccess=gg.alert("Auto-Update Success\nCurrent Offsets Will be Saved to File and Automatically Loaded Every Script Execution. Script will Verify Game Version and Automatically Update File as Needed.\n\nSaved File?\n███████████████████████████████████\n","√ SAVE","× SAVE","KISSMYASS")
        if sfsuccess==1 then 
            io.open(gg.EXT_FILES_DIR.."/"..GProcess..".lua","w"):write(wstring):close()
            print("Offsets Written to File:\n"..gg.EXT_FILES_DIR.."/"..GProcess..".lua") 
        end 
end   
end   -- if NEEDSEARCH 

--███████████████████████
--███████████████████████
if xREV==1 then
xRx=1 ORIG={} xREV={} 
    for XxX=1,#(xAPEXx) do   
        for i, v in ipairs(I) do 
        thiscunt=0
            for dfg=1,7 do 
            ORIG[xRx]={}
            ORIG[xRx].address=xAPEXx[XxX]+tonumber(I[i])+thiscunt 
            ORIG[xRx].flags=4 
            xRx=xRx+1 
            thiscunt=thiscunt+4 
            end 
        end    
    end 
ORIG=gg.getValues(ORIG) 
end 
--███████████████████████
--███████████████████████
while true do
    if gg.isVisible() or apex==1 then
        gg.setVisible(false) apex=0 
        menu() 
    end 
end 
