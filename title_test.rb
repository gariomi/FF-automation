require 'selenium-webdriver'

# Создаем экземпляр веб-драйвера Chrome с указанием пути к драйверу
driver = Selenium::WebDriver.for :chrome, service: Selenium::WebDriver::Service.chrome(path: 'D:/Ruby/chromedriver.exe')

driver.get('https://flyforsinkelser.no/')
   element = driver.find_element(:xpath, '//*[@id="app"]/div[2]/div/div[1]/div[2]/div/div/div[1]/div/h1')
   title_h1 = element.text

   title_h1_expected = 'Forsinket eller avlyst fly?'
   if title_h1 == title_h1_expected
   	puts 'domain "flyforsinkelser.no" correct'
   else
   	puts 'domain "flyforsinkelser.no" incorrect'
   	
   end


driver.get('https://flyforsinkelse.dk/')
   element = driver.find_element(:xpath, '//*[@id="app"]/div[2]/div/div[1]/div[2]/div/div/div[1]/div/h1')
   title_h1 = element.text

   title_h1_expected = 'Forsinket eller aflyst fly?'
   if title_h1 == title_h1_expected
   	puts 'domain "flyforsinkelse.dk" correct'
   else
   	puts 'domain "flyforsinkelse.dk" incorrect'
   	
   end


driver.get('https://myflightrefund.ca/')
   element = driver.find_element(:xpath, '//*[@id="app"]/div[2]/div/div[1]/div[2]/div/div/div[1]/div/h1')
   title_h1 = element.text

   title_h1_expected = 'Delayed or cancelled flight?'
   if title_h1 == title_h1_expected
   	puts 'domain "myflightrefund.ca" correct'
   else
   	puts 'domain "myflightrefund.ca" incorrect'
   	
   end


driver.get('https://flugrueckerstattung.de/')
   element = driver.find_element(:xpath, '//*[@id="app"]/div[2]/div/div[1]/div[2]/div/div/div[1]/div/h1')
   title_h1 = element.text

   title_h1_expected = 'Verspäteter oder annullierter Flug?'
   if title_h1 == title_h1_expected
   	puts 'domain "flugrueckerstattung.de" correct'
   else
   	puts 'domain "flugrueckerstattung.de" incorrect'
   	
   end


driver.get('https://flygforsening.se/')
   element = driver.find_element(:xpath, '//*[@id="app"]/div[2]/div/div[1]/div[2]/div/div/div[1]/div/h1')
   title_h1 = element.text

   title_h1_expected = 'Försenat eller inställt flyg?'
   if title_h1 == title_h1_expected
   	puts 'domain "flygforsening.se" correct'
   else
   	puts 'domain "flygforsening.se" incorrect'
   	
   end


driver.get('https://zpozdeno.cz/')
   element = driver.find_element(:xpath, '//*[@id="app"]/div[2]/div/div[1]/div[2]/div/div/div[1]/div/h1')
   title_h1 = element.text

   title_h1_expected = 'Zpožděný nebo zrušený let?'
   if title_h1 == title_h1_expected
   	puts 'domain "zpozdeno.cz" correct'
   else
   	puts 'domain "zpozdeno.cz" incorrect'
   	
   end


driver.get('https://zwrotzalot.pl/')
   element = driver.find_element(:xpath, '//*[@id="app"]/div[2]/div/div[1]/div[2]/div/div/div[1]/div/h1')
   title_h1 = element.text

   title_h1_expected = 'Opóźniony lub odwołany lot?'
   if title_h1 == title_h1_expected
   	puts 'domain "zwrotzalot.pl" correct'
   else
   	puts 'domain "zwrotzalot.pl" incorrect'
   	
   end


driver.get('https://myflightrefund.com/')
   element = driver.find_element(:xpath, '//*[@id="app"]/div[2]/div/div[1]/div[2]/div/div/div[1]/div/h1')
   title_h1 = element.text

   title_h1_expected = 'Delayed or cancelled flight?'
   if title_h1 == title_h1_expected
   	puts 'domain "myflightrefund.com" correct'
   else
   	puts 'domain "myflightrefund.com" incorrect'
   	
   end


driver.get('https://peruutetutlennot.fi/')
   element = driver.find_element(:xpath, '//*[@id="app"]/div[2]/div/div[1]/div[2]/div/div/div[1]/div/h1')
   title_h1 = element.text

   title_h1_expected = 'Myöhästynyt tai peruttu lento?'
   if title_h1 == title_h1_expected
   	puts 'domain "peruutetutlennot.fi" correct'
   else
   	puts 'domain "peruutetutlennot.fi" incorrect'
   	
   end


driver.quit