require 'pry'

# Note: I couldn't really find any smart way to do the algorith and
# just stuck to basics as much as I could.

def diamond(digit)
  middle_index = digit / 2
  counter = 0
  space = " "
  star = "*"
  star_count = 1

  loop do
    break if counter == digit

    if counter == middle_index
      star_count = digit
      puts (star * star_count)
    elsif counter < middle_index
      space_count = (middle_index - counter).abs
      puts (space * space_count) + (star * star_count)
      star_count += 2
    elsif counter > middle_index
      star_count -= 2
      space_count = (middle_index - counter).abs
      puts (space * space_count) + (star * star_count)
    end

    counter += 1
  end
end

diamond(15)
