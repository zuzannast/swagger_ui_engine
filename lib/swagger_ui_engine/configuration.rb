module SwaggerUiEngine
  class Configuration
    # Configurable options
    OPTIONS = [
      :admin_username,
      :admin_password,
      :doc_expansion,
      :json_editor,
      :model_rendering,
      :request_headers,
      :swagger_url,
      :validator_enabled,
    ].freeze

    attr_accessor(*OPTIONS)
  end
end
