module SwaggerUiEngine
  module OauthConfigParser
    SwaggerUiEngine::OAUTH2_DEFAULTS.each do |default|
      define_method("set_#{default.first}") do
        # set_oauth_app_name set_oauth_client_id
        # set_oauth_client_secret set_oauth_realm
        # set_oauth_scope_separator set_oauth_query_string_params
        configuration.send("#{default.first}") || default.last
      end
    end
  end
end
