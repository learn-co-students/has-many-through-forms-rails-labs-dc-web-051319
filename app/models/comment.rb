class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post


  def user_attributes=(user_attribute)
    if !user_attribute[:username].empty?
    user_attribute.values.each do |user_att|
      user = User.find_or_create_by(username: user_att)
      self.user = user
      end
    end
  end
end
