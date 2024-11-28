---
---
uuid: c626560f-5901-4608-b5b8-6e7eddf36ee0
DISK_MNT: "/mnt/dest"
BORG_MNT: "/mnt/src"
BORG_RSH: "ssh -i /root/.ssh/borgbase-partial"

repos:
  - mount_name: someserver01
    BORG_REPO: "ssh://somehost.repo.borgbase.com/./repo"
    BORG_PASSPHRASE: "some-pw"