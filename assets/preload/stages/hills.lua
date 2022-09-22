
function onCreate()
	makeLuaSprite('sky', 'hills/sky', -323.333333333333, -120);
	setLuaSpriteScrollFactor('sky', 0.25, 0.55);
	scaleObject('sky', 1.2, 1.2);
	setProperty('sky.antialiasing', true);
	addLuaSprite('sky', false);

	makeLuaSprite('clouds', 'hills/clouds', -320.333333333333, -90);
	setLuaSpriteScrollFactor('clouds', 0.25, 0.45);
	scaleObject('clouds', 1.3, 1.3);
	setProperty('clouds.antialiasing', true);
	addLuaSprite('clouds', false);

	makeLuaSprite('thunderA', 'hills/thunderA', -333.333333333333, -116.666666666667);
	setLuaSpriteScrollFactor('thunderA', 0.25, 0.45);
	scaleObject('thunderA', 1.3, 1.3);
	setProperty('thunderA.antialiasing', true);
	setProperty('thunderA.alpha', 0);
	addLuaSprite('thunderA', false);


	makeLuaSprite('thunderB', 'hills/thunderB', -333.333333333333, -116.666666666667);
	setLuaSpriteScrollFactor('thunderB', 0.25, 0.45);
	scaleObject('thunderB', 1.3, 1.3);
	setProperty('thunderB.antialiasing', true);
	setProperty('thunderB.alpha', 0);
	addLuaSprite('thunderB', false);

	makeLuaSprite('thunderC', 'hills/thunderC', -333.333333333333, -116.666666666667);
	setLuaSpriteScrollFactor('thunderC', 0.25, 0.45);
	scaleObject('thunderC', 1.3, 1.3);
	setProperty('thunderC.antialiasing', true);
	setProperty('thunderC.alpha', 0);
	addLuaSprite('thunderC', false);

	makeLuaSprite('hillfour', 'hills/hillfour', -403.333333333333, -116.666666666667);
	setLuaSpriteScrollFactor('hillfour', 0.65, 0.7);
	scaleObject('hillfour', 1.3, 1.3);
	setProperty('hillfour.antialiasing', true);
	addLuaSprite('hillfour', false);

	makeLuaSprite('hillthree', 'hills/hillthree', -20, -29.9999999999999);
	setLuaSpriteScrollFactor('hillthree', 0.75, 0.8);
	scaleObject('hillthree', 1.1, 1.1);
	setProperty('hillthree.antialiasing', true);
	addLuaSprite('hillthree', false);

	makeLuaSprite('hilltwo', 'hills/hilltwo', -583.333333333333, -89.9999999999998);
	setLuaSpriteScrollFactor('hilltwo', 0.85, 0.9);
	scaleObject('hilltwo', 1.2, 1.2);
	setProperty('hilltwo.antialiasing', false);
	addLuaSprite('hilltwo', false);

	makeLuaSprite('hillone', 'hills/hillone', -426.666666666666, -200);
	setLuaSpriteScrollFactor('hillone', 1, 1);
	scaleObject('hillone', 1.4, 1.4);
	setProperty('hillone.antialiasing', false);
	addLuaSprite('hillone', false);
end
local s = 3;
local a = 0;
function onStepHit()
	a = math.random(0,11);
end

function onUpdate()
	s = a
	if s == 6 then
		setProperty('thunderA.alpha', 100);
		doTweenAlpha('tA','thunderA',0,0.05,'linear')
    end
    if s == 11 then
		setProperty('thunderB.alpha', 100);
		doTweenAlpha('tB','thunderB',0,0.05,'linear')
    end
    if s == 1 then
		setProperty('thunderC.alpha', 100);
		doTweenAlpha('tC','thunderC',0,0.05,'linear')
    end

end