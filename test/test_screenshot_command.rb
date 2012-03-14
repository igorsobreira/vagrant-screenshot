require "test_helper"

class ScreenshotCommand < BaseTestCase

  def setup
    @env = vagrant_env
  end

  def test_should_create_screenshots_for_all_actives_vms
    @env.cli "vagrant", "screenshot"
  end

end
