require_relative "project_backer.rb"
require_relative "project.rb"
require "pry"
class Backer 

    attr_reader :name

    def initialize (name)
        @name = name
    end

    def back_project (project)
        ProjectBacker.new(project, self)
    end
    def backed_projects
        #ProjectBacker.all.filter {|project_backer| project_backer.backer == self}

        ProjectBacker.all.filter {|project_backer| project_backer.backer == self}.map{|project_backer| project_backer.project}
        #binding.pry
    end






end
