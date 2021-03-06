# frozen_string_literal: true

FactoryBot.define do
  factory :setting do
    aws_key { 'aws_key' }
    aws_secret { 'aws_secret' }
    slack_url { 'http://127.0.0.1/slack' }
  end
end
