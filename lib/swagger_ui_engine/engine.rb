module SwaggerUiEngine
  class Engine < ::Rails::Engine
    isolate_namespace SwaggerUiEngine

    config.to_prepare do
      Rails.application.config.assets.precompile += %w(
        swagger_ui_engine/lib/typography.css
        swagger_ui_engine/lib/reset.css
        swagger_ui_engine/lib/screen.css
        swagger_ui_engine/lib/print.css
        swagger_ui_engine/print.css
        swagger_ui_engine/logo_small.png
        swagger_ui_engine/favicon-32x32.png
        swagger_ui_engine/favicon-16x16.png
      )

      Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'fonts')
      Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/
    end
  end

  class Configuration
    attr_accessor :swagger_url, :doc_expansion, :model_rendering,
                  :json_editor, :request_headers
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
