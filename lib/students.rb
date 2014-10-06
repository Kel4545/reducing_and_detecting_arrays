class Students
  def all
    [
      {name: "Bob", age: 10},
      {name: "Sue", age: 10},
      {name: "Greg", age: 15},
      {name: "Amanda", age: 8},
      {name: "Steve", age: 22},
    ]
  end

  def average_age
    all.reduce(0) { |x, y| x + y[:age] } / all.length
  end

  def name_string
    all.reduce("") { |x, y| x + y[:name] + (" ") }.strip
  end

  def find_first_older_than(age)
   all.detect {|x| x[:age] > age}

  end

  def any_older_than?(age)
  all.any? {|x| x[:age] > age }
  end

  def find_student(hash)
   all.detect {|x| x == hash}
  end

  def student_present?(hash)
  all.any? {|x| x == hash}
  end

  def grouped_by_age
    all.inject({}) do |x, y|
      if  x[y[:age]] == nil
        x[y[:age]] = []
      end
      x[y[:age]] << y[:name]
      x
    end
  end
  end
