class BarcodeImageScanner

  def initialize(scan)
    @scan = scan
  end

  def run
    begin
      @scan.content = zbar(convert_to_blob(set_format_to_pgm(image_magick)))
    rescue
    end
  end

  def image_magick
    Magick::Image.read(@scan.image.url).first
  end

  def set_format_to_pgm(image)
    image.format = 'PGM'
    image
  end

  def convert_to_blob(pgm)
    pgm.to_blob
  end

  def zbar(blob)
    ZBar::Image.from_pgm(blob).process.first.data
  end

end