#coding:utf-8
require 'soap/wsdlDriver'
require 'soap/rpc/driver'

wsdl = 'https://mail.agricom.co.jp/EWS/Services.wsdl'
a0 = SOAP::WSDLDriverFactory.new()
a = a0.create_rpc_driver

a.streamhandler.client.receive_timeout = 600

out = a.getCategory(0)
out.each do |b|
  puts b.categoryName
end

