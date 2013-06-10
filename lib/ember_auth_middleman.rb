module EmberAuthMiddleman
  class << self
    def registered(app)
      app.after_configuration do
        dir = File.expand_path(File.dirname(__FILE__) + "/../js")
        sprockets.append_path dir
      end
    end
    alias :included :registered
  end
end

::Middleman::Extensions.register :ember_auth, EmberAuthMiddleman