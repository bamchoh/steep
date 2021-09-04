module Steep
  module Utils
    module URIHelper
      def encode_uri(path)
        path.gsub(/^file:\/\/\//, "").gsub(/\\/, "\/").split("/").map { |elem|
          URI.encode_www_form_component(elem)
        }.join("/")
      end

      def decode_uri(path)
        URI.decode_www_form_component(URI.parse(path.gsub(/^file:\/\/\//, "")).to_s)
      end

      def uri(path)
        URI::Generic.build({
          scheme: "file",
          path: encode_uri("/#{path}")
        })
      end
    end
  end
end
