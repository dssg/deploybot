# a recipe to create folders with appropriate groups. 
# Should only be run once

directory "/mnt/data/test" do
    owner "howens"
    group "testgroup"
    mode 00644
    action :create
end
