module SwaggerUiEngine
  class DocsController < ApplicationController
    include ConfigParser
    include SwaggerUiDefaults

    before_action :set_configs

    def oauth2
    end

    def index
      # backward compatibility for defining single doc url in strings
      redirect_to doc_path('v1') if single_doc_url?
      redirect_to doc_path(@swagger_url.keys.first) if single_doc_url_hash?
    end

    def show
      @single_doc_url = single_doc_url? || single_doc_url_hash?
      @swagger_url = @swagger_url[params[:id].to_sym] unless single_doc_url?
    end

    private

    def set_configs
      @doc_expansion = set_doc_expansion
      @json_editor = set_json_editor
      @model_rendering = set_model_rendering
      @request_headers = set_request_headers
      @swagger_url = set_swagger_url
      @validator_url = set_validator_url
    end

    def single_doc_url?
      @swagger_url.is_a?(String)
    end

    def single_doc_url_hash?
      @swagger_url.is_a?(Hash) && @swagger_url.size == 1
    end
  end
end
