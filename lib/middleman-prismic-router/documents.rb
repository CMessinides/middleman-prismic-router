module Middleman
  module Prismic
    class Documents
      def initialize(app, controller)
        @app = app
        @api = controller.api
      end

      def fetch
      end

      def recursive_fetch(query, collection=[], opts={})
        opts["page"] ||= 1
        response = @api.query(query, opts)
        collection += response.results

        if response.next_page
          opts["page"] += 1
          recursive_fetch(type, collection, opts)
        else
          collection
        end
      end
    end
  end
end
