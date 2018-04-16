# octave_dev_env
Development environment for octave

## Usage

Launch the instance and create user

```
sudo docker run -d -v /external/directory:/internal/mount -it octave:0.0.1 $(id -u) $(id -g) $(id -nu)
```

Join instance in a new shell

```
sudo docker exec -u $(id -nu) -it aa15aa00871b bash -l
```
