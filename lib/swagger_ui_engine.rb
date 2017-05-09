require 'swagger_ui_engine/engine'
require 'swagger_ui_engine/version'
require 'swagger_ui_engine/configuration'

module SwaggerUiEngine
  class << self
    delegate(*Configuration::OPTIONS, to: :configuration)

    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield configuration
    end
  end
end
