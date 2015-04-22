class LoadRequest < ActiveRecord::Base
  belongs_to :mobile_contact
  belongs_to :denomination

  def requested_at
    created_at.localtime
  end
end
