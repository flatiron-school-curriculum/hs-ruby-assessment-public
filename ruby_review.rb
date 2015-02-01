# Level 1: Arrays

# This is the array that rspec will be using to call and test each of the methods below: teachers = ["Steph","Victoria","Vanessa"]

def add_name(array)
  array.push("Danny")

end

def print_items(array)
  array.each do |i|
    puts i
  end
  # Iterate over each element in the array and puts it

end

def first_item(array)
  array[0]
  # Return the first item in the array

end

def third_item(array)
  array[2]
  # Return the third item in the array

end

# Level 2: Hashes
# This is the hash that rspec will be using to call and test each of the methods below:
# {:name => "Danny", :age => 55}

def name(hash)
  # Return the value of :name from the hash
  hash[:name]

end

def add_location(hash)
  hash[:location] = "NYC"
  # Add a key :location to the hash with a value of "NYC"

end

def print_key_value_pairs(hash)
  hash.each do |key, value|
    puts "Key is #{key}. Value is #{value}."
  end
  # Iterate over the hash and puts each key value pair. Make sure to use string interpolation and pay attention to punctuation!

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
  nested_hash[:founded_in] = 2013

end

def return_first_student(nested_hash)
    nested_hash[:students][0]
  # Return the first student in the students array

end

def add_student(nested_hash)
  nested_hash[:students].push({:name => "joe", :grade => 12})
  # Add a student to the end of the nested_hash's students array. Make sure to give the student a name and grade.

end

def add_semester(nested_hash)
  # Iterate through the students array and add a key :semester to every student with the value of "Summer".
  nested_hash[:students].each do |student|
    student[:semester] = "Summer"
  end
end

def find_student_by_grade(nested_hash)
  # Use the .find method (it works similar to .each) to iterate through the students array and look for a student with :grade == "B".
  nested_hash[:students].find {|student| student[:grade] == "B"}
end

def find_student_by_name(nested_hash)
  # Use the .find method to look for the student named "Frank. This time return only Frank's grade (not all of his info.)
  nested_hash[:students].find {|student| student[:name] == "Frank"}[:grade]
end

def change_frank_grade(nested_hash)
  nested_hash[:students].find {|student| student[:name] == "Frank"}[:grade] = "F"
  # Use the .find method to find "Frank" and change his grade from "A" to "F".

end

def delete_student(nested_hash)
  # Delete the student named "Billy" from the hash
  b = nested_hash[:students].find {|student| student[:name] == "Billy"}
  nested_hash[:students].delete(b)

end


# Bonus!
def print_all_items(nested_hash)
  values = []
  nested_hash.values.each do |item|
    if item.instance_of? String
      values.push(item)
    elsif item.instance_of? Array
      item.each do |inneritem|
        inneritem.values.each do |i|
          values.push(i)
        end
      end
    end

  end
  values.each do |item|
    puts item
  end
end
