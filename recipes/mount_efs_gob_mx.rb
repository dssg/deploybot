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

directory "/mnt/data/gob_mx" do
  owner "root"
  group "root"
  mode 0755
  action :create
end
 
mount "mnt/data/gob_mx" do
  device "10.0.0.153:/gob_mx"
  fstype "nfs4"
  options "rw,acl"
end

