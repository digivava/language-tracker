class RecordsController < ApplicationController
  before_action :set_record, only: %i[ show update destroy ]

  # GET /records
  def index
    @records = Record.all

    render json: @records
  end

  # GET /records/1
  def show
    render json: @record
  end

  # POST /records
  def create
    language = record_params[:language]
    language = language.capitalize if language.present?
    languageFromDB = Language.find_by(name: language)

    # we'll use the real user later, for now it's just the one user from the seed
    user = User.find_by(username: "test_user")

    @record = Record.new(record_params.except(:language))
    @record.language = languageFromDB
    @record.user = user

    if @record.save
      render json: @record, status: :created, location: @record
    else
      render json: @record.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /records/1
  def update
    if @record.update(record_params)
      render json: @record
    else
      render json: @record.errors, status: :unprocessable_entity
    end
  end

  # DELETE /records/1
  def destroy
    @record.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @record = Record.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def record_params
      params.require(:record).permit(:language, :number, :units, :timestamp, :activity)
    end
end
