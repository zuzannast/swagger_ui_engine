Rails.application.routes.draw do
  mount SwaggerUiEngine::Engine => '/swagger'
end
