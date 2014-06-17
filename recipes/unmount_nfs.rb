# Mounts an NFS drive from the other stack
# Elastic IP is hardcoded
#
#

mount "/mnt/data" do
  action :umount
end 

directory "/mnt/data" do 
  action :delete
end
