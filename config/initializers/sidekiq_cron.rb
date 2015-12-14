SIDEKIQ_CRON_HASH = {
  'Sitrack' => {
    class: 'SitrackWorker',
    cron: '30 * * * *'
  }
}

def load_sidekiq_cron_hash
  Sidekiq::Cron::Job.load_from_hash! SIDEKIQ_CRON_HASH
end

# load_sidekiq_cron_hash if Rails.env.production?
