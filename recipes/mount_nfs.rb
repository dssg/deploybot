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

group "public_safety" do
  gid 7016
  action :manage
  members ['jwalsh']
end

#directory "/mnt/data/public_safety" do
#  group 'public_safety'
#  mode 0770
#  not_if "/bin/hostname -i | grep 10.0.0.244"
#end
#
#directory "/mnt/data/public_safety/charlotte_pd" do
#  group 'charlotte_pd'
#  mode 2770
#  not_if "/bin/hostname -i | grep 10.0.0.244"
#end
#
#directory "/mnt/data/public_safety/nashville_pd" do
#  group 'nashville_pd'
#  mode 2770
#  not_if "/bin/hostname -i | grep 10.0.0.244"
#end
