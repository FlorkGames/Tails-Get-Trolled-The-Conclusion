--Modchart Functions---------------------------------------------------------------------------------------------
function onCreate()
	bump = false
	float = false
	yr = false
	yx = false
end
function onBeatHit()
	--BUMP-------------------------------------------------------------------------------------------------------
	if bump == true then
		ang = 145
		if curBeat % 2 == 2 then
			ang = 145
		end
		if curBeat % 2 == 1 then
			ang = -145
		end
	--Player
	setPropertyFromGroup('playerStrums',0,'x',getPropertyFromGroup('playerStrums',0,'x') - 40)
	setPropertyFromGroup('playerStrums',1,'x',getPropertyFromGroup('playerStrums',1,'x') - 20)
	setPropertyFromGroup('playerStrums',2,'x',getPropertyFromGroup('playerStrums',2,'x') + 20)
	setPropertyFromGroup('playerStrums',3,'x',getPropertyFromGroup('playerStrums',3,'x') + 40)

	setPropertyFromGroup('playerStrums',0,'angle',getPropertyFromGroup('playerStrums',0,'angle') + ang)
	setPropertyFromGroup('playerStrums',1,'angle',getPropertyFromGroup('playerStrums',1,'angle') + ang)
	setPropertyFromGroup('playerStrums',2,'angle',getPropertyFromGroup('playerStrums',2,'angle') + ang)
	setPropertyFromGroup('playerStrums',3,'angle',getPropertyFromGroup('playerStrums',3,'angle') + ang)
	--angle
	noteTweenAngle('bfAa',4,0,0.2,'sineinout')
	noteTweenAngle('bfBa',5,0,0.2,'sineinout')
	noteTweenAngle('bfCa',6,0,0.2,'sineinout')
	noteTweenAngle('bfDa',7,0,0.2,'sineinout')
	--Xpos
	noteTweenX('bfAx',4,getPropertyFromGroup('playerStrums',0,'x') + 40,0.1,'sineinout')
	noteTweenX('bfBx',5,getPropertyFromGroup('playerStrums',1,'x') + 20,0.1,'sineinout')
	noteTweenX('bfCx',6,getPropertyFromGroup('playerStrums',2,'x') - 20,0.1,'sineinout')
	noteTweenX('bfDx',7,getPropertyFromGroup('playerStrums',3,'x') - 40,0.1,'sineinout')

	--Opponent
	setPropertyFromGroup('opponentStrums',0,'x',getPropertyFromGroup('opponentStrums',0,'x') - 40)
	setPropertyFromGroup('opponentStrums',1,'x',getPropertyFromGroup('opponentStrums',1,'x') - 20)
	setPropertyFromGroup('opponentStrums',2,'x',getPropertyFromGroup('opponentStrums',2,'x') + 20)
	setPropertyFromGroup('opponentStrums',3,'x',getPropertyFromGroup('opponentStrums',3,'x') + 40)

	setPropertyFromGroup('opponentStrums',0,'angle',getPropertyFromGroup('opponentStrums',0,'angle') + ang)
	setPropertyFromGroup('opponentStrums',1,'angle',getPropertyFromGroup('opponentStrums',1,'angle') + ang)
	setPropertyFromGroup('opponentStrums',2,'angle',getPropertyFromGroup('opponentStrums',2,'angle') + ang)
	setPropertyFromGroup('opponentStrums',3,'angle',getPropertyFromGroup('opponentStrums',3,'angle') + ang)
	--angle
	noteTweenAngle('dadAa',0,0,0.2,'sineinout')
	noteTweenAngle('dadBa',1,0,0.2,'sineinout')
	noteTweenAngle('dadCa',2,0,0.2,'sineinout')
	noteTweenAngle('dadDa',3,0,0.2,'sineinout')
	--Xpos
	noteTweenX('dadAx',0,getPropertyFromGroup('opponentStrums',0,'x') + 40,0.1,'sineinout')
	noteTweenX('dadBx',1,getPropertyFromGroup('opponentStrums',1,'x') + 20,0.1,'sineinout')
	noteTweenX('dadCx',2,getPropertyFromGroup('opponentStrums',2,'x') - 20,0.1,'sineinout')
	noteTweenX('dadDx',3,getPropertyFromGroup('opponentStrums',3,'x') - 40,0.1,'sineinout')
