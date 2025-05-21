HOW TO RUNNING AUTOMATION

1.Install Python version 3+
2.Install Robot framework,pip ,robotframework-selenium2library,robotframework-appiumlibrary
3. Clone repo
4. Open project repo
5. run this command on your terminal :
    task automation web : robot -d "report" ./tests/web/checkoutE2E.robot
6. change to venv -> source ~/.venv/bin/activate

Foldering :
report -> hasil generate automation dalam bentuk html report
resource : berisi keywords dan variable data
    web
test : berisi fitur testcases
    web
