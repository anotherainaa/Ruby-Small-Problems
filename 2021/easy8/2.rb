
def ask_for(thing)
  puts "Enter a #{thing}:"
  print ">"
  gets.chomp
end

loop do 
  noun = ask_for("noun")
  verb = ask_for("verb")
  adjective = ask_for("adjective")
  adverb = ask_for("adverb")

  puts "Do you #{noun} your #{adjective} #{noun} #{adverb}? That's hilarious!"
  # break
end
