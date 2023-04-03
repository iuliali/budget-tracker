# Budget Tracker API

## Setup steps

1. Install docker [download](https://www.docker.com/products/docker-desktop/)
2. Run `docker-compose up -d` in the root directory for booting up the database server
   - If you want to stop the server, run `docker-compose down`
3. Run docker `docker pull maildev/maildev`, then `docker run -p 1080:1080 -p 1025:1025 maildev/maildev`
   ->Then you can see your confirmation emails [HERE](http://localhost:1080/#/)
   
