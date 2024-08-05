Updating requirements.txt after successful updates or packages addition
Don't forget to run

```
  pip freeze > requirements.txt
```

## CONVENTIONAL COMMITS NOTES:

### Tools used to achieve conventional commits

- **commitizen**
- **pre-commit**

```sh
pre-commit install
pre-commit install --hook-type commit-msg
```

To deploy changes using conventional commits

```sh
# run git add to stage the changes you want to stage
git add .
```

```sh
# for commits that do not require a version patch (ie: smaller commits that make up a PR) run
cz c
```

```sh
# run script to use commitzen commits and automatically bump realease version and update change log before pushing changes when you want to create a PR
cz c && cz bump
```

Then finally

```sh
git push origin <BRANCH_NAME>
```
