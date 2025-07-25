json.extract! project, :id, :title, :description, :image_url, :github_url, :live_url, :created_at, :updated_at
json.url project_url(project, format: :json)
