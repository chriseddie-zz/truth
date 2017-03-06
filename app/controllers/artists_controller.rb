class ArtistsController < ApplicationController
  # before_action :authenticate, except: [:index, :show]
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  http_basic_authenticate_with :name => ENV['ADMIN_USER'], :password => ENV['ADMIN_PASS'], except: [:index, :show]

  # GET /artists
  # GET /artists.json
  def index
    @artists = Artist.all
    @title = "artists"
  end

  def admin
    @artists = Artist.all
    @is_admin = true
  end

  # GET /artists/1
  # GET /artists/1.json
  def show
  end

  # GET /artists/new
  def new
    @artist = Artist.new
    @is_admin = true
  end

  # GET /artists/1/edit
  def edit
    @is_admin = true
  end

  # POST /artists
  # POST /artists.json
  def create
    @artist = Artist.new(artist_params)

    respond_to do |format|
      if @artist.save
        format.html { redirect_to artists_admin_path, notice: 'Artist was successfully created.' }
        format.json { render :show, status: :created, location: @artist }
      else
        format.html { render :new }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artists/1
  # PATCH/PUT /artists/1.json
  def update
    respond_to do |format|
      if @artist.update(artist_params)
        format.html { redirect_to artists_admin_path, notice: 'Artist was successfully updated.' }
        format.json { render :show, status: :ok, location: @artist }
      else
        format.html { render :edit }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artists/1
  # DELETE /artists/1.json
  def destroy
    @artist.destroy
    respond_to do |format|
      format.html { redirect_to artists_admin_path, notice: 'Artist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist
      @artist = Artist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artist_params
      params.require(:artist).permit(:artist_name, :artist_band, :artist_img, :artist_hero_img, :artist_bio, :artist_bio_src, :kit_specs, :kit_material, :kit_finish, :kit_img, :social_inst, :social_fb, :social_twit)
    end
end
