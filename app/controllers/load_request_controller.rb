class LoadRequestController < ApplicationController
  def index
    @load_requests= LoadRequest.all
  end
end
