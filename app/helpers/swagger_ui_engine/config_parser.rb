module SwaggerUiEngine
  module ConfigParser
    SwaggerUiEngine::DEFAULTS.each do |default|
      next if default.first.to_s.eql?('validator_url')

      define_method("set_#{default.first}") do
        # set_swagger_url set_doc_expansion
        # set_json_editor set_model_rendering
        # set_request_headers
        configuration.send("#{default.first}") || default.last
      end
    end

    def set_validator_url
      validator_enabled? ? SwaggerUiEngine::DEFAULTS[:validator_url] : 'null'
    end

    def validator_enabled?
      configuration.validator_enabled || false
    end

    def configuration
      SwaggerUiEngine.configuration
    end
  end
end
