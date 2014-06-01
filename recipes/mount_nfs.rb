# Mounts an NFS drive from the other stack
# Elastic IP is hardcoded
#
#
mount "/mnt/data" do
  device "54.214.253.37:/mnt/data"
  fstype "nfs"
  options "rw"
end
