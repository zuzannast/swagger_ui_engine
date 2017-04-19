module SwaggerUiEngine
  class DocsController < ApplicationController
    include ConfigParser
    include SwaggerUiDefaults

    def index
      @swagger_url = set_swagger_url
      @doc_expansion = set_doc_expansion
      @json_editor = set_json_editor
      @model_rendering = set_model_rendering
      @request_headers = set_request_headers
    end
  end
end
