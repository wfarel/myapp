json.extract! fotos_empresa, :id, :name, :image, :estado, :created_at, :updated_at
json.url fotos_empresa_url(fotos_empresa, format: :json)
