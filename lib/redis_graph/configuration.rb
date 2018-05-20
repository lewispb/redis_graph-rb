module RedisGraph
  def self.config
    @_configuration ||= Configuration.new
  end

  class Configuration
    attr_accessor :redis
  end
end
