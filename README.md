This is a Maven Project. 
You will need to run it using Maven commands inside the project directory i.e mvn clean install, mvn test etc.
For more information, read the Lab 4 Manual
The project structure is as follows: 
<img width="321" alt="Screenshot 2024-06-10 at 2 37 35 AM" src="https://github.com/ashiqullahmg/crypto-testing/assets/43939523/5b424e37-9397-4356-8122-63fed681286f">

Tests pertaining to new user accounts are somewhat inconsistent at the moment. To avoid this, delete the Docker containers being tested, and rerun `docker-compose -f crypto-back/docker-compose-ci.yml up -d` before testing, to reset the database and ensure tests execute properly.

TODO:
Add tests for the following:
3. File Encryption and Decryption
4. File Upload Visibility
5. Testing Bug that You have fix and the Proposed Functionality/Feature (in Task II)