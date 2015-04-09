describe Student do
  let(:student){Student.new("students/chad2.html")}

  # e.g. this is what rsepc is doing for student
  def student
    @student ||= Student.new("students/chad2.html")
  end # Memoization

  it 'can scrape the name of the studetn' do
    # student = Student.new("students/chad2.html")
    expect(student.name).to eq("Chad Ruble")
  end

  it 'can scrape a tagline for a student' do
    expect(student.tagline).to eq("Tinkerer. Dad. Troublemaker.")
  end
end

