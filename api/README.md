# Budget Tracker API

## Setup steps

1. Install docker [download](https://www.docker.com/products/docker-desktop/)
2. Run `docker-compose up -d` in the root directory for booting up the database server
   - If you want to stop the server, run `docker-compose down`
   - [MailServer](http://localhost:1080/#)
   - [Swagger Doc](http://localhost:8081/swagger-ui/index.html)
   
## Azure migration steps

1. Install az CLI  https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-macos
```
brew update && brew install azure-cli
```
```
winget install -e --id Microsoft.AzureCLI
```

And login
```
az login
```

2. Create resource group
```
az group create --location westeurope --name fmi-budget-tracker
```
Optionally set the group and location as default
```
az config set defaults.location=westeurope defaults.group=fmi-budget-tracker
```

3.  Create mysql database
```
az mysql server create --resource-group fmi-budget-tracker --name fmi-budget-tracker-database --location westeurope --admin-user fmi_admin --admin-password fmi_admin_password_1! --sku-name B_Gen5_1 
```

4. Open traffic to mysql database (!restrict it after tests!)
```
az mysql server firewall-rule create -g fmi-budget-tracker -s fmi-budget-tracker-database -n allowiprange --start-ip-address 0.0.0.0 --end-ip-address 255.255.255.2555
```

5. In the `api` folder, install azure maven plugin and configure app service plan
```
mvn com.microsoft.azure:azure-webapp-maven-plugin:2.10.0:config
```
And fix the resulting `pom.xml` config by replacing the resource group and region(location).
Also make sure the target java version in the `pom.xml` is the latest supported by Azure.

6. Deploy to azure!
```
mvn package azure-webapp:deploy
```

7. Fix SSL settings: e.g. host should be included in the SSL trust rule

8. Make sure the URL that is sent in the confirmation email points to the current environment, not always to localhost
