import mmh3
import requests

response = requests.get('这里输入你要查询网址的ico地址')
##http://www.baidu.com/favicon.ico
favicon = response.content.encode('base64')
hash = mmh3.hash(favicon)
print("http.favicon.hash" + str(hash))
##然后将输出结果丢到shodan查询
