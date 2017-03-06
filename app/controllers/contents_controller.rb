class ContentsController < ApplicationController

  http_basic_authenticate_with :name => ENV['ADMIN_USER'], :password => ENV['ADMIN_PASS'], except: [:index, :show]

  before_action :set_is_admin
  before_action :set_content, only: [:show, :edit, :update, :destroy]

  def index
    @contents = Content.all
  end

  def show
  end

  def new
    @content = Content.new
  end

  def edit
  end

  def create
    @content = Content.new(content_params)

    respond_to do |format|
      if @content.save
        format.html { redirect_to contents_path, notice: 'Content was successfully created.' }
        format.json { render :show, status: :created, location: @content }
      else
        format.html { render :new }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @content.update(content_params)
        format.html { redirect_to contents_path, notice: 'Content was successfully updated.' }
        format.json { render :show, status: :ok, location: @content }
      else
        format.html { render :edit }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @content.destroy
    respond_to do |format|
      format.html { redirect_to contents_url, notice: 'Content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content
      @content = Content.find(params[:id])
    end

    def set_is_admin
      @is_admin = true
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def content_params
      params.require(:content).permit(:content_text, :content_key)
    end
end
