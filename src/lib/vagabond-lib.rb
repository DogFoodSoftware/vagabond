class VagabondSession
  def initialize()
  end # def initialize

  def execute(resource, verb, params)
    # We could do this with a totally dynamic call if we got a few more nouns.
    if resource == 'boxes'
      boxes_handler(verb, params)
    elsif resource == 'environments'
      environments_handler(verb, params)
    elsif resource == 'templates'
      templates_handler(verb, params)
    else
      return ErrorResponse("Unknown resource: '#{resource}'.")
    end
  end # def execute

  def boxes_handler(verb, params)
    
  end # def boxes_handler
end # class VagabondSession
