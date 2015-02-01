# Level 1: Arrays

# This is the array that rspec will be using to call and test each of the methods below: teachers = ["Steph","Victoria","Vanessa"]

def add_name(array)
  # Write code inside this add_name method to add the string "Danny" to the array
  array<<"Danny"
end

def print_items(array)
  # Iterate over each element in the array and puts it
  array.each do |item|
    puts item
  end
end

def first_item(array)
  array[0]
end

def third_item(array)
  array[2]
end

# Level 2: Hashes
# This is the hash that rspec will be using to call and test each of the methods below: 
# {:name => "Danny", :age => 55}

def name(hash)
  # Return the value of :name from the hash
  hash[:name]
end

def add_location(hash)
  # Add a key :location to the hash with a value of "NYC" 
  hash[:location]= "NYC"

end

def print_key_value_pairs(hash)
  # Iterate over the hash and puts each key value pair. Make sure to use string interpolation and pay attention to punctuation!
  hash.each do |k, v|
    puts "Key is #{k}. Value is #{v}."
  end

end

# Level 3: Nested Data Structures

# This is the hash that rspec will be using to call and test each of the methods below: 
# school = { 
#   :name => "Happy Funtime School",
#   :location => "NYC",
#   :instructors => [ 
#     {:name=>"Steph", :subject=>"Violin" },
#     {:name=>"Victoria", :subject=>"Field Hockey"},
#     {:name=>"Vanessa", :subject=>"Karaoke"}
#   ],
#   :students => [ 
#     {:name => "Marissa", :grade => "B"},
#     {:name=>"Billy", :grade => "F"},
#     {:name => "Frank", :grade => "A"},
#     {:name => "Sophie", :grade => "C"}
#   ]
# }

def modify_hash(nested_hash)
  # Add a key :founded_in with a value of 2013.
  nested_hash[:founded_in]=2013

end

def return_first_student(nested_hash)
  # Return the first student in the students array
  nested_hash[:students][0]
end

def add_student(nested_hash)
  # Add a student to the end of the nested_hash's students array. Make sure to give the student a name and grade.
  nested_hash[:students]<<{:name => "Bob", :grade => "B"}

end

def add_semester(nested_hash)
  # Iterate through the students array and add a key :semester to every student with the value of "Summer".
  nested_hash[:students].each do |student|
    student[:semester]="Summer"
  end

end

def find_student_by_grade(nested_hash)
  # Use the .find method (it works similar to .each) to iterate through the students array and look for a student with :grade == "B".
  nested_hash[:students].find do |student|
    student[:grade]=="B"
  end
end

def find_student_by_name(nested_hash)
  # Use the .find method to look for the student named "Frank. This time return only Frank's grade (not all of his info.)
  nested_hash[:students].find do |student|
    student[:name]=="Frank"
  end[:grade]
end

def change_frank_grade(nested_hash)
  # Use the .find method to find "Frank" and change his grade from "A" to "F".
  nested_hash[:students].find do |student|
      student[:name]=="Frank"
  end[:grade]="F"
end

def delete_student(nested_hash)
  # Delete the student named "Billy" from the hash
  nested_hash[:students].each do |student|
    if student[:name]=="Billy"
      nested_hash[:students].delete(student)
    end
  end
end

# Bonus!

def print_all_items(nested_hash)
  # Write out the code to puts all the values in the school. NOTE: If this takes too long, skip it!
  nested_hash.each_value do |item|
    if item.is_a?(Array)
      print_all_array(item)
    elsif item.is_a?(Hash)
      print_all_items(item)
    else
      puts item
    end
  end
end

def print_all_array(array)
  array.each do |item|
    if item.is_a?(Array)
      print_all_array(item)
    elsif item.is_a?(Hash)
      print_all_items(item)
    else
      puts item
    end
  end
end


