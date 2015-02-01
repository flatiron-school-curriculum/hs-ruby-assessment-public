require "spec_helper"

describe "Level 1" do
  describe "Arrays" do

    teachers = ["Steph","Victoria","Vanessa"]

    it "adds an element to an array" do 
      expect(add_name(teachers).count).to eq(4)
    end

    it "prints each item in the array" do
      # STDOUT is a constant that ruby defines for you
      # that represents 'output' so that you can test
      # against puts and Input/Output (IO) methods
      expect(STDOUT).to receive(:puts).with("Danny")
      expect(STDOUT).to receive(:puts).with("Steph")
      expect(STDOUT).to receive(:puts).with("Victoria")
      expect(STDOUT).to receive(:puts).with("Vanessa")
      print_items(teachers)
    end

    it "returns the value at index 0" do
      expect(first_item(teachers)).to eq("Steph") 
    end

    it "returns the third item" do
      expect(third_item(teachers)).to eq("Vanessa") 
    end
  end
end

describe "Level 2" do
  describe "Hashes" do

    teacher = {:name => "Danny", :age => 55}

    it "returns a value from the hash" do
      expect(name(teacher)).to eq("Danny")
    end

    it "adds a location value to the hash" do
      expect(add_location(teacher)).to eq("NYC")
    end

    it "prints out all the key value pairs in the hash" do
      expect(STDOUT).to receive(:puts).with("Key is name. Value is Danny.")
      expect(STDOUT).to receive(:puts).with("Key is age. Value is 55.")
      expect(STDOUT).to receive(:puts).with("Key is location. Value is NYC.")
      print_key_value_pairs(teacher)
    end

  end
end

describe "Level 3" do
  describe "Nested Structures" do

    school = { 
      :name => "Happy Funtime School",
      :location => "NYC",
      :instructors => [ 
        {:name=>"Steph", :subject=>"Violin" },
        {:name=>"Victoria", :subject=>"Field Hockey"},
        {:name=>"Vanessa", :subject=>"Karaoke"}
      ],
      :students => [ 
        {:name => "Marissa", :grade => "B"},
        {:name=>"Billy", :grade => "F"},
        {:name => "Frank", :grade => "A"},
        {:name => "Sophie", :grade => "C"}
      ]
    }

    it "modifies the hash" do 
      expect(modify_hash(school)).to eq(2013)
    end

    it "returns the first student's info" do 
      expect(return_first_student(school)).to eq({:name => "Marissa", :grade => "B"})
    end

    it "adds to a nested array" do
      add_student(school)
      expect(school[:students].count).to eq(5)
      expect(school[:students].last[:name]).to_not eq("Sophie")
    end

    it "modifies all values from nested array" do
      add_semester(school)
      expect(school[:students].all? {|student| student[:semester] == "Summer"}).to eq(true)
    end

    it "finds student info based on grade" do
      expect(find_student_by_grade(school)).to eq({:name=>"Marissa", :grade=>"B", :semester=>"Summer"})
    end

    it "changes value of hash in nested students array" do
      change_frank_grade(school)
      expect(school[:students].find{|student| student[:name] == "Frank"}[:grade]).to eq("F")
    end

    it "deletes values from nested array" do
      delete_student(school)
      expect(school[:students].count).to eq(4)
      expect(school[:students].find {|student| student[:name] == 'Billy'}).to be_nil
    end
  end
end

describe "Bonus" do
  describe "Print Nested Structure" do
    school = { 
      :name => "Happy Funtime School",
      :location => "NYC",
      :instructors => [ 
        {:name=>"Steph", :subject=>"Fiddle" },
        {:name=>"Victoria", :subject=>"Field Hockey"},
        {:name=>"Vanessa", :subject=>"Karaoke"},
        {:name=>"Lyel", :subject=>"Drumming"}
      ],
      :students => [ 
        {:name => "Marissa", :grade => "B"},
        {:name=>"Billy", :grade => "F"},
        {:name => "Frank", :grade => "A"},
        {:name => "Sophie", :grade => "C"}
      ]
    }

    it "puts all values from all hashes, including nested ones" do
      expect(STDOUT).to receive(:puts).with("Happy Funtime School")
      expect(STDOUT).to receive(:puts).with("NYC")
      expect(STDOUT).to receive(:puts).with("Steph")
      expect(STDOUT).to receive(:puts).with("Fiddle")
      expect(STDOUT).to receive(:puts).with("Victoria")
      expect(STDOUT).to receive(:puts).with("Field Hockey")
      expect(STDOUT).to receive(:puts).with("Vanessa")
      expect(STDOUT).to receive(:puts).with("Karaoke")
      expect(STDOUT).to receive(:puts).with("Lyel")
      expect(STDOUT).to receive(:puts).with("Drumming")
      expect(STDOUT).to receive(:puts).with("Marissa")
      expect(STDOUT).to receive(:puts).with("B")
      expect(STDOUT).to receive(:puts).with("Billy")
      expect(STDOUT).to receive(:puts).with("F")
      expect(STDOUT).to receive(:puts).with("Frank")
      expect(STDOUT).to receive(:puts).with("A")
      expect(STDOUT).to receive(:puts).with("Sophie")
      expect(STDOUT).to receive(:puts).with("C")
      print_all_items(school)
    end
  end
end

