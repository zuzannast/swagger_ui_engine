module SwaggerUiEngine
  class Engine < ::Rails::Engine
    isolate_namespace SwaggerUiEngine

    # Initializer to combine this engines static assets with the static assets of the hosting site.
    initializer 'static assets' do |app|
      app.middleware.insert_before(::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public")
    end
  end

  class Configuration
    attr_accessor :swagger_url
  end
  class << self
    attr_writer :configuration
  end

  module_function
  def configuration
    @configuration ||= Configuration.new
  end

  def configure
    yield(configuration)
  end
 end
