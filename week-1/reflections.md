#### 1.1 Think About Time Reflection
I ended up researching about the creating and maintaining habits, time boxing techniques like the Pomodoro Technique, getting into the right mindset or zone to conduct work. Time boxing is a work management technique where you plan on working for a set amount of time. After that time expires, one should take a break and review, even if they haven’t finished the amount that they tried to accomplish. This technique could come in handy during Phase 0 because while you will still be working to complete something, having time set out to review is a great way to reflect on what challenges you went through, and how you were able to overcome them or what mistakes you need to work on.

Currently I make the most progress on projects when I am “in the zone”. This has worked for me so far, but if I take a break while in the zone, I find it hard to start working again, which means that I will tend to avoid unnatural breaks. The major downsides to this work management technique is that sometimes I can’t get in the right mindset, and working continuously without a break can lower the quality of my work.

I really like the concept of the Pomodoro Technique and I think that could be a successful management practice for Phase 0. Since we will be breaking up our challenges to pseudocode, coding, and refactoring, it seems that we can naturally apply this technique while planning and coding. I’ll try it out and see how it works.

#### 1.2 The Command Line Reflection
A shell is a user interface that can take scripts or commands and makes your operating system run them. Shells can be in the form of command-line or graphical user interfaces. Bash is a specific shell program that is commonly used by UNIX operating systems and uses a command-line interface.

I would say the most difficult thing was trying not to confuse which commands did what without studying the flash cards that I made after. I also forgot to change my directory back to /temp/ a couple times which lead to some confusion.

I was able to use every command, but apropos seemed to not produce the results I was expecting. As the writer suggests, it seems it would be easier to google what command I was looking for and see what Stack Overflow suggests.

I might be biased since I did a lot of bioinformatics research, but being able to parse through folders and files with find and grep are really useful. Otherwise man/help can help if you want to see what options you can do (like -i to ignore case for grep).

pwd = prints the working directory

ls = lists the files and folders in your working directory

mv = moves a file or directory

cd = changes your working directory

../ = moves a level up

touch = creates empty file in your working directory

mkdir = makes a folder in your working directory

less = opens up a file and lets you page through it

rmdir = removes an empty folder

rm = unlinks file or folder

help =  can show what a command does. man shows more on OS X, UNIX

#### 1.4 Forking and Cloning Reflection
If teaching someone on how to do some of the basic tasks with GitHub, I would ask them to:

Go to the project that they would like to contribute on.
Select the fork icon (usually in the top left) and select their username as the person who is creating the fork
They should automatically go to the new fork in their profile. Here they can copy the HTTPS url
After they have copied the url, they should open terminal/power-shell and change their directory to the desired location to store the new files. For example, I have a folder dedicated to phase-0 projects.
Once they are in the correct folder, type “git clone ” and paste the url that was earlier copied, and then hit enter. The folder and its contents should copy over. They may have to enter their GitHub password, but I wasn't prompted for it.

Forking a repository instead of creating a new one allows the developer the connivence of instantly having a documented copy of the code that they want to contribute on and they can easily clone it to their computer. It saves time if you want to work on someone else’s repo by making your own separate, distinct copy.

I had some trouble with the terminology used setting up git and GitHub. I forgot to fork the p0-cli-exploration project and thought about cloning it right away. I also had trouble using sublime to open the folder and had to research how to link the sublime application to the command “subl” and how to open folders (“subl  .”). I also got to learn some extra terminal tricks like using tab to finish a file/folder name I was typing, and using “rm -rf folderName” to delete a folder and all of its contents .