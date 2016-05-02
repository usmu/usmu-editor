%w{
  logging
  usmu/editor/version
}.each {|f| require f }

Class Usmu::Editor
  def initialize
    @log = Logging.logger[self]
    @log.debug("Initializing usmu-editor v#{VERSION}")
  end

  def commands(ui, c)
    @ui = ui
  end

  private

  attr_reader :log
end
