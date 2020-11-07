require 'openssl'
require 'base64'
require 'digest'

class Aes
  def encrypt(password, iv, cleardata)
    cipher = OpenSSL::Cipher.new('AES-256-CBC')
    cipher.encrypt  # set cipher to be encryption mode
    cipher.key = password
    cipher.iv  = iv

    encrypted = ''
    encrypted << cipher.update(cleardata)
    encrypted << cipher.final
    b64enc(encrypted)
  end

  def decrypt(password, iv, secretdata)
    secretdata = Base64::decode64(secretdata)
    decipher = OpenSSL::Cipher::Cipher.new('aes-256-cbc')
    decipher.decrypt
    decipher.key = password
    decipher.iv = iv if iv != nil
    decipher.update(secretdata) + decipher.final
  end

  def b64enc(data)
    Base64.encode64(data).gsub(/\n/, '')
  end
end