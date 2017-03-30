module SwaggerUiEngine
  class Engine < ::Rails::Engine
    isolate_namespace SwaggerUiEngine

    config.to_prepare do
      Rails.application.config.assets.precompile += %w(
        swagger_ui_engine/typography.css
        swagger_ui_engine/reset.css
        swagger_ui_engine/screen.css
        swagger_ui_engine/print.css
        logo_small.png
      )

      Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'fonts')
      Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/
    end
  end

  class Configuration
    attr_accessor :swagger_url, :doc_expansion, :model_rendering,
                  :json_editor, :request_headers, :show_operation_ids
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
