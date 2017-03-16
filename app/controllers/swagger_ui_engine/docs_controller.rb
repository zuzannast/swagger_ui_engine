module SwaggerUiEngine
  class DocsController < ActionController::Base
    def index
      @swagger_url = SwaggerUiEngine.configuration.swagger_url
    end
  end
end
