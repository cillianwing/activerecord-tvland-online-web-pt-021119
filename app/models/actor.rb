class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    # return first and last name of actor
    "#{first_name} #{last_name}"
  end

  def list_roles
    # list all the shows and characters the actor has
    self.characters.collect do |x|
      "#{x.name} - #{x.show.name}"
    end
  end

end
