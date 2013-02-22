#coding:utf-8
require 'sinatra'
require 'savon'

get '/' do
  "Hello World!"
end

client = Savon.client(wsdl:"https://mail.agricom.co.jp/EWS/Services.wsdl")
p client
