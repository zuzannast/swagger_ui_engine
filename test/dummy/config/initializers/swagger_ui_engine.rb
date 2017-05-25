SwaggerUiEngine.configure do |config|
  config.swagger_url = { v1: 'api_docs/v1/swagger.yaml' }
  config.doc_expansion = 'list'
  config.model_rendering = 'model'
  config.oauth_app_name = 'Oauth2 Test App Name'
  config.oauth_realm = 'Oauth2 Test Realm'
end
