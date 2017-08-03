module SwaggerUiEngine
  class SwaggerDocsController < ApplicationController
    include SwaggerUiEngine::ConfigParser
    include SwaggerUiEngine::OauthConfigParser

    add_template_helper SwaggerUiEngine::TranslationHelper
    layout 'swagger_ui_engine/layouts/swagger', except: %w(oauth2)

    before_action :set_configs, :set_oauth_configs

    def oauth2
    end

    def index
      # backward compatibility for defining single doc url in strings
      redirect_to swagger_doc_path('v1') if single_doc_url?
      redirect_to swagger_doc_path(@swagger_url.keys.first) if single_doc_url_hash?
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

    def set_oauth_configs
      @oauth_app_name = set_oauth_app_name
      @oauth_client_id = set_oauth_client_id
      @oauth_client_secret = set_oauth_client_secret
      @oauth_realm = set_oauth_realm
      @oauth_query_string_params = set_oauth_query_string_params
      @oauth_scope_separator = set_oauth_scope_separator
    end

    def single_doc_url?
      @swagger_url.is_a?(String)
    end

    def single_doc_url_hash?
      @swagger_url.is_a?(Hash) && @swagger_url.size.eql?(1)
    end
  end
end
