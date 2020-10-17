# Task 3.1: Aes encryption decryption program Object-oriented programming
require 'base64'
require 'digest'
require 'openssl'
require './aes'

object= Aes. new

password = Digest::SHA256.digest('Nixnogen')
iv       = 'a2xhcgAAAAAAAAAA'
buf      = "Here is some data for the encrypt"

enc =object.encrypt(password,iv,buf)
dec =object.decrypt(password,iv,enc)

puts "encrypt length: #{enc.length}"
puts "encrypt in Base64: " + enc
puts "decrypt all: " + dec
