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

Viewpoint::EWS::EWS.set_auth user,pass
inbox = Viewpoint::EWS::Folder.get_folder_by_name('Inbox')
p inbox
