## GIT Verktøy

#### *gitlab*
#### github
#### bitbucket
#### +++++++++++++++

+++

### Hva? Hvorfor?

-   Web-basert git |
-   Repository hosting service |
-   Grafisk interface for å jobbe med git-prosjekter |
  -   Review |
  -   Diskutere |
  -   Administrere prosjekter |
  -   Utforske Open Source prosjekter |

+++

### README

Kan skrives i Markdown, txt, eller AsciDoc<br>
`foo.md, bar.txt, baz.adoc`<br><br>
Vises på forsiden når du går inn på repoet i GitLab/GitHub

+++

### IGNORE

Alle repoer _kan/bør/skal_ ha en .gitignore fil som forteller hvilke filer som *ikke* skal trackes av git.<br>
<br>Typisk `.class` filer i et java prosjekt.
<br>Finnes generatorer for de fleste språk, OS og verktøy

+++

### Merge request === Pull request
Review av endringer før de _merges_ inn i repoet
![img](assets/create_merge_request_prompt.png)

+++

## Merge request

- En måte å ha kontroll på endringer i kodebasen |
- Lar deg få review og diskutere arbeidet ditt med teamet |
- En merge request ber om å merge en branch inn i en annen |
- Merge request fra en branch kan oppdateres med nye commits til branchen før den merges |
- Ofte kreves det godkjenning av minst en annen fra teamet(gjerne TechLead) |
- I gitlab kan man ha en MergeRequest markert som WIP |
  - WIP => Work in progress
  - Start tittelen med `[WIP]` eller `WIP:`
  - Kan ikke merges for WIP er borte
  - Da kan den opprettes samtidig med branchen, og kode kan diskuteres fortløpende

+++
![Logo](assets/create_merge_request.png)
+++
![Logo](assets/Merge_request.png)
+++
![Logo](assets/comments.png)
+++

### Merge request fra fork

![fork_merge](assets/fork_merge_request.png)
+++

## Issues

- Oppgaver i prosjektet |
  - Nye features
  - Bugs
  - Forbedringer
- Kan spores hvis man prefikser commiter med issue-nummer |
- Lukkes når de er løst |
- Kan assignes til personer (enten selv eller av PL) |

+++?image=assets/issue_list.png&size=auto 90%
+++?image=assets/issue.png&size=auto 90%
+++


## Flere verktøy

+++

### Hjelp i terminal

- iTerm (OSX)
- oh-my-zsh (shell for OSX, Linux og Windows)
  - visual aid for git (branch, changes, etc.)
  - git-aliases, plugins, themes
  - web: [ohmyz.sh](https://ohmyz.sh)
  - github: [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/)

![zsh](assets/zsh.png)

+++

### Github UI apper

Github-desktop - https://desktop.github.com<br>
Source tree - https://sourcetreeapp.com<br>

+++

### IDEAs

Det finnes github-plugins med bra UI for de fleste IDEAs folk bruker.<br>
Det handler om å finne en arbeidsflyt som fungerer for deg selv og teamet.<br>
Tips: Lær deg git i terminalen først, så du vet hva du får hjelp til av UIet!

+++?image=assets/intellij/menu.png&size=contain
+++?image=assets/intellij/log.png&size=contain
+++?image=assets/intellij/branches.png&size=contain
+++?image=assets/intellij/local_changes_tree.png&size=contain
+++?image=assets/intellij/local_changes_flat.png&size=contain
+++?image=assets/intellij/commit-dialog.png&size=contain
+++?image=assets/intellij/push.png&size=contain
+++?image=assets/intellij/diff-side-by-side.png&size=contain
