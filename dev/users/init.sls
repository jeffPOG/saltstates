user_kat_Douglas:
  user.present:
    - name: kat.douglas
    - fullname: Katrine Douglas
    - shell: /bin/bash
    - home: /home/kat.douglas
    - uid: 0001
    - gid_from_name: True
    - groups:
      - wheel

kat_Douglas_key:
  ssh_auth.present:
    - name: kat.douglas
    - user: kat.douglas
    - source: salt://users/keys/kat.douglas.pub
