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

    test 'custom config options should work successfully' do
      get '/swagger'
      assert_match('url = "api_docs/swagger.yaml"', @response.body)
      assert_match('docExpansion: "list"', @response.body)
      assert_match('defaultModelRendering: "model"', @response.body)
    end

    test 'default config options should work successfully' do
      get '/swagger'
      assert_match('showRequestHeaders: "false"', @response.body)
      assert_match('jsonEditor: "false"', @response.body)
    end
  end
end
