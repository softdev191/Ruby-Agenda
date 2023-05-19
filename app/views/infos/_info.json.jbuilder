json.extract! info, :id, :nome, :endereco, :numero, :bairro, :cidade, :perfil_id, :usuario_id, :created_at, :updated_at
json.url info_url(info, format: :json)
