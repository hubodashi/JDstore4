# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  quantity    :integer
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image       :string
#

class Product < ApplicationRecord
  has_many :photos
  accepts_nested_attributes_for :photos
  has_many :favorites
  has_many :posts
  belongs_to :category
  has_many :users, through: :favorites, source: :user
  has_many :goods_likes #建立product和user之间的多对多关系
  has_many :goods_voters, through: :goods_likes, source: :user #product可以知道是哪些user点赞了它
  mount_uploader :image, ImageUploader
  acts_as_list
  scope :published, -> { where(is_hidden: false) }
end
