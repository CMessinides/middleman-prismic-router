# Require core library
require 'middleman-core'

# Extension namespace
module Middleman
  module PrismicRouter
    class PrismicController < Extension
      option :url, '', %q{The URL to your Prismic.io repo's API endpoint}
      option :map, {}, 'A map of aliases (the keys) for the results of Prismic queries (the values)'

      def initialize(app, options_hash={}, &block)
        super

        require 'prismic'
        require 'time'
        require 'middleman-prismic-router/documents'

        begin
          @api = ::Prismic.api(options.url)
        rescue ::Prismic::Error => e
          puts "ERROR: Prismic Router encountered an error when it tried to connect to your Prismic repo"
          puts "Ensure you provided the router with a valid Prismic.io URL, and check your network connection"
          raise e
        end

        @documents = Documents.new(app, self)
      end
    end
  end
end

