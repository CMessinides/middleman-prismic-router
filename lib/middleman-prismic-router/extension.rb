# Require core library
require 'middleman-core'

# Extension namespace
module Middleman
  module PrismicRouter
    class PrismicController < ::Middleman::Extension
      option :url, '', %q{The URL to your Prismic.io repo's API endpoint}
      option :map, {}, 'A map of aliases (the keys) for the results of Prismic queries (the values)'

      def initialize(app, options_hash={}, &block)
        super

        require 'prismic'
        require 'time'
      end

      def after_configuration
        # Do something
      end

      # A Sitemap Manipulator
      # def manipulate_resource_list(resources)
      # end

      # helpers do
      #   def a_helper
      #   end
      # end
    end
  end
end

