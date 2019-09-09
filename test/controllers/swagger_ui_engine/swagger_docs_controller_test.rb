require 'test_helper'

module SwaggerUiEngine
  class SwaggerDocsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @routes = Engine.routes
    end

    test 'index action should redirect when single doc version' do
      get '/swagger'
      assert_response :redirect
    end

    test 'index action should not display back link when single doc version' do
      get '/swagger'
      refute_match('Back to API versions', @response.body)
    end

    test 'oauth2 redirect url should be set' do
      get '/swagger/swagger_docs/v1'
      assert_response :success
      assert_match('oauth2RedirectUrl: "http://www.example.com/swagger/swagger_docs/oauth2"', @response.body)
    end

    test 'custom config options should work successfully' do
      get '/swagger/swagger_docs/v1'
      assert_response :success
      assert_match('url = "api_docs/v1/swagger.yaml"', @response.body)
      assert_match('docExpansion: "list"', @response.body)
      assert_match('defaultModelRendering: "model"', @response.body)
      assert_match('appName: "Oauth2 Test App Name"', @response.body)
      assert_match('realm: "Oauth2 Test Realm"', @response.body)
    end

    test 'default config options should work successfully' do
      get '/swagger/swagger_docs/v1'
      assert_response :success
      assert_match('showRequestHeaders: "false"', @response.body)
      assert_match('jsonEditor: "false"', @response.body)
      assert_match('clientId: "your-client-id"', @response.body)
      assert_match('clientSecret: "your-client-secret-if-required"', @response.body)
      assert_match('scopeSeparator: " "', @response.body)
      assert_match('additionalQueryStringParams: "{}"', @response.body)
    end

    test 'validatorUrl should should check the url to validate the given url or return real null' do
      get '/swagger/swagger_docs/v1'
      assert_match('validatorUrl: validationUrl("null")', @response.body)
    end
  end
end
