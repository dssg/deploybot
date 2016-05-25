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

directory "/mnt/data/sedesol" do
  owner "root"
  group "root"
  mode 0755
  action :create
end
 
mount "mnt/data/sedesol" do
  device "10.0.0.153:/sedesol"
  fstype "nfs4"
  options "rw,acl"
end
