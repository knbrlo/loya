class JobsController < ApplicationController

    def home
        @jobs_so = Job.get_jobs_so
    end

end
