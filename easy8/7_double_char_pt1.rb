def repeater(string)
  repeated_string = ''

  string.chars do |char|
    repeated_string << char * 2
  end
  repeated_string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
