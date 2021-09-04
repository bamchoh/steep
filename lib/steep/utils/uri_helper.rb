module Steep
  module Utils
    module URIHelper
      def decode_uri(path)
        path
      end

      def uri(path)
        URI.parse(path.to_s).tap do |uri|
          uri.scheme = "file"
        end
      end
    end
  end
end
