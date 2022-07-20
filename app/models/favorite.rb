class Favorite < ApplicationRecord
  
  #UserモデルのidやPostImageモデルのidと関連付けが必要
  belongs_to :user
  belongs_to :post_image
  
end
