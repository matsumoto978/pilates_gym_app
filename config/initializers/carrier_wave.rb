if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      provider: "AWS",
      aws_access_key_id: Rails.application.credentials.dig(:aws, :access_key_id),
      aws_secret_access_key: Rails.application.credentials.dig(:aws, :secret_access_key),
      region: "ap-northeast-1",
    }
    config.fog_directory = "pilates_gym_app_user"
    config.asset_host = "https://static.d2gajw8ndyf6gc.cloudfront.net."
  end
end
