#### Setup Instructions: ####

1.Start Docker Compose:

- Open your terminal and navigate to the cloned project folder.
- Run the following command to start Docker Compose in detached mode:

"docker compose up -d"

2. Run Migrations: 
- Execute the following command to run the database migrations:
"docker compose exec web bin/console doctrine:migrations:migrate"

 ## You will be prompted to confirm the action. Type yes and press Enter

3. Open your web browser and navigate to:
"http://localhost:8000/product"
