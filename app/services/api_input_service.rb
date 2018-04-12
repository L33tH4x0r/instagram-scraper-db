class ApiInputService
  @@save_error = "CRITICAL ERROR: Unable to save models, check the code"
  def initialize(opts = {})
    opts.each_pair do |key, value|
      self.instance_variable_set("@#{key}", value)
    end

    @params = opts
  end
end
