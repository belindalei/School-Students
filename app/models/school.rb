class School < ApplicationRecord
  has_many :students

  def search(search_term)
    if search_term
      self.students.all.where("name LIKE ?", "%#{search_term}%") 
    else
      self.students.all
    end
  end 

end
