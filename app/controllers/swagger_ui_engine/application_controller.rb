module SwaggerUiEngine
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    layout false
  end
end
