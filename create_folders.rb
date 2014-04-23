# This is a ruby file that is used to popualte all of the folders inside this
# repository so that students can have a place to add all of their homework
# exercises

# The below line is a constant (meaning that it never changes) that has a data
# typ eattached to it, called an array. The array is filled with the names of
# all the students in the class
STUDENTS = [
  'Rachel Ober',
  'Max Miller',
  'Brooks Swinnerton',
  'Alex Cheng',
  'Max Dana',
  'Jared Djuhar',
  'Oliver Evans',
  'Tyler Houle',
  'Oleg Jelezniakov',
  'Nick Madrid',
  'Daniel Meagher',
  'Shi Qing Poh',
  'Francisco Quiroga',
  'Mike Salvaris',
  'Nina Saporta',
  'David Saunders',
  'Jim Shook',
  'North Shutsharawan',
  'Darrell Simmons',
  'Serafina Smith',
  'Tonia Sun',
  'Piroon Tangnavarad',
  'Andy Timmons',
  'Danny Truong',
  'Nicolas Tse',
  'Jorge Urrutia',
  'Polina White',
  'Gwan Yip'
]

# This line loops through each one of the students and substitutes spaces for
# underscores, and then calls out to the system to make the directories (mkdir) 
# and then touch a hidden file called .gitkeep
STUDENTS.each do |student|
  name = student.gsub(' ', '_')
  %x( mkdir "_#{name}/" )
  %x( touch "_#{name}/.gitkeep" )
end
