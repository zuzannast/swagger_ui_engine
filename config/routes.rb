SwaggerUiEngine::Engine.routes.draw do
  scope format: false do
    resources :docs, only: [:index, :show] do
      collection do
        get 'oauth2', to: 'docs#oauth2', format: false
      end
    end

    root to: 'docs#index'
  end
end
