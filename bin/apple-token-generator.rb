#!/usr/bin/env ruby

require 'thor'
require_relative '../lib/AppleMusicTokenGenerator'

class CLI < Thor
  desc "music PATH_TO_KEY_FILE KEY_ID TEAM_ID", "generate a new web token using your key file."
  def music(key_path, key_id, team_id)
    puts AppleMusicTokenGenerator::generate(key_path, key_id, team_id)
  end
end

CLI.start(ARGV)