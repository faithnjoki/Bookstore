class MyreadingbooksController < ApplicationController
  before_action :set_myreadingbook, only: %i[ show edit update destroy ]

  # GET /myreadingbooks or /myreadingbooks.json
  def index
    @myreadingbooks = Myreadingbook.all
  end

  # GET /myreadingbooks/1 or /myreadingbooks/1.json
  def show
  end

  # GET /myreadingbooks/new
  def new
    @myreadingbook = Myreadingbook.new
  end

  # GET /myreadingbooks/1/edit
  def edit
  end

  # POST /myreadingbooks or /myreadingbooks.json
  def create
    @myreadingbook = Myreadingbook.new(myreadingbook_params)

    respond_to do |format|
      if @myreadingbook.save
        format.html { redirect_to myreadingbook_url(@myreadingbook), notice: "Myreadingbook was successfully created." }
        format.json { render :show, status: :created, location: @myreadingbook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @myreadingbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myreadingbooks/1 or /myreadingbooks/1.json
  def update
    respond_to do |format|
      if @myreadingbook.update(myreadingbook_params)
        format.html { redirect_to myreadingbook_url(@myreadingbook), notice: "Myreadingbook was successfully updated." }
        format.json { render :show, status: :ok, location: @myreadingbook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @myreadingbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myreadingbooks/1 or /myreadingbooks/1.json
  def destroy
    @myreadingbook.destroy

    respond_to do |format|
      format.html { redirect_to myreadingbooks_url, notice: "Myreadingbook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myreadingbook
      @myreadingbook = Myreadingbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def myreadingbook_params
      params.require(:myreadingbook).permit(:name, :author, :genre, :rating)
    end
end
