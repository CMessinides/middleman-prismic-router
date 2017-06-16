require "middleman-core"

Middleman::Extensions.register :prismic_router do
  require "middleman-prismic-router/extension"
  PrismicController
end
