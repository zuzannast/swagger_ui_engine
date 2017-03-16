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

### Edit your json/yaml files

Use [Swagger editor](https://github.com/swagger-api/swagger-editor).

## License

This project rocks and uses MIT-LICENSE.
