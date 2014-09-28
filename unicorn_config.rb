worker_processes 10
preload_app true

listen "/tmp/unicorn.sock"
stderr_path "/dev/null"
# stdout_path "/dev/null"
