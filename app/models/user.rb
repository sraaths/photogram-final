# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  comments_count         :string
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
class User < ApplicationRecord
end
