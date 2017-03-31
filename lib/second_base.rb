require 'rails'
require 'active_record'
require 'active_record/railtie'
require 'second_base/version'
require 'second_base/railtie'
require 'second_base/on_base'
require 'second_base/forced'

module SecondBase

  extend ActiveSupport::Autoload

  autoload :Base

  def self.config(env = nil)
    config = ActiveRecord::Base.configurations[Railtie.config_key]
    ENV['SECOND_DB'] || config[env || Rails.env] : nil
  end

end
