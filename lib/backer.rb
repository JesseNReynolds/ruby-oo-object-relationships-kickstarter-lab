class Backer
    attr_accessor
    attr_reader :name
    attr_writer

    @@all = []

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def initialize(name)
        @name = name
        save
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def pairs_backed
        ProjectBacker.all.select do |pair|
            pair.backer == self
        end
    end

    def backed_projects
        self.pairs_backed.map do |backed_pair|
            backed_pair.project
        end
    end

end
