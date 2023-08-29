require './spec_helper'

DOMAINS = [
  { url: 'https://flyforsinkelser.no/', expected_title: 'Forsinket eller avlyst fly?' },
  { url: 'https://flyforsinkelse.dk/', expected_title: 'Forsinket eller aflyst fly?' },
  { url: 'https://myflightrefund.ca/', expected_title: 'Delayed or cancelled flight?' },
  { url: 'https://flugrueckerstattung.de/', expected_title: 'Verspäteter oder annullierter Flug?' },
  # { url: 'https://flygforsening.se/', expected_title: 'Försenat eller inställt flyg?' },
  { url: 'https://zpozdeno.cz/', expected_title: 'Zpožděný nebo zrušený let?' },
  { url: 'https://zwrotzalot.pl/', expected_title: 'Opóźniony lub odwołany lot?' },
  { url: 'https://myflightrefund.com/', expected_title: 'Delayed or cancelled flight?' },
  { url: 'https://peruutetutlennot.fi/', expected_title: 'Myöhästynyt tai peruttu lento?' }
]

describe 'Main page' do
  it 'has correct h1 title' do
    DOMAINS.each do |domain|
      @driver.get(domain[:url])
      element = @driver.find_element(:xpath, '//*[@id="app"]/div[2]/div/div[1]/div[2]/div/div/div[1]/div/h1')
      title_h1 = element.text
      expect(title_h1).to include(domain[:expected_title])
    end
  end

  it 'has correct phone number' do
    @driver.get('https://flyforsinkelse.dk')
    element = @driver.find_element(:xpath, '//*[@id="app"]/div[1]/div/div[2]/nav/div[2]/div[1]/a')
    phone_number = element.text
    expect(phone_number).to include("+45 78730974")
  end
end
