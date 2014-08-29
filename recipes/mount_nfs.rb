# Mounts an NFS drive from the other stack
# Elastic IP is hardcoded
#
#

directory "/mnt/data" do
  owner "root"
  group "root"
  mode 0755
  action :create
end

mount "/mnt/data" do
  device "54.214.253.37:/mnt/data"
  fstype "nfs"
  options "rw"
end

directory "/mnt/data2" do
  owner "root"
  group "root"
  mode 0755
  action :create
end

mount "mnt/data2" do
  device "54.214.253.37:/mnt/data2"
  fstype "nfs"
  options "rw"
end
