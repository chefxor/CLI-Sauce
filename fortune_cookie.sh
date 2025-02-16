# Author: Chef
# Github: https://github.com/chefxor

cookie=(
"Men are brave"
"Let me show you how the boss does it"
"I'm Ironman"
"Wakanda forever"
"Real eyes realize real lies"
"Now you see me now you dont. now you see me boom you are dead"
"Give up on your dream and die"
"Hone that one thing to perfection"
"And so it goes..."
"You live only once"
"Dont worry, Im the strongest"
"What is the cost of lies"
"It's all right to cry. It's all right to run away. Just dont ever give up"
"Say my name"
"How can you destroy a monster without becoming one?"
"I'm tired...I dont care anymore"
"You get what you f**king deserve"
"Man plans, God laughs"
"Sometimes home is not a place, It's a person"
"Life’s too short for slow terminals, speed it up!" 
"CTRL+C your worries and move on!"
"Your terminal loves you, show it some respect!"
"Why browse when you can grep?"
"rm -rf negativity from your life!"
"404 Motivation Not Found... Try Again!"
"Exit vim? Nah, just live there now!"
"Git commit, because life’s all about changes!"
"You miss 100% of the commands you don’t alias!"
"Keep calm and sudo on!"
)

rand=$[$RANDOM % ${#cookie[@]}]

# large quotes in ascii art
# figlet -f slant "${cookie[rand]}" | lolcat

# animated quote
# echo ${cookie[rand]} | lolcat -a

# Just quote in colors
echo ${cookie[rand]} | lolcat

whoami
date
