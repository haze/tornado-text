shift := method(text, 
	return text exclusiveSlice(1) .. text at(0) asCharacter 
)


text := File clone standardInput readLine("Enter some text: ") .. " "
num := File clone standardInput readLine("Enter line amount: ") asNumber
for(v, 0, num, (
	(text .. "\n") print
	text = shift(text)
))
