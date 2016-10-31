execute "group-setup" do
    cwd "/mnt/data/admin/group-perms"
    user "ubuntu"
    command "python setup_perms.py"
end
