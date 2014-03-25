class NewComment < ActionMailer::Base
  default from: "no-reply@zedatumba.com"
  def new_comment(job, comment)
      @job = job
      @comment = comment
      @company = job.company
      
      mail to: @company.email
  end
end
