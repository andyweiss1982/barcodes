class BarcodesController < ApplicationController
  before_action :set_barcode, only: [:show, :edit, :update, :destroy]

  require 'barby'
  require 'barby/barcode/code_128'
  require 'barby/outputter/rmagick_outputter'











  # GET /barcodes
  def index
    @barcodes = Barcode.all
  end

  # GET /barcodes/1
  def show
  end

  # GET /barcodes/new
  def new
    @barcode = Barcode.new
  end

  # GET /barcodes/1/edit
  def edit
  end

  # POST /barcodes
  def create
    @barcode = Barcode.new(barcode_params)
    
    input = Barby::Code128B.new(@barcode.content)
    
    outputter = Barby::RmagickOutputter.new(input)
    outputter.to_jpg    

    unique_string = Time.now.to_i.to_s

    File.open("#{Rails.root}/tmp/#{unique_string}barcode.jpg",'wb') do |f|
      f.write input.to_jpg(height: 50, xdim: 3)
    end

    File.open("#{Rails.root}/tmp/#{unique_string}barcode.jpg",'r') do |f|
      @barcode.image = f
      @barcode.image_content_type = "image/jpg"
    end

    # file = Tempfile.new('barcode')
    # file.write input.to_jpg(height: 50, xdim: 3)

    # @barcode.image = file
    # @barcode.image_content_type = "image/jpg"

    # file.close
    # file.unlink

    if @barcode.save
      redirect_to @barcode, notice: 'Barcode was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /barcodes/1
  def update
    if @barcode.update(barcode_params)
      redirect_to @barcode, notice: 'Barcode was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /barcodes/1
  def destroy
    @barcode.destroy
    redirect_to barcodes_url, notice: 'Barcode was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barcode
      @barcode = Barcode.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def barcode_params
      params.require(:barcode).permit(:content)
    end
end
