def swap_name(full_name)
  name = full_name.split
  "#{name[-1]}, #{name[0]}"
end

# LS One liner method

def swap_name2(name)
  name.split.reverse.join(', ')
end

p swap_name2('Joe Roberts') == 'Roberts, Joe'
