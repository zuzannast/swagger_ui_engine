require 'test_helper'

module SwaggerUiEngine
  class DocsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @routes = Engine.routes
    end

    test 'index should work successfully' do
      get '/swagger'
      assert_response :success
      assert_select '#swagger-ui-container'
    end
  end
end
