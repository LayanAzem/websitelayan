class LinkTablesController < ApplicationController
  before_action :set_link_table, only: [:show, :edit, :update, :destroy]

  # GET /link_tables
  # GET /link_tables.json
  def index
    @link_tables = LinkTable.all
  end

  # GET /link_tables/1
  # GET /link_tables/1.json
  def show
  end

  # GET /link_tables/new
  def new
    @link_table = LinkTable.new
  end

  # GET /link_tables/1/edit
  def edit
  end

  # POST /link_tables
  # POST /link_tables.json
  def create
    @link_table = LinkTable.new(link_table_params)

    respond_to do |format|
      if @link_table.save
        format.html { redirect_to @link_table, notice: 'Link table was successfully created.' }
        format.json { render :show, status: :created, location: @link_table }
      else
        format.html { render :new }
        format.json { render json: @link_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /link_tables/1
  # PATCH/PUT /link_tables/1.json
  def update
    respond_to do |format|
      if @link_table.update(link_table_params)
        format.html { redirect_to @link_table, notice: 'Link table was successfully updated.' }
        format.json { render :show, status: :ok, location: @link_table }
      else
        format.html { render :edit }
        format.json { render json: @link_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /link_tables/1
  # DELETE /link_tables/1.json
  def destroy
    @link_table.destroy
    respond_to do |format|
      format.html { redirect_to link_tables_url, notice: 'Link table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link_table
      @link_table = LinkTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def link_table_params
      params.require(:link_table).permit(:role_id, :name, :idea_id, :user_id, :platform_id)
    end
end
