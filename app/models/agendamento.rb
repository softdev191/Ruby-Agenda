class Agendamento < ApplicationRecord
  belongs_to :empresa
  belongs_to :usuario
end
