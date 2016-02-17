shift := method(text, 
	return text exclusiveSlice(1) .. text at(0) asCharacter 
)

prompt := method(

	text := File clone standardInput readLine("Enter some text: ") .. " "
	if(text at(text size) != " ", text .. " ")
	(text size) .. "\n" print

	if(text size > 1,	
	num := File clone standardInput readLine("Enter line amount: ") asNumber
	for(v, 0, num, (
		(text .. "\n") print
		text = shift(text)
	))
		, 
		("Please enter some text next time... \n") print
		prompt
	)
)
main := method(
	prompt
)

main

