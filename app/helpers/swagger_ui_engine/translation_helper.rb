module SwaggerUiEngine
  module TranslationHelper
    def load_translation_file
      return unless translator_enabled?
      javascript_include_tag('swagger_ui_engine/lang/translator', lang_file_path)
    end

    def lang_file_path
      "swagger_ui_engine/lang/#{I18n.locale.to_s.downcase}.js"
    end

    def translator_enabled?
      SwaggerUiEngine.configuration.translator_enabled
    end
  end
end
