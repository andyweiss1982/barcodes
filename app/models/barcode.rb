class Barcode < ActiveRecord::Base
  has_attached_file :image, 
    styles: { medium: "300x300>", thumb: "100x100>" },
    :storage => :s3,
    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }
  validates_attachment :image, presence: true,
    content_type: { content_type: "image/jpg" }

  def s3_credentials
    {
      :bucket => ENV['AWS_BUCKET_NAME'], 
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'], 
      :secret_access_key => ENV['AWS_SECRET_KEY']
    }
  end
  

end