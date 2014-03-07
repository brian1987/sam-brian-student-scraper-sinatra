class Student < ActiveRecord::Base

  before_save :slugify! 


  def slugify!   
    # this method probably should make a permanent change. 
    # so we'll be calling 'save'
    # slug needs to be a column in the db 
    # thus we won't need this writer or reader

    self.slug = self.name.downcase.gsub(" ", "-")

  end



end