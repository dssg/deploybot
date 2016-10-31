execute "group-setup" do
    cwd "/mnt/data/admin/group-perms"
    command "python setup_perms.py"
end
