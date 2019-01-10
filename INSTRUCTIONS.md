# This is file in which you have to indicate which files from which
# directories go where

 INSTRUCTIONS:
    Comments:
        You can write a comment (in other words something that the code will
        not read) by starting the the line with a "#" character and writing
        your comment after the "#". You can also also write a comment at the
        end of a line by putting "#" before the comment it-self (if it's not
        clear, just ask me)

    How to write paths:
        A path the location a certain file or folder. I don't know how to
        explain this simply without an example, so here is a concrete one:
            If you have a folder named "School" in your Documents folder, 
            the path to "School" will be "Documents/School"
        To indicate the path of a given folder you have to indicate every
        parent folder (in other words, the parent the folder in which the
        current folder is contained in).
        A more complex complex example:
            If you have the following folder structure:

                Documents
                    |
                    |------School
                    |        |--------Semestre 1
                    |        |            |
                    |        |            |------Roman Law
                    |        |            |------Greek Law
                    |        |
                    |        |--------Semestre 2
                    |        |            |------Mariage Law
                    |        |            |------Divorce Law
                    |        |
                    |        |--------Semestre 3
                    |                     |------Inheritance Law
                    |                     |------Penal Law
                    |
                    |------Private
                    |        |--------Documents d'identité
                    |        |--------Random Stuff
                    |
                    |------Work
                            |--------Newspapers Done
                            |--------Newspapers To Read

            In words, it means that in the Documents folder you have 3
            folders (School, Private, Work). In School you have 3 folders
            (Semester 1, Semester 2, Semester 3) which each contain a folder
            on a specific law subject. in Private you have 2 folders
            (Documents d'identité and Random Stuff) and finally in Work you
            have 2 folders (Newspapers Done, Newspapers To Read).

            In order to indicate the path to "Inheritance Law", the full path
            will be "Documents/School/Semestre 3/Inheritance Law".
            Or the path that leads to "Documents d'identité" will be
            "Documents/Private/Documents d'identité".
            
            This will be usefull later

    Structure:
        The file is structured in the following manner:
            - First of all, you have to set the starting point and the
              destination of the files you want to copy. You do that by
              starting at the beginning of the line and write:
                    Path_to_the_starting_point_folder -> Path_to_destination_folder




Documents/EPFL -> Yann: # The following files will be copied from the
                        #~/Documents/EPFL/ directory to the /tmp/Yann/ directory
    moi.jpg
    toi.pdf

/tmp/yann2:
    moi.jpg
