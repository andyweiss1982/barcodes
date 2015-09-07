class ScansController < ApplicationController
  require 'zbar'
  require 'rmagick'

  before_action :set_scan, only: :show

  # GET /scans/1
  def show
  end

  # GET /scans/new
  def new
    @scan = Scan.new
  end

  # POST /scans
  def create
    @scan = Scan.new(scan_params)
    @scan.save(validate: false)
    BarcodeImageScanner.new(@scan).run

    if @scan.save
      redirect_to @scan, notice: 'Barcode was successfully scanned.'
    else
      redirect_to new_scan_path, notice: 'Invalid barcode.'
    end
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scan
      @scan = Scan.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def scan_params
      params.require(:scan).permit(:image)
    end
end
