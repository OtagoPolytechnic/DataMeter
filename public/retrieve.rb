require 'net/scp'



  # download a file from a remote server
    Net::SCP.download!("192.241.195.165", "root",
    "/root/Test/Electricity.txt", "C:/Users/cameron/Google Drive/BITY4/Sites/simple_cms/public/",
     :ssh => { :password => "1000002706"})

