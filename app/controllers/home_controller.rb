class HomeController < ApplicationController
  def index
  end
  def coming_soon
     set_meta_tags title: "Tagore Garden Wala",
                keywords: "tagore garden wala,tagore garden,tagore,garden",
                description: "Coming Soon,tagore garden wala,tagore garden,tagore,garden"
  end
  def about_us

  end

  def contact_us
  end

  def faq
  end

  def map_display
    @entries = Category.find(params[:category]).entries.paginate(:page => params[:page], :per_page => 2)
    @category = Category.find(params[:category]).category_name.downcase
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
