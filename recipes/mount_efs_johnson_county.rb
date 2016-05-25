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

directory "/mnt/data/johnson_county" do
  owner "root"
  group "root"
  mode 0755
  action :create
end
 
mount "mnt/data/johnson_county" do
  device "10.0.0.153:/johnson_county"
  fstype "nfs4"
  options "rw,acl"
end

