function onEvent(name, value1, value2)
	
	ChartingMode = getPropertyFromClass('PlayState', 'chartingMode')
	
	
	davalue = tonumber(value1);
	
	if davalue == 0 then
		davalue = 0.9
	else
		davalue = davalue
	end
	
	
	
	
	if name == 'Zoom' then
		
		setProperty('defaultCamZoom', davalue)
	end
end