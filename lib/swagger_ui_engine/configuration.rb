module SwaggerUiEngine
  class Configuration
    # Configurable options
    OPTIONS = [
      :swagger_url,
      :doc_expansion,
      :model_rendering,
      :json_editor,
      :request_headers,
      :validator_enabled,
    ].freeze

    attr_accessor(*OPTIONS)
  end
end
