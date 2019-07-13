def switch_lights(number)
  lights = {}
  (1..number).each { |n| lights[n] = 'on'}

  2.upto(number) do |i|
    lights.each do |number, status|
      if number % i  == 0
        lights[number] = toggle(status)
      end
    end
  end
  lights.select { |_, value| value == "on" }.keys
end

def toggle(status)
  status == 'on' ? 'off' : 'on'
end


p switch_lights(5) == [1, 4]
p switch_lights(10) == [1, 4, 9]
p switch_lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144,
                          169, 196, 225, 256, 289, 324, 361, 400, 441, 484,
                          529, 576, 625, 676, 729, 784, 841, 900, 961]
