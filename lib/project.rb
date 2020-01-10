class Project
  attr_accessor :title
  attr_reader :id

  def initialize(attributes)
    @title = attributes.fetch(:title)
    @id = attributes.fetch(:id)
  end

  def save
    db_projects = DB.exec("INSERT INTO projects (title) VALUES ('#{@title}') RETURNING id;")
    @id = db_projects.first().fetch('id').to_i
  end

  def self.all
    db_projects = DB.exec("SELECT * FROM projects;")
    projects = []
    db_projects.each() do |project|
      title = project.fetch('title')
      id = project.fetch('id').to_i
      projects.push(Project.new({:title => title, :id => id}))
    end
    projects
  end

  def ==(project_to_compare)
    self.title == project_to_compare.title
  end

end
