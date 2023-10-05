# Preliminary instructions

1. Clone the git repository in https://gitlab.citic.udc.es/emilio.padron/hpctools

        git clone https://gitlab.citic.udc.es/emilio.padron/hpctools.git

    + That will create an hpctools subdirectory in your system
    + This will be your local repository for this task
    + At this point, you should have these 8 files in your local repository:

            $ ls
            dgesv.c  dgesv.h  main.c  makefile  README.md  task1.txt  timer.c  timer.h

2. Create your own remote remote repository

    - Just create an empty new project in a git forge, such as
      http://gitlab.com or http://github.com

    - Add that remote repository to your local repository:

            $ git remote add myorigin git@gitlab.com:emiliojpg/hpctools.git

3. Upload the content of your local repo to your remote repo:

        $ git push --set-upstream myorigin

    + This creates a branch in your remote repo the gitlab repo
      labeled (myorigin in this example) linked to your local branch
    + Future pull}/push operations do not need to specify the remote
      repo: their will work between local/main - myremote/main

4. You must provide access to your remote repo to the two teachers of
    HPCTools: Diego Andrade and Emilio J. Padrón
