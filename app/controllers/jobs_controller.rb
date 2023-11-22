class JobsController < ApplicationController
    before_action :set_job, only: [:show, :edit, :update, :destroy]

    def index
        @jobs = Job.all
    end

    def new
        @job = Job.new
    end

    # def create
    #     Job.create(job_params)
    #     redirect_to jobs_path
    # end

    def create
        @job = Job.new(job_params)
    
        if @job.save
          redirect_to jobs_path
        else
          render :new
        end
      end
    

    def edit
    end

    # def update
    #     @job.update(job_params)
    #     redirect_to jobs_path
    # end

    def update
        @job = Job.find(params[:id])
    
        if @job.update(job_params)
          redirect_to jobs_path
        else
          render :edit
        end
      end
    

    def destroy
        @job.destroy
        redirect_to jobs_path
    end

    def show
    end
    

    private

    def job_params
        params.require(:job).permit(:title, :description, :long_description)
    end

    def set_job
        @job = Job.find(params[:id])
    end
end
