class VagabondSession
  def initialize()
  end # def initialize

  def execute(noun, verb, params)
    # We could do this with a totally dynamic call if we got a few more nouns.
    if noun == 'boxes'
      boxes_action(verb, params)
    elsif noun == 'environments'
      environments_action(verb, params)
    elsif noun == 'templates'
      templates_action(verb, params)
    else
      return ErrorResponse("Unknown resource: '#{noun}'.")
    end
  end # def execute

  def boxes_action(verb, params)
end # class VagabondSession
