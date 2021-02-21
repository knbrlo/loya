class SkillsController < ApplicationController

    def home
        @skills_so = Skill.get_skills_so
    end

end
