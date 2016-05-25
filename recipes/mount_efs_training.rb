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

directory "/mnt/data/install_files" do
  owner "root"
  group "root"
  mode 0755
  action :create
end

mount "mnt/data/install_files" do
  device "10.0.0.153:/install_files"
  fstype "nfs4"
  options "rw,acl"
end

directory "/mnt/data/training" do
  owner "root"
  group "root"
  mode 0755
  action :create
end
 
mount "mnt/data/training" do
  device "10.0.0.153:/training"
  fstype "nfs4"
  options "rw,acl"
end

