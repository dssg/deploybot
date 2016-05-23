execute "install-anaconda" do
    cwd "/mnt/data/anaconda/"
    command "python anaconda2_install.py"
    command "python anaconda3_install.py"
    command "conda create --name anaconda2 python=2"
    command "conda create --name anaconda3 python=3"
end
