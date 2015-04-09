class Student
  attr_accessor :name, :github, :twitter #=> name, name=

  def initialize(url)
    @doc = Nokogiri::HTML(open("http://web0415.students.flatironschool.com/#{url}"))
    # begin
    #   @doc = NOkogiri::HTML(open("http://web0415.students.flatironschool.com/#{url}"))
    # rescue
      # let the program skip the student
      # puts "I got an error"
      # binding.pry
    # end

    # by the end of this method
    # all of the properties of the student were filled

    scrape_name
    scrape_twitter
    scrape_github
  end

  def scrape_name
    @name = @doc.search("h4.ib_main_header").text
  end

  def scrape_twitter
    @twitter = @doc.search("div.page-title div.social-icons i.icon-twitter").first.parent["href"]
  end

  def scrape_github
    @github = @doc.search("a[href*=github]").first["href"]
  end

  # def name
  #   @name
  # end

  # def name=(name)
  #   @name = name
  # end
end
