class Student < ActiveRecord::Base

end

Student.column_names
#=> [:id, :name]

Student.create(name: 'Jon')
# INSERT INTO students (name) VALUES ('Jon')

Student.find(1)

Student.find_by(name: 'Jon')
# SELECT * FROM artists WHERE (name = 'Jon') LIMIT 1

student = Student.find_by(name: 'Jon')
student.name
#=> 'Jon'

student.name = 'Steve'

student.name
#=> 'Steve'

student = Student.find_by(name: 'Jon')
student.name = 'Steve'
student.save
