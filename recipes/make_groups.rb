## Makes the groups for which each project should own
## And then creates a folder on /mnt/data/... for that group

group "examplegroup" do
  action :create
  members "howens", "tplagge"
  append true
end


