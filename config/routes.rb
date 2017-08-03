SwaggerUiEngine::Engine.routes.draw do
  scope format: false do
    resources :swagger_docs, only: [:index, :show] do
      collection do
        get 'oauth2', to: 'swagger_docs#oauth2', format: false
      end
    end

    root to: 'swagger_docs#index'
  end
end
