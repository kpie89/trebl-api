class PlaylistsController < OpenReadController
  before_action :set_playlist, only: [:update, :destroy]

  # GET /playlists
  # GET /playlists.json
  def index
    @playlists = Playlist.all

    render json: @playlists
  end

  # GET /playlists/1
  # GET /playlists/1.json
  def show
    render json: Playlist.find(params[:id])
  end

  # POST /playlists
  # POST /playlists.json
  def create
    # @song = current_user.playlist.songs.new song_params
    # @song.playlist_id = @playlist.id
    @playlist = current_user.playlists.build(playlist_params)

    if @playlist.save
      render json: @playlist, status: :created, location: @playlist
    else
      render json: @playlist.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /playlists/1
  # PATCH/PUT /playlists/1.json
  def update
    @playlist = current_user.playlists.find(params[:id])

    if @playlist.update(playlist_params)
      head :no_content
    else
      render json: @playlist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /playlists/1
  # DELETE /playlists/1.json
  def destroy
    @playlist.destroy

    head :no_content
  end

  private

    def set_playlist
      @playlist = current_user.playlists.find(params[:id])
    end

    def playlist_params
      params.require(:playlist).permit(:title, :desc, :person_id, :song_id, :user_id)
    end
end
