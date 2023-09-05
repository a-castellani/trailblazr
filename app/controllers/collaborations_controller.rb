class CollaborationsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_collaboration, only: %i[show edit update destroy]

  def index
    @collaborations = policy_scope(Collaboration)
  end

  def new
    @collaboration = Collaboration.new
    authorize @collaboration
  end

  def create
    @collaboration = Collaboration.new(collaboration_params)
    @collaboration.user = current_user
    authorize @collaboration
    save_changes
  end

  def show
    @collaboration = Collaboration.find(params[:id])
    authorize @collaboration
  end

  def destroy
    @collaboration.destroy
    # authorize @collaboration
    redirect_to collaborations_path
  end

  private

  def collaboration_params
    params.require(:collaboration).permit(:title)
  end

  def set_collaboration
    @collaboration = Collaboration.find(params[:id])
  end

  def save_changes
    if @collaboration.save
      redirect_to collaboration_path(@collaboration)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
