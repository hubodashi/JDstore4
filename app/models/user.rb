# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  is_admin               :boolean          default("f")
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :orders
  has_many :favorites
  has_many :products, through: :favorites, source: :product
  has_many :posts
  has_many :goods_likes #建立user和喜欢的goods_likes之间的关系

has_many :like_goods, through: :goods_likes, source: :product #user可以找到他喜欢的商品
  def admin?
    is_admin
  end
  #判断选择的product是不是在点赞列表中
  def is_voter_of?(product)
    like_goods.include?(product)
  end

  #将选中的product加入到点赞列表中

  def like!(product)
    like_goods << product
  end
end
