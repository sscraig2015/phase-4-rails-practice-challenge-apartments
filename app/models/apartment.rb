class Apartment < ApplicationRecord

    has_many :leases
    has_many :tenants, through: :leases

    validates :number, presence: true, uniqueness: true, length: { minimum: 1 }
end
