# Level 1: Arrays

# This is the array that rspec will be using to call and test each of the methods below: ["Steph","Victoria","Vanessa"]

def add_name(array)
  # Write code inside this add_name method to add the string "Danny" to the array

end

def print_items(array)
  # Iterate over each element in the array and puts it

end

def first_item(array)
  # Return the first item in the array

end

def third_item(array)
  # Return the third item in the array

end

# Level 2: Hashes
# This is the hash that rspec will be using to call and test each of the methods below: 
# {:name => "Danny", :age => 55}

def name(hash)
  # Return the value of :name from the hash

end

def add_location(hash)
  # Add a key :location to the hash with a value of "NYC" 

end

def print_key_value_pairs(hash)
  # Iterate over the hash and puts each key value pair. Make sure to use string interpolation and pay attention to punctuation!

end

# Level 3: Nested Data Structures

# This is the hash that rspec will be using to call and test each of the methods below: 
# { 
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

end

def return_first_student(nested_hash)
  # Return the first student in the students array

end

def add_student(nested_hash)
  # Add a student to the end of the nested_hash's students array. Make sure to give the student a name and grade.

end

def add_semester(nested_hash)
  # Iterate through the students array and add a key :semester to every student with the value of "Summer".

end

def find_student_by_grade(nested_hash)
  # Use the .find method (it works similar to .each) to iterate through the students array and look for a student with :grade == "B".

end

def find_student_by_name(nested_hash)
  # Use the .find method to look for the student named "Frank. This time return only Frank's grade (not all of his info.)

end

def change_frank_grade(nested_hash)
  # Use the .find method to find "Frank" and change his grade from "A" to "F".

end

def delete_student(nested_hash)
  # Delete the student named "Billy" from the hash
 
end

# Bonus!
def print_all_items(nested_hash)
  # Write out the code to puts all the values in the school. NOTE: If this takes too long, skip it!

end


