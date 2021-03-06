# noinspection RubyResolve,RubyResolve
require 'test_helper'
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

class ClientTest < Minitest::Test

  def setup
    @app = App.new
  end

  attr_reader :app

  def test_increments
    assert_equal app.increment(2), 3, 'App should increment a number'
  end

end
