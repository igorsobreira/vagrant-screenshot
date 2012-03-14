module Vagrant

  module Command
    class ScreenshotCommand < Base

      def execute
        options = {}
        filenames = []

        opts = build_screenshot_options options
        argv = parse_options(opts)
        return if !argv

        vm_name = argv[0]
        with_target_vms(vm_name) do |vm|
          if vm.state != :running
            notify :warn, "Skiping #{vm.name}. VM not running"
          else
            notify :info, "Taking screenshot for #{vm.name}"
            filename = create_output_filename vm.name
            take_screenshot vm, filename
            filenames << filename
            open_generated_files(filenames) if options[:open]
          end
        end

      end

      protected

      def open_command
        # Currently just Mac's 'open' command is supported, if it's
        # not found the -o option is not provided
        %x[which open].chomp
      end

      def build_screenshot_options(options)
        opts = OptionParser.new do |opts|
          opts.banner  = "Take screenshot from all active VMs.\n\n"
          opts.banner += "Usage: vagrant screenshot [vm-name1, vm-name2, ...]\n\n"

          if !open_command.empty?
            opts.on("-o", "--open", "Opens the generated images") do |c|
              options[:open] = true
            end
          end

        end
        opts
      end

      def create_output_filename(vm_name)
        "screenshot-#{vm_name}.png"
      end

      def take_screenshot(vm, filename)
        vm.driver.execute_command ["controlvm", vm.uuid, "screenshotpng", filename]
        notify :success, "Screenshot saved on #{filename}"
      end

      def open_generated_files(filenames)
        %x[open #{filenames.join(' ')}]
      end

      def notify(level, msg)
        @env.ui.send(level, msg)
      end

    end
  end

end
