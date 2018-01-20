require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://www.google.com"

element = driver.find_element(name: 'q')
element.send_keys "Hello WebDriver!"
element.submit

puts driver.title

puts driver.execute_script('return window.location.pathname')

el = driver.execute_script('return document.body')
driver.execute_script('return arguments[0].tagName', el)

wait = Selenium::WebDriver::Wait.new(timeout: 10)
wait.until { driver.find_element(id: 'logo') }

driver.manage.window.move_to 300, 400
driver.manage.window.resize_to 500, 800
driver.manage.window.resize_to 500, 300
driver.manage.window.maximize


driver.quit
