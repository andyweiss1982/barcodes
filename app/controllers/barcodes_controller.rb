class BarcodesController < ApplicationController
  require 'barby'
  require 'barby/barcode/code_128'
  require 'barby/outputter/rmagick_outputter'

  before_action :set_barcode, only: :show

  # GET /barcodes/1
  def show
    respond_to do |format|
      format.html {}
      format.jpg do
        data = open(@barcode.image.url) 
        send_data data.read, filename: "barcode.jpg"
      end
    end
  end

  # GET /barcodes/new
  def new
    @barcode = Barcode.new
  end

  # POST /barcodes
  def create
    @barcode = Barcode.new(barcode_params)
    unique_string = BarcodeImageGenerator.new(@barcode).run
    if @barcode.save
      File.delete("#{Rails.root}/tmp/#{unique_string}barcode.jpg")
      redirect_to @barcode, notice: 'Barcode was successfully created.'
    else
      redirect_to new_barcode_path, notice: 'There was a problem with your submission.'
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
