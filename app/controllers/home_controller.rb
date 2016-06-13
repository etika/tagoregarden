class HomeController < ApplicationController
  def index
  end
  def coming_soon
     set_meta_tags title: "Tagore Garden Wala",
                keywords: "tagore garden wala,tagore garden,tagore,etikaz",
                description: "Coming Soon,tagore garden wala,tagore garden,tagore,etikaz"
  end
end
