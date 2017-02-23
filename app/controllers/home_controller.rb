    require 'sanitize'
class HomeController < ApplicationController
  caches_page :index
  def index
    Rack::MiniProfiler.step("fetch projects") do
     Category.all
    end
      set_meta_tags title: "Tagore Garden Wala |One place for All about tagore garden",
                keywords: "tagore garden wala,tagore garden,tagore,garden",
                description: "Coming Soon,to know all about tagore garden "
  end
  def coming_soon
     set_meta_tags title: "Tagore Garden Wala |One place for All about tagore garden",
                keywords: "tagore garden wala,tagore garden,tagore,garden",
                description: "Coming Soon,to know all about tagore garden "
  end
  def about_us
      set_meta_tags title: "Tagore Garden Wala |About Us",
                keywords: "tagore garden wala,tagore garden,tagore,garden,about us",
                description: "A group of people trying to make life simple at tagore garden "

  end

  def contact_us
      set_meta_tags title: "Tagore Garden Wala |Contact Us",
                keywords: "tagore garden wala,tagore garden,tagore,garden,contact us",
                description: "Contact Us tagoregardenwala@gmail.com` "
  end

  def faq
      set_meta_tags title: "Tagore Garden Wala |FAQ",
                keywords: "tagore garden wala,tagore garden,tagore,garden,faq",
                description: "Frequently asked Questions "
  end

  def search
    results=Entry.search params[:q]
    @records=results.records
  end

  def map_display
    @entries = Category.find(params[:category]).entries.paginate(:page => params[:page], :per_page => 4)
    @category = Category.find(params[:category])
    @json_map=[]
    @entries.each do |e|
      @json_map << {lat: e.latitude,lng: e.longitude, infowindow: e.other_details,
        # picture: {
        # url: "/assets/"+category+"_icon.jpg",
      #   width:  80,
      #   height: 80
      # }
    }
    end
    @json_map.to_json
  end
end
