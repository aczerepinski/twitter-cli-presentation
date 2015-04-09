require 'pry'
require 'open-uri'

class StudentScraper

  def initialize(url)
    @url = url
  end

  def scrape_index
    @index_doc = Nokogiri::HTML(open(@url))

    @index_doc.search("div.blog-thumb a").collect do |e|
      Student.new(e["href"])
    end

    # For each of those
    # I want to call "e["href"]
    # and get back the href of each individual student website
    # binding.pry
  end

  def call
    # Load the index page
    scrape_index

    # make nokogiri document
    # find all individual student pages
    # open each page
    # scrape the student
    # return a student instance

    # Magically got all the data from the web.

    # avi = Student.new
    # avi.name = "Avi"

    # steven = Student.new
    # steven.name = "Steven"

    # [avi, steven]

    # [{:name => "Avi"}, {:name => "Steven"}]
  end

end
