module CroppieRails
  class Engine < ::Rails::Engine
    initializer 'croppie_rails.load_static_assets' do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/vendor"
    end
  end
end
