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

case @lines
when -1
  puts @text.join
  loop { puts_rotation }
when 0
  abort 'ERROR: Line amount should be more than 0'
else
  puts @text.join
  @lines.times { puts_rotation }
end
