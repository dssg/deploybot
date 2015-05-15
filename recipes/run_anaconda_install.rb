execute "install-anaconda" do
    cwd "/mnt/data/anaconda"
    command "python install.py"
end
