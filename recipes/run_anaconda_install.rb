execute "install-anaconda" do
    cwd "/mnt/data/anaconda/"
    command "python anaconda3_install.py"
    command "python anaconda2_install.py"
end
