require 'net/scp'



  # download a file from a remote server

  Net::SCP.download!("10.40.50.201", "root",
    "/overlay/mnt/sd/arduino/www/meter/meter_log.txt", "C:/Users/Scotty/Google Drive/BITY4/Sites/simple_cms/public/",
     :ssh => { :password => "aotearoa"})

