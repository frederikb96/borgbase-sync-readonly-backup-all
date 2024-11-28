# BorgBase Sync Readonly Backup All

This repository contains an Ansible playbook for setting up a sync of read-only BorgBase backups to a local disk. The playbook will create a script that can be run to sync the latest backup from each repository to the local disk.

## Usage

1. Copy the `group_vars/all.yml.tpl` to `group_vars/all.yml`:
```bash
cp group_vars/all.yml.tpl group_vars/all.yml
```

2. Insert your variables into `group_vars/all.yml`, such as your SSH key file path and BorgBase repository details.

3. Run the playbook:
```bash
ansible-playbook main.yml
```

4. Prepare the disk: Simply set it up to auto mount to your desired location.

5. Run the script:
```bash
sudo /home/user/.local/bin/my-borgbase-sync.sh
```

(Optional but dangerous): Use the flag `--bypass-lock` to bypass the lock file. This is very dangerous and only used if 100% sure that no other borg operation can write to the archive, so no compacting and only append-only mode activated. Might be useful to backup all your repositories in one go while still allowing other append-only operations to run in parallel since none can change the archives in this mode.

---

The playbook will:
- Install a script (`my-borgbase-sync.sh`) in your `~/.local/bin` directory for performing the sync operations.
