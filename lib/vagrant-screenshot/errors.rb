module Vagrant

  module Errors

    class VBoxManageCommandNotFound < VagrantError
      def initialize
        message = "VBoxManage command not found"
        super
      end
    end

  end

end
