execute "group-setup" do
    cwd "/mnt/data/admin/group-perms"
    user "root"
    command "python setup_perms.py"
end
