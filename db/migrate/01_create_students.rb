class CreateStudents < ActiveRecord::Migration
  def change
    create_table(:students) do |t|
      t.string :name
      t.string :profile_image
      t.string :background_image
      t.string :twitter
      t.string :linkedin
      t.string :github
      t.string :quote
      t.string :bio
      t.string :work
      t.string :work_title
      t.string :education
      t.timestamps

    end
  end
end



# student = Student.find_or_create_by(:name => name)

# student.profile_image = parse_profile_image(student_page)
# student.background_image = parse_background_image(student_page)

# social_media  = parse_social_media(student_page)
# student.twitter = social_media[0]
# student.linkedin = social_media[1]
# student.github = social_media[2]

# student.quote = parse_quote(student_page)
# student.bio = parse_bio(student_page)
# student.work = value_missing
# student.work_title = parse_work_title(student_page)
# student.education = parse_education(student_page)