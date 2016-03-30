require 'net/scp'

  # upload a file to a remote server
  Net::SCP.upload!("192.241.195.165", "root",
    "C:/Users/cameron/Sites/simple_cms/Sampletext.txt", "/root/Test/",
    :password => "1000002706")

  