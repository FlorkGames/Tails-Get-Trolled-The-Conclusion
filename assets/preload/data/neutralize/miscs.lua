
function onCreatePost()
    cameraFlash('game', '000000', 1000,true)
    -- body
end
function onUpdatePost()
    if curStep > 1 then
        cameraFlash('game', '000000', 0,true)
    end
    if mustHitSection == false then
        doTweenZoom('camTween', 'camGame', getProperty('defaultCamZoom') + 0.4, 0.8, 'circOut')
    end
    if mustHitSection == true then
        doTweenZoom('camTween', 'camGame', getProperty('defaultCamZoom'), 0.8, 'circOut')
    end
    if curStep == 2064 then
        noteTweenAlpha('dad0',0,0,0.5,'sineinout')
        noteTweenAlpha('dad1',1,0,0.5,'sineinout')
        noteTweenAlpha('dad2',2,0,0.5,'sineinout')
        noteTweenAlpha('dad3',3,0,0.5,'sineinout')
        noteTweenAlpha('bf4',4,0,0.5,'sineinout')
       noteTweenAlpha('bf5',5,0,0.5,'sineinout')
       noteTweenAlpha('bf6',6,0,0.5,'sineinout')
       noteTweenAlpha('bf7',7,0,0.5,'sineinout')
       setProperty('iconP1.alpha',0)
       setProperty('iconP2.alpha',0)
       setProperty('healthBar.alpha',0)
       setProperty('scoreTxt.alpha',0)
       setProperty('timeTxt.alpha',0)
       setProperty('timeBar.alpha',0)
   end
   if curStep == 2127 then
        cameraFlash('game', 'ffffff', 0.8,true)
        noteTweenAlpha('dad0',0,100,0.5,'sineinout')
        noteTweenAlpha('dad1',1,100,0.5,'sineinout')
        noteTweenAlpha('dad2',2,100,0.5,'sineinout')
        noteTweenAlpha('dad3',3,100,0.5,'sineinout')
        noteTweenAlpha('bf4',4,100,0.5,'sineinout')
       noteTweenAlpha('bf5',5,100,0.5,'sineinout')
       noteTweenAlpha('bf6',6,100,0.5,'sineinout')
       noteTweenAlpha('bf7',7,100,0.5,'sineinout')
       setProperty('iconP1.alpha',100)
       setProperty('iconP2.alpha',100)
       setProperty('healthBar.alpha',100)
       setProperty('scoreTxt.alpha',100)
       setProperty('timeTxt.alpha',100)
       setProperty('timeBar.alpha',100)
   end
    if curStep == 1712 then
        triggerEvent('Camera Follow Pos',520,165)
    end

end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.4 then 
        setProperty('health', health- 0.06);
    end
end