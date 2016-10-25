# Internal IP is hardcoded

directory "/mnt/data" do
  owner "root"
  group "root"
  mode 0755
  action :create
  not_if "/bin/hostname -i | grep 10.0.0.244"
end

mount "/mnt/data" do
  device "10.0.0.244:/mnt/data"
  fstype "nfs"
  options "rw,acl"
  not_if "/bin/hostname -i | grep 10.0.0.244"
end
