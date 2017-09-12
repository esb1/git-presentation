## Git - teknologien
### Konsepter
### Kommandoer

+++

### Git repository (repo)

Der all info og historikk til et prosjekt lagres<br><br>
_local repository_ => finnes på lokale maskiner<br>
_central repository_ => finnes på en server - alle lokale repositories er kopier og synkroniserer med dette.

+++

### Git history

<table style="font-size: 0.8em">
<tr class="fragment"><td>En DAG der hver node er snapshots av prosjektet i sin daværende tilstand.</td></tr>
<tr class="fragment"><td>En node kan ha en eller flere foreldre.</td></tr>
<tr class="fragment"><td>Historikken vil aldri endres, med mindre vi spesifikt ber om det.</td></tr>
</table>

+++

### Commit

<table style="font-size: 0.8em">
<tr class="fragment"><td>En commit => Et punkt i git-historikken</td></tr>
<tr class="fragment"><td>Snapshot av alle filene i prosjektet på gitt tidspunkt</td></tr>
<tr class="fragment"><td>En commit har et navn - 40 char hexadecimal string</td></tr>
<tr class="fragment"><td>Et commit-objekt inneholder all informasjonen til en commit</td></tr>
<tr class="fragment"><td>Blant annet har alle commits en tittel</td></tr>
<tr><td></td></tr>
<tr class="fragment"><td>Å commite => legge ett snapshot til i git-historikken</td></tr>
</table>

+++?image=assets/git-log.png&size=auto 90%
+++

### Commit messages

Alle commits skal ha en commit melding<br>
Det finnes noen generelle "krav" til disse:

<table style="font-size: 0.7em">
<tr class="fragment"><td>Tittel skal ha maks 50 tegn</td></tr>
<tr class="fragment"><td>Tittel skal forklare _hva_ som er gjort</td></tr>
<tr class="fragment"><td style="padding:15px; font-size: 0.6em">Evt body skal forklare _hvorfor_ det er gjort</td></tr>
<tr class="fragment"><td>Stor forbokstav, _ikke_ punktum i tittel</td></tr>
<tr class="fragment"><td>Det er konvensjon (på engelsk) å bruke imparativ form</td></tr>
<tr class="fragment"><td style="padding:15px; font-size: 0.6em">_If applied, this commit will_ Remove unused code<br><strike>_If applied, this commit will_ Removes unused code</strike></td></tr>
<tr class="fragment"><td>Følg prosjektets konvensjoner!</td></tr>
</table>

<span class="fragment">
**Hvorfor?**
</span>

+++?image=assets/bad_commit_messages.png&size=auto
+++?image=assets/git-log-oneliner.png&size=contain
+++

### Branch
![branches](https://www.atlassian.com/dam/jcr:389059a7-214c-46a3-bc52-7781b4730301/hero.svg)

Parallell utvikling på ett prosjekt

+++
### Branch

*   "Kopier" prosjektets _tilstand_ og jobb uforstyrret videre. Kalles branche ut.
*   Når du commiter på en branch, vil ikke endringene påvirke noen andre brancher
*   Endringer gjort på den originale branchen vil ikke påvirke din branch
*   En branch inneholder kun endringer fra man branchet ut, samt info om hvor man branchet fra
*   Når man er ferdig kan man slå sammen sin branch med den man branchet ut i fra

+++

### Head

<table style="font-size: 0.8em">
<tr class="fragment"><td>head - navngitt referanse til siste commiten på en branch</td></tr>
</table>
![img](assets/head2.png)
<table style="font-size: 0.8em">
<tr class="fragment"><td>HEAD - nåværende branch sin siste commit</td></tr>
</table>
![img](assets/head1.png)

+++

### Merge

- Ta innholdet fra en annen branch, og slå sammen med din branch. |
- Mergingen skjer automatisk => finner endringer som er gjort siden branchene skilte lag, og legger til alle disse på en gang. |
- Merging fører til en ny commit. Foreldrene til commiten, er siste commit på begge branchene |

+++

### Rebase

Ta endringene du har gjort på din branch, og legg de til etter endringene gjort på en annen. Deretter flyttes HEAD til å peke på resultatet.

+++?image=assets/merge_rebase_1.png
+++?image=assets/merge_rebase_2.png
+++?image=assets/merge_rebase_3.png

+++

### Conflict

Hvis det er gjort endringer på branchen vi vil merge med, på samme deler som vi har gjort, vil vi få beskjed om at det er konflikter som må løses før vi får gjennomført mergingen.<br>
Det betyr at det ikke er selvsagt hvordan man kan flette endringene, og git behøver vår manuelle hjelp.

+++
### Conflict
```
<<<<<<<<<<<< HEAD
<italic>Hello World</italic>
============
<strong>Hello World</strong>
>>>>>>>>>>>> 5cdb47a39f56e1816f9fc69bed70e53cbf94128e
```

+++

### Tag

En commit kan tagges for å markere ett punkt i historikken<br>
Ofte brukt for å markere releaser<br>
![tag](assets/tags.png)

+++

### Staging area

Der du legger til filer/endringer som skal bli med i neste commit.<br>
Innholdet i staging area kan deles opp i flere commits.<br>
Finnes kun lokalt på maskinen din.

---

### De _vanligste_ kommandoene
Listen er langt i fra utfyllende, kun tenkt som et sted å starte.

+++?code=src/common-commands.sh
@[1-2](Oppdaterer ditt lokale repo til å matche remote repo)
@[3-4](Dytter dine endringer til remote repo)
@[6](Liste over brancher lokalt)
@[7](Lag ny branch)
@[8](Bytt til valgte branch. _Tar med endringer som ikke er commited_)
@[10-11](Legg endringer til i _staging area_)
@[12-13](Legg endringer til i historikken)
@[15](Working directory vs historikk. _Før `git add`._)
@[16](Staging area vs historikk. _Etter `git add`._)
@[17](Working direcory status på filnivå. _Hvilke filer som har endringer, nye filer osv._)
@[19](_Gjem_ alle endringer)
@[20](Hent de siste endringene som ble _stashet_)
@[22](Kopier repo lokalt, og la remote være original-repoet)
@[23](Kopier repo lokalt, og la remote være en kopi av originalen)
@[25-27](Gjør lokal historikk lik som `<commit>`, men bevar endringer)
@[28](Gjør lokal historikk lik som `<commit>` og slett endringer)
@[29-30](Slett endringer gjort etter `<commit>`)
@[32-33](Se historikken)
@[34](Se info om `<commit>`)
@[36-37](Slå sammen to brancher)
@[39](Tag en commit med en tag-melding)
@[40](Push tagen til repoet (følger ikke med vanlig commits))
@[41](List alle tags i repo (alfabetisk))

+++

### Hvordan finne ut om jeg er i et git-prosjekt?

- Det finnes en `.git` mappe i roten av alle git-prosjekt |
- Forsøk å skrive f.eks `git log` i terminalen |
- `fatal: Not a git repository (or any of the parent directories): .git` |

+++

### Din gode venn hvis ting går helt galt

Start på nytt:

```
git reset --hard HEAD
// slett alt siden forrige commit
```

+++

### Hvordan slippe å skrive inn passord hver gang?

```sh
some_user$ ssh-add # hvor som helst i repoet ditt

Enter passphrase for /Users/some_user/.ssh/id_rsa: *******
```
