# Task 3.1: Aes encryption decryption program Object-oriented programming
require 'base64'
require 'digest'
require 'openssl'
require './aes'

#calling the object
object= Aes. new
#digesting the key
password = Digest::SHA256.digest('Nixnogen')
iv       = 'a2xhcgAAAAAAAAAA'
data      = "Here is some data for the encrypt"
#Calling out methods from Aes class to encrypt and decrypt the cipher
enc =object.encrypt(password,iv,data)
dec =object.decrypt(password,iv,enc)
#Outputing to console
puts "encrypt length: #{enc.length}"
puts "encrypt in Base64: " + enc
puts "decrypt all: " + dec
