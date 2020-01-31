class School
  attr_accessor :roster, :name 
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, level)
    roster[level] = []
    roster[level] << student
  end
  
  def grade(level)
    roster.detect do |a, b|
      if a == level
        return b
      end
    end
  end
  
  def sort 
    new_hash = {}
    roster.each do |a, b|
      new_hash[a] = b.sort
    end
    new_hash
  end
  
  
  
end
