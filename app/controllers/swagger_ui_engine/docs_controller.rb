module SwaggerUiEngine
  class DocsController < ApplicationController
    include ConfigParser
    include SwaggerUiDefaults

    before_action :set_configs

    def index
    end

    private

    def set_configs
      @swagger_url = set_swagger_url
      @doc_expansion = set_doc_expansion
      @json_editor = set_json_editor
      @model_rendering = set_model_rendering
      @request_headers = set_request_headers
      @validator_url = set_validator_url
    end
  end
end
