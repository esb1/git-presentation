## Git workflows

### Husk at dette er kun eksempler
### Deres prosjekt kan ha egne retningslinjer

+++

### Nytt prosjekt

```
git init
// oppretter et lokalt repository i den mappen du er
```

+++

### Eksisterende prosjekt

```
git clone <repo> [<dir>]
git clone git@gitlab.acando.no:noesbsla/git-presentation.git
// lager et _local repository_ på din maskin, som har det originale repoet som sin origin.
// alle endringer du gjør kan synkroniseres med det originale repoet.
```

+++

### Eksisterende prosjekt alt. II
##### Forke ett repository

Lar deg kopiere ett repository til din egen bruker på gitlab/github, og senere `fetche` endringer fra det originale. Men det er ditt prosjekt, og dine endringer vil ikke gjenspeiles i det originale prosjektet før vedkommende som eier det velger å ta de inn på request fra deg.<br>
Gjøres gjerne i GitLab/GitHub

+++

### Feature branches
-   Branch ut av master |
-   Implementer en feature |
-   Pull endringer på master inn i branch |
-   Test at det fungerer slik det skal |
-   Lag en Pull Request |
-   Merge din branch inn i master |

+++

### Typical workflow

```sh
~master$ git pull
~master$ git checkout -b new-feature
~new_feature$ touch SomeComponent.jsx
# create fantastic code
~new_feature$ git status
~new_feature$ git diff
~new_feature$ git add SomeComponent.jsx
~new_feature$ git commit -m "Add new fantastic feature"
~new_feature$ git pull origin/master
~new_feature$ git rebase origin/master
~new_feature$ git merge origin/master
~new_feature$ git push

```
@[1](Hent alle endringer i repoet, og merge inn i ditt prosjekt)
@[2](Bytt til branch med gitt navn. `-b` lager ny branch dersom den ikke finnes)
@[3-4](Opprett ny fil)
@[5](Sjekk hvilke filer som er endret)
@[6](Sjekk hvilke endringer som er gjort)
@[7](Legg til fil i staging area)
@[8](Commit endringene til git historikken med melding)
@[9](Hent oppdatert versjon av master branch)
@[10-11](Rebase eller merge endringer fra master inn i dine endringer)
@[12](Dytt endringene til GitLab/GitHub)

+++

### Oppdatere fork
##### Git pull er ikke nok

- Sett opprinnelig prosjekt til upstream
- `git remote add upstream <git url original project>`
- Nå er `upstream` navnet på originalen, og `origin` er ditt repo
- Hent alle branches til ditt prosjekt
- `git fetch upstream`
- Vær på master branch, og rebase endringer fra original-prosjektet
- `git checkout master` og `git rebase upstream/master`
