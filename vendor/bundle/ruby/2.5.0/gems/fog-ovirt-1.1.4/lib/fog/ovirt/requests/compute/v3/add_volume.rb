module Fog
  module Compute
    class Ovirt
      class V3
        class Real
          DISK_SIZE_TO_GB = 1_073_741_824
          def add_volume(id, options = {})
            raise ArgumentError, "instance id is a required parameter" unless id
            options[:size] = options[:size_gb].to_i * DISK_SIZE_TO_GB if options[:size_gb]
            client.add_volume(id, options)
          end
        end

        class Mock
          def add_volume(id, _options = {})
            raise ArgumentError, "instance id is a required parameter" unless id
            true
          end
        end
      end
    end
  end
end