end
end
--FLOAT----------------------------------------------------------------------------------------------------------
function onUpdate(elapsed)
	if float == true then
		songPos = getSongPosition()
		local currentBeat = (songPos/5000)*(curBpm/60)
		if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
			noteTweenY('defaultOpponentStrumY0', 0, defaultPlayerStrumY0+520 - 50*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
			noteTweenY('defaultOpponentStrumY1', 1, defaultPlayerStrumY0+520 - 50*math.sin((currentBeat+1*0.25)*math.pi), 0.5)
			noteTweenY('defaultOpponentStrumY2', 2, defaultPlayerStrumY0+520 - 50*math.sin((currentBeat+2*0.25)*math.pi), 0.5)
			noteTweenY('defaultOpponentStrumY3', 3, defaultPlayerStrumY0+520 - 50*math.sin((currentBeat+3*0.25)*math.pi), 0.5)
		end
		if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
			noteTweenY('defaultOpponentStrumY0', 0, defaultPlayerStrumY0-520 - 50*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
			noteTweenY('defaultOpponentStrumY1', 1, defaultPlayerStrumY0-520 - 50*math.sin((currentBeat+1*0.25)*math.pi), 0.5)
			noteTweenY('defaultOpponentStrumY2', 2, defaultPlayerStrumY0-520 - 50*math.sin((currentBeat+2*0.25)*math.pi), 0.5)
			noteTweenY('defaultOpponentStrumY3', 3, defaultPlayerStrumY0-520 - 50*math.sin((currentBeat+3*0.25)*math.pi), 0.5)
		end
		noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 - 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
		noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY1 - 50*math.sin((currentBeat+5*0.25)*math.pi), 0.5)
		noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY2 - 50*math.sin((currentBeat+6*0.25)*math.pi), 0.5)
		noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY3 - 50*math.sin((currentBeat+7*0.25)*math.pi), 0.5)
	end
	--x and y resets
	if yr == true then
		noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 , 0.5)
		noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY1 , 0.5)
		noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY2 , 0.5)
		noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY3 , 0.5)
		if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
			noteTweenY('defaultOpponentStrumY0', 0, defaultPlayerStrumY0+520, 0.5)
			noteTweenY('defaultOpponentStrumY1', 1, defaultPlayerStrumY0+520, 0.5)
			noteTweenY('defaultOpponentStrumY2', 2, defaultPlayerStrumY0+520, 0.5)
			noteTweenY('defaultOpponentStrumY3', 3, defaultPlayerStrumY0+520, 0.5)
		end
		if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
			noteTweenY('defaultOpponentStrumY0', 0, defaultPlayerStrumY0-520, 0.5)
			noteTweenY('defaultOpponentStrumY1', 1, defaultPlayerStrumY0-520, 0.5)
			noteTweenY('defaultOpponentStrumY2', 2, defaultPlayerStrumY0-520, 0.5)
			noteTweenY('defaultOpponentStrumY3', 3, defaultPlayerStrumY0-520, 0.5)
		end
		yr = false
	end
	if xr == true then
		noteTweenX('defaultPlayerStrumX0', 4, defaultOpponentStrumX0, 0.5)
		noteTweenX('defaultPlayerStrumX1', 5, defaultOpponentStrumX0+110, 0.5)
		noteTweenX('defaultPlayerStrumX2', 6, defaultOpponentStrumX0+110+110, 0.5)
		noteTweenX('defaultPLayertStrumX3', 7, defaultOpponentStrumX0+110+110+110, 0.5)
		noteTweenX('defaultOpponentStrumX0', 0, defaultPlayerStrumX0, 0.5)
		noteTweenX('defaultOpponentStrumX1', 1, defaultPlayerStrumX0+110, 0.5)
		noteTweenX('defaultOpponentStrumX2', 2, defaultPlayerStrumX0+110+110, 0.5)
		noteTweenX('defaultOpponentStrumX3', 3, defaultPlayerStrumX0+110+110+110, 0.5)
	end
		xr = false
end
-----------------------------------------------------------------------------------------------------------------

--Triggers--

function onStepHit()
	if curStep == 2127 then
		float = true
	end
	if curStep == 574 then
		bump = true
	end
	if curStep == 590 then
		bump = false
	end

	if curStep == 638 then
		bump = true
	end
	if curStep == 654 then
		bump = false
	end

	if curStep == 1340 then 
		bump = true
	end
	if curStep == 1358 then
		bump = false
	end

	if curStep == 1407 then
		bump = true
	end
	if curStep == 1421 then
		bump = false
	end

	if curStep == 2175 then 
		bump = true
	end
	if curStep == 2189 then
		bump = false
	end
	if curStep == 2239 then
		bump = true
	end
	if curStep == 2254 then
		bump = false
	end
end