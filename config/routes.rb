SwaggerUiEngine::Engine.routes.draw do
  scope format: false do
    resources :docs, only: [:index, :show]
    root to: 'docs#index'
  end
end
