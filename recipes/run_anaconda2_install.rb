execute "install-anaconda" do
    cwd "/mnt/data/install_files/anaconda/"
    command "python anaconda2_install.py"
end
