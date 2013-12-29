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

REST-CLI

Takes 'verb url' and invokes 'curl'. Processes header and standard results for
user messsages and echos appropriately.

Services support 'text/plain' response format (for GET) requests.

Output from not get requests consists of action related messages only. Data is
generally ignored. A user would hawe to PUT or POST, then GET to 'see' results
like we would expect with a browser. (Auto-GET mode for standard re-get for UI
behavior?)
