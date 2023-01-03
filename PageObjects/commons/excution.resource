*** Variables ***
${site_url}     https://cmp-test.medadstg.com
${login}        /#login
${browser}      Chrome

#read from json file
${json}         Get file    ${EXECDIR}\\PageObjects\\TestData\\testdata.json
${object}       Evaluate    json.loads('''${json}''')    json
