execute "group-setup" do
    cwd "/mnt/data/admin/group_perms"
    command "python setup_perms.py"
end
