require "minitest/autorun"
require "vagrant-screenshot"

class BaseTestCase < MiniTest::Unit::TestCase
  include Vagrant::TestHelpers
end
