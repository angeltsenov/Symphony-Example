#### Setup Instructions: ####

1.Start Docker Compose:
 - Navigate to the cloned folder in your terminal.

 - Run the command:
"docker compose up -d"

2.You may need to ppdate hosts File:
 - Open your "/etc/hosts" file.
 - Add the following lines:

127.0.0.1 localhost
127.0.0.1 db

3.Start Symfony Server:
- Navigate to the "my-project" folder in your terminal.
- Run the command:
"symfony server:start"

 #### Accessing PHPMyAdmin ####
- PHPMyAdmin is available locally at "http://localhost:8080/".
- After starting the project, visit "http://127.0.0.1:8001/" in your browser.
If you see the Symfony home page, the setup is complete.
- Explore the project further at "http://127.0.0.1:8001/product".
 ## Enjoy exploring the Symphony-Example project! ##
