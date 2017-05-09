module ConfigParser
  def set_doc_expansion
    configuration.doc_expansion || default_doc_expansion
  end

  def set_json_editor
    configuration.json_editor || default_json_editor
  end

  def set_model_rendering
    configuration.model_rendering || default_model_rendering
  end

  def set_request_headers
    configuration.request_headers || default_request_headers
  end

  def set_show_operation_ids
    configuration.show_operation_ids || default_show_operation_ids
  end

  def set_swagger_url
    configuration.swagger_url || default_swagger_url
  end

  def set_validator_url
    validator_enabled ? default_validator_url : 'null'
  end

  def validator_enabled
    configuration.validator_enabled || false
  end

  def configuration
    SwaggerUiEngine.configuration
  end
end
