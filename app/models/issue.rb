class Issue

  @@the_issues = []
  # this might be better done as a singleton object
  attr_accessor :name, :url

  def initialize(name, url)
    @name = name
    @url = url
    puts "welcome!"
  end

  # this will grow up to return actual living objects...
  def self.all(r_issues)
    @@the_issues.present? ? @@the_issues : self.init2(r_issues)
  end

  def self.init
    Rails.logger.info "***** in Issue#self.init"
    @@the_issues << Issue.new("Fracking - What do we Know?", "fracking_know")
    @@the_issues << Issue.new("Fracking and Earthquakes", "fracking_quake")
    @@the_issues << Issue.new("Fracking and Water", "fracking_water")
    @@the_issues << Issue.new("Obama Record", "obama_record")
    @@the_issues << Issue.new("Test", "test")
  end

  def self.init2(r_issues)
    Rails.logger.info "***** #{@@the_issues.size} issues"
    @@the_issues = []
    r_issues.each do |iss|
      @@the_issues << Issue.new(iss["name"], iss["url"])
    end
    Rails.logger.info "***** #{@@the_issues.size} issues"
    @@the_issues
  end

  def self.set_issues

  end

end