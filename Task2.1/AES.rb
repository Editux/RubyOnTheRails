# Task 2.1 : Rewriting AES  encryption and decryption program to Ruby

require 'openssl'
require 'digest/sha2'
require 'base64'
#selecting which algorhitm to use
alg ="AES-256-CBC"

#digesting a 256 bit key
digest =Digest::SHA256.new
digest.update("symmetric key")
key= digest.digest

# For security as part of the encryption algorithm, we create a random initialization vector.
iv= OpenSSL::Cipher::Cipher.new(alg).random_iv

aes = OpenSSL::Cipher::Cipher.new(alg)
aes.encrypt
aes.key = key
aes.iv = iv

cipher = aes.update ("password") #encrypting the password
cipher<<aes.final
#Base64 the cipher
cipher64 = [cipher].pack('m')
puts 'Encryption :'
puts cipher64

#decrypting the cipher
decode_cipher = OpenSSL::Cipher::Cipher.new(alg)
decode_cipher.decrypt
decode_cipher.key = key
decode_cipher.iv = iv
#using base64 to decrypt
plain = decode_cipher.update(cipher64.unpack('m')[0])
plain << decode_cipher.final
puts 'Decryption:'
puts plain
