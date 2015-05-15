script "install-anaconda" do
    user "root"
    command "/mnt/data/anaconda/install.py"
    action :run
end
