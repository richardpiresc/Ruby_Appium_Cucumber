Before do
  $driver.start_driver
end

After do |scenario|
  if scenario.failed?
    if !File.directory?("screnshots")
      FileUtils.mkdir_p("screnshots")
    end

    time_stamp = Time.now.strftime("%d-%m-%Y_%H.%M.%S")
    screenshot_name = time_stamp + ".png"
    screenshot_file = File.join("screnshots", screenshot_name)
    $driver.screenshot(screenshot_file)
    embed("#{screenshot_file}", "image/page")
  end
  $driver.driver_quit
end
