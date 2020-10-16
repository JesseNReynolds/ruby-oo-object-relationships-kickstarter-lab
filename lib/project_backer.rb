class ProjectBacker
    attr_accessor
    attr_reader :project, :backer
    attr_writer

    @@all = []

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def initialize(project, backer)
        @project = project
        @backer = backer
        save
    end

end
