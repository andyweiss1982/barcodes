class BarcodesController < ApplicationController
  require 'barby'
  require 'barby/barcode/code_128'
  require 'barby/outputter/rmagick_outputter'

  before_action :set_barcode, only: :show

  # GET /barcodes/1
  def show
  end

  # GET /barcodes/new
  def new
    @barcode = Barcode.new
  end

  # POST /barcodes
  def create
    @barcode = Barcode.new(barcode_params)
    
    BarcodeImageGenerator.new(@barcode).run

    if @barcode.save
      redirect_to @barcode, notice: 'Barcode was successfully created.'
    else
      render :new
    end
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
