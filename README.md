# CLI Sauce
> Chef | 17th Feb 2023
---
## What's cookin'?
This repo serves up two scripts to make your terminal less boring (the scripts themselves are boring btw)
 
### 1. Fortune cookie for your terminal
Every time you open your terminal, BAM! A random quote pops up. Motivation? Wisdom? Just nonsense? Who knows 

### 2. A simple fetch - nothing fancy
Think of it as your terminal's self-esteem booster. Shows:
- OS Name
- Kernel Version
- Uptime
- Shell
- Installed Packages
- CPU & Memory Usage

## Ingredients needed
```
linux or unix
lolcat
figlet
bash
```

## How to run them
1. Clone this repo.
2. Add them to your `.bashrc` or `.zshrc` as suggested below
3. Open your terminal and bask in the glory.

```bash
# For a daily dose of wisdom
./fortune_cookie.sh

# You can also add it to your .bashrc and autospawn it 
$HOME/CLI-Sauce/forture_cookie.sh
```


```bash
# For add this as an alias in your .bashrc
alias your_command='$HOME/CLI-Sauce/flex_it.sh

# Run your command to fetch
your_command
```

