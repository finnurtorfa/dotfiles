export GOPATH="${HOME}/go"
export GOPRIVATE="github.com/kivra"
export PATH="${PATH}:${GOPATH}:${GOPATH}/bin:${HOME}/bin"
export TERM=rxvt-256color
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export ANSIBLE_CONFIG="/home/fstorfa/bin/kivra/infrastructure_ng/se/ansible.cfg"

export KISYSMOD=/usr/share/kicad/footprints

# Systemd editor
export VISUAL="nvim"
export EDITOR="$VISUAL"
export SYSTEMD_EDITOR="$VISUAL"
export GPG_TTY="$TTY"
