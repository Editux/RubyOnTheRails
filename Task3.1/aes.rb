require 'openssl'
require 'base64'
require 'digest'

class Aes
  #method to encrypt the cipher
  def encrypt(password, iv, cleardata)
    cipher = OpenSSL::Cipher.new('AES-256-CBC') #set algorhitm
    cipher.encrypt  # set cipher to be encryption mode
    cipher.key = password  #set the key
    cipher.iv  = iv #set initialiazation vector

    encrypted = ''
    encrypted << cipher.update(cleardata)
    encrypted << cipher.final
    b64enc(encrypted) #using b64enc method to encode data with Base 64
  end

  def decrypt(password, iv, secretdata)
    secretdata = Base64::decode64(secretdata) #decoding the data with Base 64
    decipher = OpenSSL::Cipher::Cipher.new('aes-256-cbc') #slecting which cipher to decode
    decipher.decrypt
    decipher.key = password
    decipher.iv = iv if iv != nil
    decipher.update(secretdata) + decipher.final 
  end

  def b64enc(data)
    Base64.encode64(data).gsub(/\n/, '')
  end
end
