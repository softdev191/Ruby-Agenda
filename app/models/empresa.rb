class Empresa < ApplicationRecord
  belongs_to :usuario

  validates :nome, presence: true
end
