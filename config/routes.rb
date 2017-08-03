SwaggerUiEngine::Engine.routes.draw do
  scope format: false do
    resources :swagger_docs, only: [:index, :show] do
      collection do
        get 'oauth2', to: 'swagger_docs#oauth2', format: false
      end
    end

    get 'single_swagger_doc', to: 'swagger_docs#single_doc', format: false
    root to: 'swagger_docs#index'
  end
end
