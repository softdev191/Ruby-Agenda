class Info < ApplicationRecord
  belongs_to :perfil
  belongs_to :usuario

  validates :nome, :endereco, :numero, :bairro, :cidade, presence: true
end
