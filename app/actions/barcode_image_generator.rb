class BarcodeImageGenerator
  attr_accessor :barby

  def initialize(barcode)
    @barcode = barcode
  end

  def run
    define_outputter
    unique_string = unique_timestamp

    write_file(unique_string)
    associate_image_with_barcode(unique_string)
  end

  def barby
    @barby ||= Barby::Code128B.new(@barcode.content)
  end

  def define_outputter
    Barby::RmagickOutputter.new(barby).to_jpg
  end

  def unique_timestamp
    Time.now.to_i.to_s
  end

  def write_file(unique_string)
    File.open("#{Rails.root}/tmp/#{unique_string}barcode.jpg",'wb') do |f|
      f.write barby.to_jpg(height: 50, xdim: 3)
    end
  end

  def associate_image_with_barcode(unique_string)
    File.open("#{Rails.root}/tmp/#{unique_string}barcode.jpg",'r') do |f|
      @barcode.image = f
      @barcode.image_content_type = "image/jpg"
    end
  end

end