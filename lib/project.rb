class Project
    attr_accessor
    attr_reader :title
    attr_writer

    @@all = []

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def initialize(title)
        @title = title
        save
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def pairs_in_which_backed
        ProjectBacker.all.select do |pair|
            pair.project == self
        end
    end

    def backers
        self.pairs_in_which_backed.map do |pair|
            pair.backer
        end
    end

end
