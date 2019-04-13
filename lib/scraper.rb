require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url) #responsible for scraping the index page that lists all of the students
    doc = Nokogiri::HTML(open ("./fixtures/student-site/index.html"))

    students = []

    doc.css("div.student-card").each do |student|
      students << student = {
      #name: doc.css("div.card-text-container h4.student-name").first.text,
      #location: doc.css("div.card-text-container p.student-location").first.text,
      #profile_url: doc.css("div.student-card a").first.text  # ***Grab the link this one ***
      }
        #binding.pry
    end
  end



  def self.scrape_profile_page(profile_url) #responsible for scraping an individual student's profile page to get further information about that student
    doc = Nokogiri::HTML(open (profile_url))
    students = {}
    doc.css("div.social-icon-container a").each do |social_link|
      link = social_link.attribute("href").text

    #binding.pry
    end
  end

end
