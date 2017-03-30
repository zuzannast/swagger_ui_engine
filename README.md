# SwaggerUiEngine

Include [swagger-ui](https://github.com/swagger-api/swagger-ui) as rails engine and document your API with simple JSON or YAML files.

## Swagger UI Version

Swagger UI Version |
------------------ |
2.2.8              |

## Swagger specifications

https://github.com/swagger-api/swagger-spec/blob/master/versions/2.0.md

## Install

Add to Gemfile

```gem 'swagger_ui_engine'```

Add to your config/routes.rb

```mount SwaggerUiEngine::Engine, at: "/api_docs"```

You can place this route under `admin_constraint` or other restricted path.

## Configure

### Swagger URL

Set the path of your json/yaml files in a initializer:

```
#config/initializers/swagger_ui_engine.rb

SwaggerUiEngine.configure do |config|
  config.swagger_url = 'api_docs/swagger.yaml'
end
```

It will look for you main doc file under `/public/api_docs` path.

### Config options
Config Name | Swagger parameter name | Description
--- | --- | ---
config.swagger_url | url | The url pointing to `swagger.json` (Swagger 2.0) or the resource listing (earlier versions) as per [OpenAPI Spec](https://github.com/OAI/OpenAPI-Specification/).
config.doc_expansion | docExpansion | Controls how the API listing is displayed. It can be set to 'none' (default), 'list' (shows operations for each resource), or 'full' (fully expanded: shows operations and their details).
config.model_rendering | defaultModelRendering | Controls how models are shown when the API is first rendered. (The user can always switch the rendering for a given model by clicking the 'Model' and 'Model Schema' links.) It can be set to 'model' or 'schema', and the default is 'schema'.
config.request_headers | showRequestHeaders | Whether or not to show the headers that were sent when making a request via the 'Try it out!' option. Defaults to `false`.
config.json_editor | jsonEditor | Enables a graphical view for editing complex bodies.  Defaults to `false`.

### Edit your json/yaml files

Use [Swagger editor](https://github.com/swagger-api/swagger-editor).

## License

This project rocks and uses MIT-LICENSE.
