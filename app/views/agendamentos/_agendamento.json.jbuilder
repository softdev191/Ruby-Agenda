json.extract! agendamento, :id, :empresa_id, :usuario_id, :agendamento, :created_at, :updated_at
json.url agendamento_url(agendamento, format: :json)
