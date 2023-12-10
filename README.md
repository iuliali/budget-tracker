# Work policy
Warning! This repo is a merged repo containing history from [here](https://github.com/iuliali/budget-tracker) and from [here](https://github.com/inginerie-software-2023-2024/proiect-inginerie-software-budget-tracker). We will have one local repo and 2 remotes.
### If you have already the [MDS project](https://github.com/iuliali/budget-tracker) on your local machine, what you need to do is:
- go to the folder with the repo, and enter the repo in terminal
- `git remote -v` command to display the current remote
- `git remote add origin2 git@github.com:inginerie-software-2023-2024/proiect-inginerie-software-budget-tracker.git` ( this will create another remote with name origin2, so when you want to push on this remote you just `git push origin2 <your-branch-name>`, same for pull : `git push origin2 <your-branch-name>`)
- `git remote -v` command to display list of remotes and you should see the newly added too:
```
origin  https://github.com/iuliali/budget-tracker (fetch)
origin  https://github.com/iuliali/budget-tracker (push)
origin2 git@github.com:inginerie-software-2023-2024/proiect-inginerie-software-budget-tracker.git (fetch)
origin2 git@github.com:inginerie-software-2023-2024/proiect-inginerie-software-budget-tracker.git (push)
```

### If you have already the [IS project](https://github.com/inginerie-software-2023-2024/proiect-inginerie-software-budget-tracker) on your local machine AND YOU DON'T HAVE MDS PROJECT what you need to do is:
- go to the folder with the repo, and enter the repo in terminal
- `git status` -> see current branch
- on branch `main` -> `git pull origin main`
###### If you intend to also push on MDS remote repo you will need to add a second remote
- `git remote -v` to see current remote
- `git remote add origin2 https://github.com/iuliali/budget-tracker` ( this will create another remote with name origin2, so when you want to push on this remote you just `git push origin2 <your-branch-name>`, same for pull : `git push origin2 <your-branch-name>`)
- it's more important to push on [IS project](https://github.com/inginerie-software-2023-2024/proiect-inginerie-software-budget-tracker), pushing on MDS repo can be done just for main by only a single person 
- `git remote -v` command to display list of remotes and you should see the newly added too
____
See your task in JIRA!

Follow this steps:
1. Understand your task
2. Run the project before starting your task in order to understand where to add your code
3. Go on `main` branch
4. Take latest changes from remote `git pull origin main` (CAREFUL IF YOUR REMOTE IS `origin2` instead of `origin`!)
5. Create a new branch from it called `<your-name>/<jira-token-for-your-task>-<additional-short-description>` (you can do this in terminal by command: `git checkout -b <new-branch-name>`)
6. Be sure you are on your branch (you will not be able to push on `main`) with : `git status`
7. Start working, make commits
8. Push your work on your branch `git push <your-remote-name> <your-branch-name>` (where your-remote-name can be `origin` or `origin2`)
9. When ready, create a pull request to `main` - the title of the pull request MUST CONTAIN Jira token of your task !
10. Contact anyone for help, but respect sleep and free time and do your work in time.

____

  
# Demo
- [Video](https://www.youtube.com/watch?v=2b3N1HEDWNo)
- [Presentation](https://docs.google.com/presentation/d/1vsKsg4AnW17Hh1Ow2E_wmBP_yCJIc-RE851LN4SygGg/edit?usp=sharing)

# Description
The budgeting aspect of finances is oftentimes overlooked by many people because they find it tedious. Seeing how important it is to have discipline when spending, to prioritize categories and to get an outlook on your habits in order to correct them, we have developed this app, that will be available on the Web, IOS and Android in order to help more people get into budgeting by providing a sleek and intuitive user interface that makes budget tracking a breeze. It ensures a seamless experience for both people that are new to budgeting and more experienced users that were not happy with the current options on the market.

Our Budget Tracker App enables users to manage their incomes, expenses and debts to other users. They can add categories of incomes, expenses and expected income, spending limits for these categories. After a unit of time (month or year), a user can visualize a graphical and detailed review in order to get a better overview of their spending habits. Moreover, users have the option to associate in a group to track their expenses together and use our algorithm to help them make the minimum number of transactions when splitting the bills within the group members.

The app has been developed with the Flutter framework (Dart) for frontend and the SpringBoot framework (Java) for backend.

### Team members:
- [Talpalariu Iulia Georgiana](https://github.com/iuliali)
- [Mura Victor](https://github.com/victormura)
- [Sabau Eduard](https://github.com/SabauEduard)
- [Rogoza Raluca](https://github.com/ralucarogoza)

## 1. User stories and backlog
We have used Jira to monitor the progress of the project and to keep track of the user stories and backlog. The issues are marked as in progress because Jira archives them if we mark them as completed.
![Unfortunately the image did not load :(](images/Jira.PNG "Jira")
## 2. Diagrams
### WORKFLOW DIAGRAM
![Unfortunately the image did not load :(](images/FlowChart.drawio.png "WORKFLOW diagram")
### UML DIAGRAM
![Unfortunately the image did not load :(](images/ERD.drawio.png "UML diagram")
## 3. Source control
The project has been developed with the help of GitHub so all the commits, branches and pull requests can be accessed from here. We have used the Feature Branch Workflow paradigm as in each new feature is developed on a separate branch and then merged into main with a pull request.
## 4. Testing
The automated tests for backend are in the package defined by SpringBoot and can be found at [this link.](https://github.com/iuliali/budget-tracker/tree/main/api/src/test/java/com/budgettracker/api/budgeting/unit)
## 5. Refactoring and code standards
There is a branch named refactor in which we modified the structure of the packages for the backend and bit of the code structure to provide a seamless transition to microservices from monolith in case we will decide so. [This is the link to the refactor branch.](https://github.com/iuliali/budget-tracker/tree/refactor/api/src/main/java/com/budgettracker/api)
## 6. Design Patterns
- Model: The classes that represent the entities in the UML diagram (e.g. User, Category, Expense, Income, etc.)
- Facade: AuthenticationFacade class that provides a way to get the logged-in user.
- Control: The controllers that represent the way you can interact with the API
- Singleton: Indirectly by using the SpringBoot service and repository annotations which make the classes singletons.
## 7. Use of AI tool
All the unit tests for backend were generated using ChatGpt. Most of them were working as intended, but some were wrong as in the test not passing because it wouldn't mock the correct entities, or it wouldn't expect the correct values. So, after generating them, we had to review the code and fix the issues.

Some team members used GithubCopilot when developing the app. It would generate code by processing the rest of the code you have written and "guessing" what you are trying to do. All the code generated had to be reviewed because it would sometimes generate broken code.
