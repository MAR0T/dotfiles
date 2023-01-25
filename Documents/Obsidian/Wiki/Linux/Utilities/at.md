`at` command allows to schedule a task to be run at specific time
It requires `atd` deamon to be run in the background.

```sh
sudo systemctl enable --now atd
```

### Schedule a task
```sh
echo "hello" | at 5PM
echo "hello" | at now +5 minutes
```


### List scheduled jobs
```sh
at -l
```

