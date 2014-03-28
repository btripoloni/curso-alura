atom_feed language: 'en-US' do |feed|
  feed.title "Job title"
  feed.lastUpdate @last_updated
  
  @jobs.each do |job|
    feed.entry(job) do |entry|
      entry.title job.title
      entry.content job.description
      entry.url url_for(job)
    end
  end
end