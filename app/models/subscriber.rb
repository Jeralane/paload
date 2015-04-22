class Subscriber < ActiveRecord::Base
  has_many :mobile_numbers


  def full_name
    "#{first_name} #{last_name}"
  end
end
