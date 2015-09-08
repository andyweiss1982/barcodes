require 'rails_helper'

describe "User makes a bar code, saves it and then scans the barcode" do |variable|

  before(:each) do 
    @barcode_string = "#{rand(9)}#{rand(9)}#{rand(9)}#{rand(9)}#{rand(9)}#{rand(9)}#{rand(9)}#{rand(9)}"
  end

  it "does all of the above" do
    
    expect(Barcode.count).to eq(0)
    expect(Scan.count).to eq(0)

    visit root_url
    expect(page).to have_css('.home-index')

    click_link "Make a Barcode"
    expect(page).to have_css('.barcodes-new')

    fill_in "barcode_content", with: @barcode_string
    click_button "Create Barcode"

    expect(page).to have_css('.barcodes-show')
    expect(Barcode.count).to eq(1)

    aws_url = page.find('#barcode_image')['src']
    expect(aws_url.include? 'barcode.jpg').to be true 

    File.open("#{Rails.root}/tmp/test_barcode.jpg", "wb") do |f|
      f.write open(aws_url).read
    end

    click_link "Scan a Barcode"
    expect(page).to have_css('.scans-new')

    attach_file("scan_image", "#{Rails.root}/tmp/test_barcode.jpg")
    click_button "Scan"

    expect(page).to have_css('.scans-show')
    expect(Scan.count).to eq(1)

    expect(page).to have_content @barcode_string

  end

end