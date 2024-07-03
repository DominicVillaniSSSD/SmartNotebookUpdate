# Update tool for Smart Notebook 
This Tool will will update Smart Notebook using a script to save time 
## How to run:
To run this script paste the command below into the terminal with a user account with admin privileges  
### How to run with a non privileged user:
Run su and the username of an admin user ex: su admin  
Then enter in the password in for the user you have just typed in
you will also need to type exit in the terminal once the script is complete 

```
curl -O https://raw.githubusercontent.com/DominicVillaniSSSD/SmartNotebookUpdate/test/SmartNotebookUpdate.sh && chmod +x SmartNotebookUpdate.sh && sudo ./SmartNotebookUpdate.sh
```
#####Versions 
smart_notebook 24.0.240.1 (For newer MacOS versions) or  
smart_notebook 21.1 (For older MacOS Versions [Big Sur, Catalonia])  

## *Note this script is only validated to work in MacOS Catalonia and up. Some of the Software included in this script is version specific and may need to be changed to work with older version of MacOS
