class EmailapiController < ApplicationController
def index
end

def subscribe
    @list_id = "24fcfde396"
    gb = Gibbon::Request.new(api_key: "1a11620c7fd6a6ca3e17e7a7573708fe-us15")
    # puts"gb lists",gb.lists(@list_id).members.retrieve 
    # list=gb.lists(@list_id).members.retrieve(params: {"fields": "members.email_address"})
    gb.lists(@list_id).members.create(
      body: {
        email_address: params[:email][:address],
        status: "subscribed"
      }
    )
      @flash_message = "You have been Successfully added to the list! :)"
    # respond_to do |format|
    #    format.json{

    #     render :json => {:message => "You have been Successfully added to the list! :)"}}
    # end

end
end
