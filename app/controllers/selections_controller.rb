class SelectionsController < ApplicationController
  def index
    @selections = policy_scope(Selection)
    selections = Selection.where(itinerary_id: 1)
    @itinerary_activities = Activity.where(id: selections.last
  end
end
