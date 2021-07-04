class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  # config.time_zone = 'Tokyo'
  #   config.active_record.default_timezone = :local
  #   config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
  #   config.i18n.default_locale = :ja    
end
