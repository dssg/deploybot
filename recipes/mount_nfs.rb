# Internal IP is hardcoded

directory "/mnt/data" do
  owner "root"
  group "root"
  mode 0755
  action :create
end

mount "/mnt/data" do
  device "10.0.0.244:/mnt/data"
  fstype "nfs"
  options "rw,acl"
end

