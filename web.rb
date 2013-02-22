#coding:utf-8
require 'sinatra'
require 'viewpoint'
require 'kconv'

get '/' do
  "Hello World! I'm made by Naohiro OHTA."
end

Viewpoint::EWS::EWS.endpoint = 'https://mail.agricom.co.jp/EWS/Services.wsdl'
user = ENV['ews_user']
pass = ENV['ews_pass']
p user
p pass

Viewpoint::EWS::EWS.set_auth user,pass
