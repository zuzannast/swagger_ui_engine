module SwaggerUiEngine
  DEFAULTS = {
    swagger_url:      'http://petstore.swagger.io/v2/swagger.json',
    doc_expansion:    'none',
    json_editor:      false,
    model_rendering:  'schema',
    request_headers:  false,
    validator_url:    '//online.swagger.io/validator'
  }.freeze

  OAUTH2_DEFAULTS = {
    oauth_app_name: 'your-app-name',
    oauth_client_id: 'your-client-id',
    oauth_client_secret: 'your-client-secret-if-required',
    oauth_realm: 'your-realms',
    oauth_scope_separator: ' ',
    oauth_query_string_params: {}
  }.freeze
end
