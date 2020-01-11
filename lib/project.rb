class Project
  attr_accessor :title
  attr_reader :id

  def initialize(attributes)
    @title = attributes.fetch(:title)
    @id = attributes.fetch(:id)
  end

  def ==(project_to_compare)
    self.title == project_to_compare.title
  end

  def save
    db_projects = DB.exec("INSERT INTO projects (title) VALUES ('#{@title}') RETURNING id;")
    @id = db_projects.first().fetch('id').to_i
  end

  def self.all
    db_projects = DB.exec("SELECT * FROM projects ORDER BY title ASC;")
    projects = []
    db_projects.each() do |project|
      title = project.fetch('title')
      id = project.fetch('id').to_i
      projects.push(Project.new({:title => title, :id => id}))
    end
    projects
  end

  def self.find(id)
    db_project = DB.exec("SELECT * FROM projects WHERE id = #{id};").first
    if db_project
      title = db_project.fetch('title')
      id = db_project.fetch('id').to_i
      Project.new(:title => title, :id => id)
    else
      nil
    end
  end

  def update(attributes)
    if (attributes.is_a? String)
      @title = attributes
      DB.exec("UPDATE projects SET title = '#{@title}' WHERE id = #{@id};")
    else
      @title = attributes.fetch(:title)
      DB.exec("UPDATE projects SET title = '#{@title}' WHERE id = #{@id};")
    end
  end

  def delete
    DB.exec("DELETE FROM projects WHERE id = #{@id};")
  end

  def volunteers
    Volunteer.find_by_project(self.id)
  end

end
