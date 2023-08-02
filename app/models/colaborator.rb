class Colaborator < ApplicationRecord
    validates :name, presence: true, length: { minimum: 2 }, uniqueness: true
    validates :email, presence: true
    # validates :direction, presence: true
end
