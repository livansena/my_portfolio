pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true

pin "controllers", to: "controllers/index.js", preload: true

app_javascript_path = Rails.root.join("app/javascript").to_s + "/"
Dir.glob(Rails.root.join("app/javascript/controllers/**/*_controller.js")).each do |full_path|
  filename = full_path.to_s.sub(app_javascript_path, "").remove(".js")
  pin filename, to: filename + ".js"
end