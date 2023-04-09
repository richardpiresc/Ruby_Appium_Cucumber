require 'appium_lib'
require 'cucumber'

def caps
{ caps: {
  platformName: "Android",
  deviceName: "S22 Ultra",
  appPackage: "io.platformbuilders.challenge.qa",
  appActivity: "host.exp.exponent.MainActivity",
  newCommandTimout: "3600",
}}
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

