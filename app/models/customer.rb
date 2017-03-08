class Customer < ApplicationRecord
     validates :CustomerName, presence: true,
                    length: { maximum: 50 }
     validates :Industry, presence: true,
                    length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
     validates :Email, presence: true,
                    length: { maximum: 255 },
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: { case_sensitive: false }
     validates :Phone, presence: true,
                    length: { minimum: 5, maximum: 20 }
     validates :Notes, presence: true,
                    length: { minimum: 5 }, allow_nil: true 
end
