
local stickThere = false
function onUpdatePost()
     setHealthBarColors('FFFFFF', '00C3FF')
	setProperty('iconP2.x', 200)
    setProperty('iconP1.flipX', true)
    setProperty('healthBar.flipX', true)

		if stickThere == false then
			if getProperty('health') > 0 then
				setProperty('iconP1.x', 220+getProperty('health')*296+getProperty('healthBar.x')-343.5)
			end

			if getProperty('health') <= 0 then
				setProperty('iconP1.x', 220+getProperty('healthBar.x')-343.5)
			end
		end

		if stickThere == true then
		   setProperty('iconP1.x', 830+getProperty('healthBar.x')-343.5)
		end
if getProperty('health') > 0.4 then
    setProperty('health', getProperty('health')-0.002)
end
--setProperty('iconP1.y', getProperty('healthBar.y') -75)
end
function goodNoteHit(id, direction, noteType, isSustainNote)
        health = getProperty('health')
        setProperty('health', health+ 0.05);
    end

function opponentNoteHit(id, direction, noteType, isSustainNote)
		health = getProperty('health')
		if getProperty('health') > 0.4 then
			setProperty('health', health- 0.03);
    end
end
