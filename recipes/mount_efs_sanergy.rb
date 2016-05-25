# Mounts AWS EFS 
# Elastic IP is hardcoded
#
#

directory "/mnt/data" do                                                                                                                                                
  owner "root"
  group "root"
  mode 0755
  action :create
end

directory "/mnt/data/sanergy" do
  owner "root"
  group "root"
  mode 0755
  action :create
end
 
mount "mnt/data/sanergy" do
  device "10.0.0.153:/sanergy"
  fstype "nfs4"
  options "rw,acl"
end

