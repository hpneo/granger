class Location < ActiveRecord::Base
  belongs_to :user

  reverse_geocoded_by :lat, :lng

  after_create :update_current_location

  private
    def update_current_location
      u = self.user
      u.current_lat = self.lat
      u.current_lng = self.lng
      u.current_state = self.state
      u.save
    end
end
