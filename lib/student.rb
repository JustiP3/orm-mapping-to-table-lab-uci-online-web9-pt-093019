class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

attr_accessor :name, :grade
attr_reader :id

def initialize (name, grade, id = 1)
  @name = name
  @grade = grade
  @id = id
end

def self.create_table
  sql = "CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  name TEXT,
  grade INTEGER
  );"
  DB[:conn].execute(sql)
end 

def self.drop_table
  sql = "DROP TABLE students"

  DB[:conn].execute(sql)
end 


end
