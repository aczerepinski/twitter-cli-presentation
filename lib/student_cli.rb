class StudentCLI

  def initialize
    scrape_students
  end

  def scrape_students
    # go to the website
    @students = StudentScraper.new("http://web0415.students.flatironschool.com").call
  end

  def list
    @students.each.with_index(1) do |student, i|
      puts "#{i}. #{student.name} - @#{student.twitter} - #{student.github}"
    end
  end

  def call
    puts "Welcome to the Student Website!!!"
    loop  do
      @command = gets.strip
      case @command
      when "exit"
        braek
      when "list"
        list
      when "show"
        puts "You showed!!!"
      when "help"
        puts "I support: list, show, exit, help"
      end

    end
  end

end
