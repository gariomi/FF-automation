require 'webdrivers'
require 'selenium-webdriver'

# Создаем список доменов, которые хотим проверить
domains = [
  { url: 'https://flyforsinkelser.no/', expected_title: 'Forsinket eller avlyst fly?' },
  { url: 'https://flyforsinkelse.dk/', expected_title: 'Forsinket eller aflyst fly?' },
  { url: 'https://myflightrefund.ca/', expected_title: 'Delayed or cancelled flight?' },
  { url: 'https://flugrueckerstattung.de/', expected_title: 'Verspäteter oder annullierter Flug?' },
  { url: 'https://flygforsening.se/', expected_title: 'Försenat eller inställt flyg?' },
  { url: 'https://zpozdeno.cz/', expected_title: 'Zpožděný nebo zrušený let?' },
  { url: 'https://zwrotzalot.pl/', expected_title: 'Opóźniony lub odwołany lot?' },
  { url: 'https://myflightrefund.com/', expected_title: 'Delayed or cancelled flight?' },
  { url: 'https://peruutetutlennot.fi/', expected_title: 'Myöhästynyt tai peruttu lento?' }
]

# Создаем экземпляр веб-драйвера Chrome с указанием пути к драйверу
driver = Selenium::WebDriver.for :chrome, service: Selenium::WebDriver::Service.chrome(path: 'D:/Ruby/chromedriver.exe')

domains.each do |domain|
  driver.get(domain[:url])
  element = driver.find_element(:xpath, '//*[@id="app"]/div[2]/div/div[1]/div[2]/div/div/div[1]/div/h1')
  title_h1 = element.text

  if title_h1 == domain[:expected_title]
    puts "Domain '#{domain[:url]}' correct"
  else
    puts "Domain '#{domain[:url]}' incorrect"
  end
end

driver.quit