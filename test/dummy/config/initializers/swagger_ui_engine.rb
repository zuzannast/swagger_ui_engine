SwaggerUiEngine.configure do |config|
  config.swagger_url = { v1: 'api_docs/v1/swagger.yaml' }
  config.doc_expansion = 'list'
  config.model_rendering = 'model'
end
