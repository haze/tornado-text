import "io" for Stdin
var shift = Fn.new{|str| str[1...str.count] + str[0]}
var prompt = Fn.new{ |prompt|
  System.write(prompt)
  return Stdin.readLine()
}
var text = prompt.call("Text?: ")
var num = Num.fromString(prompt.call("Num?: "))
for (i in 0..num ) {
  System.print(text)
  text = shift.call(text)
}
