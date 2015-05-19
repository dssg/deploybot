execute "group-setup" do
    cwd "/mnt/data/groups"
    command "python setup_perms.py /mnt/data"
end
