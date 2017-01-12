Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "MTouchID"
s.summary = "MTouchID lets the user to use the TouchID System easily."
s.requires_arc = true

# 2
s.version = "0.1.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4
s.author = { "Ori Mizrachi" => "orim553@gmail.com" }

# 5
s.homepage = "https://github.com/orim553/MTouchID.git"

# 6
s.source = { :git => "https://github.com/orim553/MTouchID.git", :tag => "#{s.version}"}

# 7
s.framework = "UIKit"
s.framework = "LocalAuthentication"
# 8
s.source_files = "MTouchID/**/*.{swift}"
end
