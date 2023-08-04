# == Schema Information
#
# Table name: colaborators
#
#  id         :bigint           not null, primary key
#  name       :string
#  email      :string
#  direction  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Colaborator < ApplicationRecord
    validates :name, presence: true, length: { minimum: 2 }, uniqueness: true
    validates :email, presence: true
    validates :direction, presence: true

    include PgSearch::Model

    pg_search_scope :search_full_text, against: {
        email: 'A',
        id: 'B',
    }
end
