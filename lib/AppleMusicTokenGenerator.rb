require 'openssl'
require 'jwt'

class AppleMusicTokenGenerator
  def self.generate(key_path, key_id, team_id)
    ttl = 7776000 # 90 days
    private_key = File.read(key_path)

    return JWT.encode(
      self.getPayload(team_id, ttl),
      OpenSSL::PKey::EC.new(private_key),
      'ES256',
      header_fields=self.getHeaders(key_id)
    )
  end

  def self.getHeaders(key_id)
    {
      'typ': 'JWT',
      'kid': key_id
    }
  end

  def self.getPayload(team_id, ttl)
    {
      'iat': Time.now.to_i,
      'exp': Time.now.to_i + ttl,
      'iss': team_id
    }
  end
end
