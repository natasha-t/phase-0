## 1.1 Think About Time

The time management and productivity idea that I more fully explored was about forming habits, something I have been particularly aware of since graduating college. The habits I form now are crucial to how productive I will be now and in the future. I think the most important takeaway is to set small (micro) manageable behaviors that become habits after repetition. This approach proves to be more effective and easier to implement than trying to establish long-term goals; the forming of ‘micro’ habits can also be easily monitored on a daily basis through self check-ins.

Time Boxing is the practice of setting time limits on tasks, stopping work when the timer goes off, and reviewing what has been accomplished. Time Boxing can be used during Phase 0 with every task. I Time-Boxed the research part of this challenge and it served as a great indicator for how much time it took for me to read and do further research. For coding challenges, Time Boxing will definitely come in handy, especially when splitting time between coding, Googling, and taking breaks when needed.

I’d say the current way I manage my time is loosely structured; I focus more on getting the task done, or stopping when I feel it has been sufficiently worked on. I know to be successful in Phase 0 and beyond I will have to be much more conscious of time, knowing how much is being dedicated to each task, and challenging myself to work within time constraints I set myself.

My plan for time management and maximum productivity in Phase 0 is to achieve flow even during Time Boxed sessions. I want to be fully engrossed in the work, but still aware of the time being spent and my level of productivity. Before I get to that point I will have to work towards being disciplined about Time Boxed sessions (actually stop working when the timer goes off) and to set up the right mental framework to get the most out of each task. Anne Samoilov suggested writing down the moments when you feel down or “off” about anything and from there, figuring out how to reconfigure those moments to prevent yourself from feeling those emotions again. The time reconfiguring will help increase productivity and yield personal rhythm, which will eventually lead to flow. Daily reflections and mediation are also habits I’m starting to form to help achieve mental stability, focus, and calmness.


## 1.2 The Command Line

The shell is the program that uses a Command Line Interface to allow users to execute tasks on the computer. This way of working on computers was a precursor to the Graphical User Interface we use today. Programmers must learn to navigate Terminal as its one of the primary ways to communicate directly with the computer. Bash, which stands for Bourne Again Shell, is a type of shell program that includes certain features or functionalities accessible to the programmer.

I ran into a few challenging aspects of learning the command line. First was removing files. Since ‘mkdir’ and ‘cp’ were just covered, I had created and copied a couple of directories in the ‘temp’ folder but kind of lost track of how many directories and subdirectories I had made/copied. When I attempted to remove a subdirectory, it returned an error because there was content in that subdirectory. I then had to ‘ls’ that directory to see what was inside because I didn’t remember. Also, it turned out that I had made a duplicate of that subdirectory that could not be deleted, so both my computer and I were confused. I realized ‘ls’ has to be used quite frequently to keep track of where you are in the file order. The other challenge I ran into was using ‘cat’ and ‘>.’ I ‘cat > somefile.txt’ and it ended up erasing all of its contents; I couldn’t grep anything from somefile.txt. I learned that that command will allow for you to over-write the file content with text you can enter directly into the command line. If you don’t want the original text to be altered, then ‘>>’ will append text, not over-write it.

I was overall successful in using all the commands. There were certainly times when I had to work through an exercise on my own a couple times to really see what’s happening. I think I will need some more exposure to sudo and xargs.

I think the most important commands to know are cd, ls, pwd, mkdir, rmdir, rm, less, and man. They all allow for quick navigation and actions through the computer’s file system.

- pwd - print working directories;  prints the current file path
- ls - list the contents of directory
- mv - move file
- cd - change directory
- ../ - moves up one directory
- touch - creates an empty file
- mkdir - make a new directory
- less - page through a file
- rmdir - remove a directory (NOTE: make sure to cd .. first before removing desired directory)
- rm - remove file
- help - like man, help lists bash commands


## 1.4 Forking and Cloning

To create new repo, you click on the ‘+’ sign next to you github avatar and select “Create repository,” name it, make it public so people can look at your work, and then voila you have a new repository that sits in your github account. To fork a repo, you go to the repo you want a copy of, click on ‘Fork’ in the upper-right hand corner, and select where you would like a copy of the repo to reside. If it’s your own github page, then you will see shortly after that the repo you forked from is now sitting in your github account as a copy, and you can play around with it as you so please without disturbing the master version. To clone a repo, meaning you would like it on your local computer, you copy the clone URL located on the bottom of the right-column of the repo’s github page, open Terminal, jump to the directory you want the repo to live in, and type ‘git clone <INSERT CLONE URL HERE>.’ If you type ‘ls’ you’ll see the repo sitting in that directory. You’d fork a repository if you want that repository and all of its code on your own profile so you can fiddle around with existing code at your own leisure; creating a repository involves starting everything from scratch.

The distinction between git and Github was finally cleared up for me thanks to this lesson. I knew Github was a public place to house code online but I didn’t know git was a separate piece of software that runs locally on the computer. I also mistakenly manually created a folder called ‘phase-0’ before cloning the phase-0 repo, only to find out that I now had a phase-0 folder within a phase-0 folder, which is silly. Now I know that cloning a repository is simply copying an entire directory and its folders and plopping it wherever you want locally. Git seems to be an extremely powerful tool for writing programs as every change/edit is tracked and can be reviewed. I like the branching process because it’s a lot more assuring to be able to play around with code without having to worry about it affecting any larger system or program.