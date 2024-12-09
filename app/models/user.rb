# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  comments_count         :string
#  email                  :string
#  encrypted_password     :string
#  likes_count            :string
#  private                :boolean
#  remember_created_at    :string
#  reset_password_sent_at :string
#  reset_password_token   :string
#  username               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many  :comments, class_name: "Comment", foreign_key: "author_id", dependent: :destroy
         has_many  :likes, class_name: "Like", foreign_key: "fan_id", dependent: :destroy
         has_many  :sent_requests, class_name: "FollowRequest", foreign_key: "sender_id", dependent: :destroy
         has_many :followings, through: :sent_requests, source: :recipient
         has_many  :received_requests, class_name: "FollowRequest", foreign_key: "recipient_id", dependent: :destroy
         has_many :followers, through: :received_requests, source: :sender

end
