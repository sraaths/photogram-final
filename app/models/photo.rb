# == Schema Information
#
# Table name: photos
#
#  id             :bigint           not null, primary key
#  caption        :string
#  comments_count :string
#  image          :string
#  likes_count    :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  owner_id       :integer
#
class Photo < ApplicationRecord
end
