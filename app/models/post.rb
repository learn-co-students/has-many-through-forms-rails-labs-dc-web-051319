class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

def get_uniq_commentors
  return self.users.uniq
end

def categories_attributes=(categories_attributes)
  categories_attributes.values.each do |categories_attribute|
    category = Category.find_or_create_by(categories_attribute)
    self.categories << category
  end
end


end
