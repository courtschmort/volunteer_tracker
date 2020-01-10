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

end
