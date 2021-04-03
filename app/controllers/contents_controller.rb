class ContentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_content, only: %i[ show edit update destroy ]
  def index
    @contents = current_user.contents
  end
  # GET /contentS/1 or /contentS/1.json
  def show
  end

  def new
    @content = Content.new
  end

  def edit
  end

  def create
    @content = current_user.contents.build(content_params)
    if @content.save
      associate_tags!
      redirect_to contents_path, notice: "Content successfully created!"
    else
      render :new
    end
  end

  # PATCH/PUT /contents/1 or /contents/1.json
  def update
    respond_to do |format|
      if @content.update(content_params)
        associate_tags!
        format.html { redirect_to @content, notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @content }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contents/1 or /contents/1.json
  def destroy
    @content.destroy
    respond_to do |format|
      format.html { redirect_to contents_path, notice: "Content was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_content
    @content = Content.find(params[:id])
  end

  def tags_params
    params.require(:content).permit(tags: [])[:tags].reject(&:blank?)
  end

  def content_params
    params.require(:content).permit(:title,:description)
  end

  def associate_tags!
    tags = tags_params.map do |tag_name|
      current_user.tags.where(name: tag_name).first_or_initialize
    end
    @content.tags = tags
  end
end
