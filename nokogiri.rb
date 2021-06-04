require 'nokogiri'
require 'open-uri'
 
# 対象のURL
url = "https://pay.jp/login"
 
# NokogiriでURLの情報を取得する
contents = Nokogiri::HTML(open(url),nil,"utf-8")
 
puts contents