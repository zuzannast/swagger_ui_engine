module AuthConfigParser
  def admin_username
    configuration.admin_username
  end

  def admin_password
    configuration.admin_password
  end

  def basic_authentication_enabled?
    admin_username && admin_password
  end

  def configuration
    SwaggerUiEngine.configuration
  end
end
