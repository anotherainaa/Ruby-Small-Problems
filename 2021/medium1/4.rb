=begin
Input: Integer n. which is number of lights 
Output: Array with integers representing lights are left on

if n = 5
  - round 1: every light toggled
  - round 2: lights divisible by 2 toggled
  - round 3: lights divisible by 3 toggled
  - round 4: lights divisible by 4 toggled
  - round 5: lights divisible by 5 toggled

Approach

- on_lights = []
- for number 1 upto n, for each number 
  - toggle numbers divisble by n
   * If toggle on, turned on put the numbers into array? 
   * If toggle off, take out the numbers from array
- return array  
- 
=end

def thousand_lights(n)
  on_lights = []
  1.upto(n) do |number1|
    1.upto(n) do |number2|
      if number2 % number1 == 0
        if !on_lights.include?(number2)
          on_lights << number2
        else
          on_lights.delete(number2)
        end
      end
    end
  end
  on_lights
end

p thousand_lights(1000)

initialize the lights hash
