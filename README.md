# publish
Web image of ebmonfhir

## Installing on a cloud image
```bash
> mkdir ebmonfhir
> cd ebmonfhir
> curl https://raw.githubusercontent.com/ebmonfhir/publish/master/Dockerfile > Dockerfile
> docker build . -t ebmonfhir
> docker run  -d -p ${PORT}:80 --name ebmonfhir ebmonfhir
```

Where `${PORT}` is the port you want to expose

## Updating the cloud image
While you can restart the container, you can also:
```bash
> docker exec -it ebmonfhir bash
nnnnnnnn# cd publish
nnnnnnnn# git pull   (or vim file or whatever)
