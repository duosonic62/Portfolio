json.extract! image, :id, :name, :imag_url, :created_at, :updated_at
json.url image_url(image, format: :json)
