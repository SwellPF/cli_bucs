class BucsRoster::Scraper
  
  def get_page
    Nokogiri::HTML(open("https://www.buccaneers.com/team/players-roster/"))
  end
  
  def scrape_player_index
     self.get_page.css(".nfl-o-roster__player-name a").attribute(".href").text
     binding.pry
  end
  
end