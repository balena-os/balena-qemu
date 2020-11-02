# seccompagent

1. setup docker to run oci hooks using [oci-add-hooks](https://github.com/awslabs/oci-add-hooks)

add this into `/etc/balena/daemon.json`:

```json
{
  "runtimes": {
    "seccomp-notify-runc": {
      "path": "/usr/bin/oci-add-hooks",
      "runtimeArgs": [
        "--hook-config-path", "/etc/balena/seccomp-notify-hook.json",
        "--runtime-path", "/usr/bin/runc"
      ]
    }
  }
}
```

This is the content of `/etc/balena/seccomp-notify-hook.json`:

```json
{
  "hooks": {
    "sendSeccompFd": [
      {
        "path": "/usr/bin/seccomphook",
        "args": ["seccomphook"]
      }
    ]
  }
}
```


2. extend the [default seccomp profile](https://github.com/moby/moby/raw/master/profiles/seccomp/default.json)

```json
{
  "defaultAction": "SCMP_ACT_ALLOW",
  "syscalls": {
    "names": [
      "uname"
    ],
    "action": "SCMP_ACT_NOTIFY"
  }
}
```


3. finally... run your container with the previously defined seccomp profile

```
$ docker run --runtime seccomp-notify-runc --security-opt seccomp=/path/to/profile.json alpine:3 uname -a
```
