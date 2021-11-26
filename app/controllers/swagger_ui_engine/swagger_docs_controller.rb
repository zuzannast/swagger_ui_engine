module SwaggerUiEngine
  class SwaggerDocsController < SwaggerUiEngine::ApplicationController
    include SwaggerUiEngine::ConfigParser
    include SwaggerUiEngine::OauthConfigParser

    helper SwaggerUiEngine::TranslationHelper
    layout 'swagger_ui_engine/layouts/swagger', except: %w(oauth2)

    before_action :set_configs, :set_oauth_configs

    def oauth2
    end

    def index
      # backward compatibility for defining single doc url in strings
      redirect_to single_swagger_doc_path if single_doc_url?
      redirect_to swagger_doc_path(@swagger_url.keys.first) if single_doc_url_hash?
    end

    def show
      @single_doc_url = single_doc_url? || single_doc_url_hash?
      @swagger_url = @swagger_url[params[:id].to_sym] unless single_doc_url?
    end

    def single_doc
      render 'show'
    end

    private

    def set_configs
      SwaggerUiEngine::DEFAULTS.keys.each do |key|
        instance_variable_set("@#{key}", self.send("set_#{key}"))
      end
    end

    def set_oauth_configs
      SwaggerUiEngine::OAUTH2_DEFAULTS.keys.each do |key|
        instance_variable_set("@#{key}", self.send("set_#{key}"))
      end
    end

    def single_doc_url?
      @swagger_url.is_a?(String)
    end

    def single_doc_url_hash?
      @swagger_url.is_a?(Hash) && @swagger_url.size.eql?(1)
    end
  end
end
