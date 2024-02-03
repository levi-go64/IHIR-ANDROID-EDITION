function onCreatePost()
    makeLuaText('title', songName, 500, (screenWidth/2)-250, 275)
    addLuaText('title')
    setTextSize('title', 65)
    setProperty('title.alpha', 0)
    setObjectCamera('title', 'other')
    makeLuaText('subtitle', 'aaaaaaa', 500, (screenWidth/2)-250, 325)
    addLuaText('subtitle')
    setTextSize('subtitle', 70)
    setProperty('subtitle.alpha', 0)
    setObjectCamera('subtitle', 'other')
end

function onEvent(eventName, value1, value2)
    if eventName == 'Credits' then
        setTextString('subtitle', value1)
        doTweenAlpha('titleAlp', 'title', 1, value2)
        doTweenAlpha('subtitleAlp', 'subtitle', 1, value2)
        runTimer('creditFO', 1, 1)
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'creditFO' then
        doTweenAlpha('titleAlp', 'title', 0, 0.5)
        doTweenAlpha('subtitleAlp', 'subtitle', 0, 0.5)
    end    
end