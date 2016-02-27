trap('INT') { exit }

print 'Enter some text: '
@text = gets.chomp

if @text.size == 0
  abort('ERROR: Please enter some text')
else
  @text = @text.chars
end

print 'Enter line amount (-1 for infinite): '
begin
  @lines = Integer(gets)
rescue ArgumentError
  abort('ERROR: Enter a valid line amount')
end

def puts_rotation
  puts @text.rotate!.join
end

if @lines < -1
  abort('ERROR: Invalid line amount, should be -1 or > 0')
elsif @lines == -1
  puts @text.join
  loop { puts_rotation }
else
  puts @text.join
  @lines.times { puts_rotation }
end
