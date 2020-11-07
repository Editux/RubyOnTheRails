#Task 4: Testing an AES encryption and decryption methods with rspec framework
require 'base64'
require 'digest'
require 'openssl'
require './aes'
require 'rspec'




password = Digest::SHA256.digest('Nixnogen')
iv       = 'a2xhcgAAAAAAAAAA'
data      = "Here is some data for the encrypt"
expected_encryption = "ux+Flze2MzL1gvrXVvhmo74M178sOKygeVv28mdJx5+PCCskPuQo64vbMBeV2Ny3"
unexpected_encryption ="unexpected encryption"
unexpected_data="unexpected data"
describe Aes do
  subject(:aes){Aes.new}
  context 'encryption tests' do
    it "Encrypt data succesfully" do
    expect(subject.encrypt(password,iv,data)).to eq(expected_encryption)
    end
    it "Encrypt data unsuccesfully" do
  expect(subject.encrypt(password, iv, data)).not_to eq(unexpected_encryption)
  end
    end
end

describe Aes do
  subject(:aes){Aes.new}
  context 'decryption tests' do
    it "Decrypt data succesfully" do
      expect(subject.decrypt(password,iv,expected_encryption)).to eq(data)
    end
    it "Decrypt data unsuccesfully" do
      expect(subject.decrypt(password,iv,expected_encryption)).not_to eq(unexpected_data)
    end
  end
end
