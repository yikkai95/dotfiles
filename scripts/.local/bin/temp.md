### Day Start Checklist
- [X] check lunar calendar
- [X] make sure beard is clean
- [X] make sure nails is short
- [X] make sure face is clean
- [X] make sure contact lens is hygiened
- [X] check reminders
- [X] check ark todo | [link][1]
- [X] check yesterday improvement
- [X] check newsboat
- [X] read and summarize article

### How much money I can spent for today
`hledger bal acct:Assets:Budget --no-total --auto --flat --drop 2`


### What is today agenda
`gcalcli agenda --tsv $(date +%F) $(date -v+1d +%F) | awk 'BEGIN {FS="\t"}; {print $1 " " $5}'`


### What is my weekly wins
`sed -n '/### Weekly Outcome/,/^###/p' ~/Documents/Wiki/plan/Weekly_Outcome/$(gdate -d last-sunday +%F).md | ghead -n -2 | tail -n +2`


### What is my three wins
- ark complete folders API

### What is today schedule

### Checklist
- [ ] body posture exercies
- [ ] Log Lifecycle
- [ ] Log Ledger
- [ ] Log Habit Tracker | [link][https://docs.google.com/spreadsheets/d/1aVReDt8XDfBh2kEguJEIpTnfFBKlSibVbQJI02ORVtU/edit#gid=1295423018]
- [ ] clean inbox
- [ ] clean desk
- [ ] git commit dotfiles
- [ ] update template | [link][2]

### To Improve
- One learn per day

### To Complement

### One Learn Per Day

- 

### Log

- update template on one learn per day
- hledger `drop` and `flat`
- learn https://www.regular-expressions.info/repeat.html
- tmux list bindings https://til.hashrocket.com/posts/385fee97f3-list-all-tmux-key-bindings
- receiver or param golang
- psql check row exist [3][]
- dlv print full string [4][]
- simple upload | [golang-base64-upload/base64Upload.go at master · heliojuniorkroger/golang-base64-upload][5]

[1]: ../todo.md
[2]: template.md
[3]: https://stackoverflow.com/questions/7471625/fastest-check-if-row-exists-in-postgresql
[4]: https://stackoverflow.com/questions/52416263/how-do-i-print-the-full-value-of-a-string-variable-in-delve
[5]: https://github.com/heliojuniorkroger/golang-base64-upload/blob/master/base64Upload.go
[6]: https://medium.com/@vanuan/vim-for-typescript-and-react-in-2020-9724b9139be2
[7]: https://www.vimfromscratch.com/articles/vim-for-javascript-and-react-in-2019/
[8]: https://qiita.com/slin/items/2b43925065de3b9a6d3b
[9]: https://github.com/kelaberetiv/TagUI/issues/86
[10]: https://stackoverflow.com/questions/43009211/how-to-disable-pane-switching-with-esc-in-tmux
