stateNoGo = {
	isRedOn    = true,    isRedBlinking = false,
	isYellowOn = false, isYellowBlinking = false,
	isGreenOn  = false,  isGreenBlinking = false,
}

stateSteady = {
	isRedOn    = true,
	isYellowOn = true,
	isGreenOn  = false,
}

stateGo = {
	isRedOn    = false,
	isYellowOn = false,
	isGreenOn  = true,
}

stateWarning = {
	isRedOn    = false,
	isYellowOn = true,
	isGreenOn  = false,
}

states = {
	stateNoGo,
	stateSteady,
	stateGo,
	stateWarning,
}

trafficLight = {
	redLight = script.Parent.redFront,
	yellowLight = script.Parent.yellowFront,
	greenLight = script.Parent.greenFront,
}

function trafficLight:changeState(state)
	if state.isRedOn then
		self.redLight.Transparency = 0
	else
		self.redLight.Transparency = 1
	end
	
	if state.isYellowOn then
		self.yellowLight.Transparency = 0
	else
		self.yellowLight.Transparency = 1
	end
	
	if state.isGreenOn then
		self.greenLight.Transparency = 0
	else
		self.greenLight.Transparency = 1
	end
end

while true do
	for stateCount = 1, #states do
		wait(1)
		trafficLight:changeState(states[stateCount])
	end
end
