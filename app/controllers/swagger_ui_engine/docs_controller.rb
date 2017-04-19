module SwaggerUiEngine
  class DocsController < ApplicationController
    include ConfigParser
    include SwaggerUiDefaults

    before_action :set_configs

    def index
      redirect_to doc_path(@swagger_url.keys.first) if single_doc_version?
    end

    def show
      @swagger_url = @swagger_url[params[:id].to_sym]
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

    def single_doc_version?
      @swagger_url.size == 1
    end
  end
end
