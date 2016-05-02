require 'usmu'
Usmu.verbose_logging
Logging.logger['Usmu::Editor::Rack'].info("Loading available Tilt modules.")
Usmu.load_lazy_tilt_modules
Usmu.plugins.load_plugins

class Usmu::Editor
  def self.application
    @application ||= Usmu::Editor::Rack.new
  end
end

class Usmu::Editor::Rack
  def call(env)
    ['200', {'Content-Type' => 'text/html'}, ['<h1>It works!</h1>']]
  end
end
