require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url) #responsible for scraping the index page that lists all of the students
<<<<<<< HEAD
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
=======
    #doc = Nokogiri::HTML(open(./fixtures/student-site/index.html)) #insert the URL of the web site we're scraping
    #student_card = doc.css(".student-card")
    #The return value of this method should be an array of hashes in which each hash represents a single student.
    #Array of hashes in which each hash represents a single students = [{student1, student2, student3]
    #students = []
      # student_card.each do |card|
      #   students << {
      #   :name => card.css(),
      #   :location => ,
      #   :profile_url =>
      # }
      # end

      students #returns an array of hashes in which each hash represents a single student.
    end
    #binding.pry


  def self.scrape_profile_page(profile_url) #responsible for scraping an individual student's profile page to get further information about that student
    #doc = Nokogiri::HTML(open(profile_url))
    #doc.css()
>>>>>>> 8158a1290f67054121bcc8af2a1377be9c0c5689
  end

end
