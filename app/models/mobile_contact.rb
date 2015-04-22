class MobileContact < ActiveRecord::Base
  belongs_to :network
  belongs_to :subscriber

  def full_name
    "#{subscriber.last_name}, #{subscriber.first_name}"
  end
end


