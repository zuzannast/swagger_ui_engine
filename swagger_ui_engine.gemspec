$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "swagger_ui_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "swagger_ui_engine"
  s.version     = SwaggerUiEngine::VERSION
  s.authors     = ["zuzannast"]
  s.email       = ["zuzannast@gmail.com"]
  s.homepage    = "https://github.com/zuzannast/swagger_ui_engine"
  s.summary     = "Mount swagger-ui as rails engine."
  s.description = "Api docs inside your rails project."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
end
