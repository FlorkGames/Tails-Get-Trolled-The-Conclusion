local value2 = 0.1

function onUpdatePost()
if curBeat < 1 then
	if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
		setPropertyFromGroup('playerStrums',0,'downScroll',false)
		setPropertyFromGroup('playerStrums',1,'downScroll',false)
		setPropertyFromGroup('playerStrums',2,'downScroll',false)
		setPropertyFromGroup('playerStrums',3,'downScroll',false)

		setPropertyFromGroup('opponentStrums',0,'downScroll',true)
		setPropertyFromGroup('opponentStrums',1,'downScroll',true)
		setPropertyFromGroup('opponentStrums',2,'downScroll',true)
		setPropertyFromGroup('opponentStrums',3,'downScroll',true)
	else
		setPropertyFromGroup('playerStrums',0,'downScroll',true)
		setPropertyFromGroup('playerStrums',1,'downScroll',true)
		setPropertyFromGroup('playerStrums',2,'downScroll',true)
		setPropertyFromGroup('playerStrums',3,'downScroll',true)

		setPropertyFromGroup('opponentStrums',0,'downScroll',false)
		setPropertyFromGroup('opponentStrums',1,'downScroll',false)
		setPropertyFromGroup('opponentStrums',2,'downScroll',false)
		setPropertyFromGroup('opponentStrums',3,'downScroll',false)
	end

	noteTweenX('bf', 4, defaultOpponentStrumX0, value2, linear)
	noteTweenX('bf1', 5, defaultOpponentStrumX0+110, value2, linear)
	noteTweenX('bf2', 6, defaultOpponentStrumX0+110+110, value2, linear)
	noteTweenX('bf3', 7, defaultOpponentStrumX0+110+110+110, value2, linear)
	noteTweenX('dad4', 0, defaultPlayerStrumX0, value2, linear)
	noteTweenX('dad5', 1, defaultPlayerStrumX0+110, value2, linear)
	noteTweenX('dad6', 2, defaultPlayerStrumX0+110+110, value2, linear)
	noteTweenX('dad7', 3, defaultPlayerStrumX0+110+110+110, value2, linear)
	if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
		noteTweenY('dad8', 0, defaultPlayerStrumY0+520, value2, linear)
		noteTweenY('dad9', 1, defaultPlayerStrumY0+520, value2, linear)
		noteTweenY('dad10', 2, defaultPlayerStrumY0+520, value2, linear)
		noteTweenY('dad11', 3, defaultPlayerStrumY0+520, value2, linear)
	end
	if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
		noteTweenY('dad8', 0, defaultPlayerStrumY0-520, value2, linear)
		noteTweenY('dad9', 1, defaultPlayerStrumY0-520, value2, linear)
		noteTweenY('dad10', 2, defaultPlayerStrumY0-520, value2, linear)
		noteTweenY('dad11', 3, defaultPlayerStrumY0-520, value2, linear)
	end
end
end