class TrackerController < ApplicationController
  def index
    @trackers = Tracker.all
    render(status: 200, json: @trackers.to_json)
  end

  def show
    user_id = params[:userId]
    @tracker = Tracker.where(user_id: user_id)
    render(status: 200, json: @tracker.to_json)
  end

  def create_all
    params[:trackers].each do |tracker_params|
      post = Tracker.new(tracker_params.permit(:user_id, :title, :time))
      post.save!
    end
    render(status: 200, json: {message: "Success"})
  end
end
