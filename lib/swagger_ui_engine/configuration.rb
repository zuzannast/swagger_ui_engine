module SwaggerUiEngine
  class Configuration
    # Configurable options
    OPTIONS = [
      :admin_username,
      :admin_password,
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
