class CommentsController < OpenReadController
  before_action :set_comment, only: [:show, :update, :destroy]
  # before_action :set_playlist

  def search_tracks
    @beer = Playlist.search_by_key(params[:search_key])

    render json: @beer
  end

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all

    render json: @comments
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    render json: @comment
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)

    @comment.user_id = get_user

    if @comment.save
      render json: @comment, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])

    if @comment.update(comment_params)
      head :no_content
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy

    head :no_content
  end

  private

    def get_user
      User.find_by token: request.headers["HTTP_AUTHORIZATION"].split('=')[-1]
    end

    def set_playlist
      @playlist = Playlist.find(params[:playlist_id])
    end

    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:desc, :user_id, :song_id, :playlist_id)
    end
end
