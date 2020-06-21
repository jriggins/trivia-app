# == Schema Information
#
# Table name: registration_users
#
#  id              :integer          not null, primary key
#  password_digest :string
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
module Registration
  class User < ApplicationRecord
    has_secure_password
  end
end
