Pod::Spec.new do |s|
  s.name         = "WHCPickFlavor"
  s.version      = "0.1.0"
  s.summary      = "WHCPickFlavor lets a user select an ice cream flavor."

  s.description  = <<-DESC
                   WHCPickFlavor lets a user select an ice cream flavor.
                   WHCPickFlavor lets a user select an ice cream flavor.
                   DESC

  s.homepage     = "https://github.com/Eunicelle/WHCPickFlavor"
  
  s.license      = "MIT"
  s.author       = { "王海晨" => "wanghc0000@gmail.com" }
  s.source       = { :git => "https://github.com/Eunicelle/WHCPickFlavor.git", :tag => s.version.to_s }

  s.source_files = "WHCPickFlavor/**/*.{swift}"
  s.resources = "WHCPickFlavor/**/*.{png,jpeg,jpg,storyboard,xib}"

  s.framework  = "UIKit"
  s.dependency 'Alamofire'
  s.dependency 'MBProgressHUD'

end
