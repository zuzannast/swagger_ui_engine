module OauthConfigParser
  def set_oauth_app_name
    configuration.oauth_app_name || 'your-app-name'
  end

  def set_oauth_client_id
    configuration.oauth_client_id || 'your-client-id'
  end

  def set_oauth_client_secret
    configuration.oauth_client_secret || 'your-client-secret-if-required'
  end

  def set_oauth_realm
    configuration.oauth_realm || 'your-realms'
  end

  def set_oauth_scope_separator
    configuration.oauth_scope_separator || ' '
  end

  def set_oauth_query_string_params
    configuration.oauth_query_string_params || {}
  end

  def configuration
    SwaggerUiEngine.configuration
  end
end
