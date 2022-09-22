-- Event by KurriGloop
function onCreate()
	
	makeLuaSprite('bar1', 'bar', -300, 720);
	setObjectCamera('bar1','hud')
	setProperty('bar1.antialiasing', false);
	addLuaSprite('bar1', false);

	makeLuaSprite('bar2', 'bar', -300, -720);
	setObjectCamera('bar2','hud')
	setProperty('bar2.antialiasing', false);
	addLuaSprite('bar2', false);
end

function onEvent(name, value1, value2)
	if name == 'Cinematic Bars HUD' then
		value1 = 720 - value1 * 36
		doTweenY('BottomBarTween','bar1',value1,value2,'sineOut')
		doTweenY('TopBarTween','bar2',- value1,value2,'sineOut')
	end
end