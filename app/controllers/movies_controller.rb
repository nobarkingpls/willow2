class MoviesController < ApplicationController
  before_action :set_movie, only: %i[ show edit update destroy ]

  # GET /movies or /movies.json
  def index
    @movies = Movie.all
  end

  # GET /movies/1 or /movies/1.json
  def show
  end

  # GET /movies/new
  def new
    @movie = Movie.new
    1.times { @movie.rights.build }
    1.times { @movie.categories.build }
    1.times { @movie.classifications.build }
    1.times { @movie.advisories.build }
    1.times { @movie.casts.build }
  end

  # GET /movies/1/edit
  def edit
    1.times { @movie.rights.build }
    1.times { @movie.categories.build }
    1.times { @movie.advisories.build }
    1.times { @movie.casts.build }
  end

  # POST /movies or /movies.json
  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: "Movie was successfully created." }
        format.json { render :show, status: :created, location: @movie }
      else
        1.times { @movie.rights.build }
        1.times { @movie.categories.build }
        1.times { @movie.advisories.build }
        1.times { @movie.casts.build }
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1 or /movies/1.json
  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: "Movie was successfully updated." }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1 or /movies/1.json
  def destroy
    @movie.destroy!

    respond_to do |format|
      format.html { redirect_to movies_path, status: :see_other, notice: "Movie was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def movie_params
      params.expect(movie: [ :title, :year, rights_attributes: [ [ :id, :country_code, :start, :finish, :_destroy ] ], categories_attributes: [ [ :id, :genre_name, :_destroy ] ], classifications_attributes: [ [ :id, :rating_code, :_destroy ] ], advisories_attributes: [ [ :id, :reason_code, :_destroy ] ], casts_attributes: [ [ :id, :actor_name, :_destroy ] ]  ])
    end
end
