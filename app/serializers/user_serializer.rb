# frozen_string_literal: true

# Class UserSerializer
class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :name, :phone_number, :created_at

  attribute :created_date do |user|
    user.created_at && user.created_at.strftime('%m/%d/%Y')
  end
end
