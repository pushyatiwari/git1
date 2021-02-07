echo "enter directory name "
read path
if [[ -d "$path" ]]
then 
     echo " exist"
else 
      echo "do you want to create a directory"
      read  isCreate
      if [[ isCreate -eq 1 ]]
       then
          mkdir $path
          echo "enter name of file to be created"
          read name
          echo "hi there, this is file 1 \n On the other hand, you may want to check \n if a file does not exist on your filesystem." >> $path/name.txt
          cp $path/name.txt $path/name_copy.txt
          echo contents of copied file
          cat $path/name_copy.txt | grep is

     else
        echo "byee"
        fi
 
fi

