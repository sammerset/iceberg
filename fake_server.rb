# frozen_string_literal: true

# http_server.rb
require 'socket'
require 'json'

app = Proc.new do
  [
    '200',
    {'Content-Type' => 'text/html'},
    [ JSON.parse(%{
      [
        {
          "idSite": "209",
          "idVisit": "134853732",
          "visitIp": "24.6.5.33",
          "visitorId": "e280af5191b64f18",
          "actionDetails": [
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2683026",
              "serverTimePretty": "Sep 22, 2018 13:45:18",
              "pageId": "548144655",
              "generationTime": "0.3s",
              "timeSpent": "50",
              "timeSpentPretty": "50s",
              "icon": null,
              "timestamp": 1537623918
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2683026",
              "serverTimePretty": "Sep 22, 2018 13:39:39",
              "pageId": "548143378",
              "generationTime": "0.37s",
              "timeSpent": "1",
              "timeSpentPretty": "1s",
              "icon": null,
              "timestamp": 1537623579
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2683026",
              "serverTimePretty": "Sep 22, 2018 13:39:40",
              "pageId": "548143381",
              "generationTime": "0.37s",
              "timeSpent": "337",
              "timeSpentPretty": "5 min 37s",
              "icon": null,
              "timestamp": 1537623580
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2683026",
              "serverTimePretty": "Sep 22, 2018 13:45:17",
              "pageId": "548144653",
              "generationTime": "0.3s",
              "timeSpent": "1",
              "timeSpentPretty": "1s",
              "icon": null,
              "timestamp": 1537623917
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2683026",
              "serverTimePretty": "Sep 22, 2018 13:45:18",
              "pageId": "548144655",
              "generationTime": "0.3s",
              "timeSpent": "50",
              "timeSpentPretty": "50s",
              "icon": null,
              "timestamp": 1537623918
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&time=1-45-pm&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2728749",
              "serverTimePretty": "Sep 22, 2018 13:46:08",
              "pageId": "548144881",
              "generationTime": "0.29s",
              "timeSpent": "1",
              "timeSpentPretty": "1s",
              "icon": null,
              "timestamp": 1537623968
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&time=1-45-pm&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2728749",
              "serverTimePretty": "Sep 22, 2018 13:46:09",
              "pageId": "548144886",
              "generationTime": "0.29s",
              "timeSpent": "463",
              "timeSpentPretty": "7 min 43s",
              "icon": null,
              "timestamp": 1537623969
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2683026",
              "serverTimePretty": "Sep 22, 2018 13:53:52",
              "pageId": "548146737",
              "generationTime": "0.33s",
              "timeSpent": "1",
              "timeSpentPretty": "1s",
              "icon": null,
              "timestamp": 1537624432
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2683026",
              "serverTimePretty": "Sep 22, 2018 13:53:53",
              "pageId": "548146740",
              "generationTime": "0.33s",
              "timeSpent": "1161",
              "timeSpentPretty": "19 min 21s",
              "icon": null,
              "timestamp": 1537624433
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&evid=evid&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2728779",
              "serverTimePretty": "Sep 22, 2018 14:13:14",
              "pageId": "548151026",
              "generationTime": "0.31s",
              "timeSpent": "1",
              "timeSpentPretty": "1s",
              "icon": null,
              "timestamp": 1537625594
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&evid=evid&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2728779",
              "serverTimePretty": "Sep 22, 2018 14:13:15",
              "pageId": "548151027",
              "generationTime": "0.31s",
              "icon": null,
              "timestamp": 1537625595
            }
          ],
          "goalConversions": 0,
          "siteCurrency": "USD",
          "siteCurrencySymbol": "$",
          "serverDate": "2018-09-22",
          "visitServerHour": "21",
          "lastActionTimestamp": 1537650795,
          "lastActionDateTime": "2018-09-22 21:13:15",
          "userId": null,
          "visitorType": "returning",
          "visitorTypeIcon": "plugins\/Live\/images\/returningVisitor.gif",
          "visitConverted": "0",
          "visitConvertedIcon": null,
          "visitCount": "3",
          "firstActionTimestamp": 1537648779,
          "visitEcommerceStatus": "none",
          "visitEcommerceStatusIcon": null,
          "daysSinceFirstVisit": "0",
          "daysSinceLastEcommerceOrder": "0",
          "visitDuration": "2017",
          "visitDurationPretty": "33 min 37s",
          "searches": "0",
          "actions": "10",
          "referrerType": "campaign",
          "referrerTypeName": "Campaigns",
          "referrerName": "evid_966634dc-0bf6-1ff7-f4b6-08000c95c670",
          "referrerKeyword": "apptest.loanspq.com",
          "referrerKeywordPosition": null,
          "referrerUrl": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx?enc=li4vaDVj_-KYKOppTSH6EAi8DUDq8STa30c_DCm3YiF8QRdk5UCGkWYcLDkeFeMbxOpvYi_p3BIa_jm7FZbQqFJ-z15NQLKyeR42Sau7hee1R3eVee7IcblL2VWtEveE",
          "referrerSearchEngineUrl": null,
          "referrerSearchEngineIcon": null,
          "languageCode": "en-us",
          "language": "Language code en-us",
          "deviceType": "Desktop",
          "deviceTypeIcon": "plugins\/DevicesDetection\/images\/screens\/normal.gif",
          "deviceBrand": "Unknown",
          "deviceModel": "",
          "operatingSystem": "Mac 10.13",
          "operatingSystemName": "Mac",
          "operatingSystemIcon": "plugins\/DevicesDetection\/images\/os\/MAC.gif",
          "operatingSystemCode": "MAC",
          "operatingSystemVersion": "10.13",
          "browserFamily": "Blink",
          "browserFamilyDescription": "Blink (Chrome, Opera)",
          "browser": "Chrome 68.0",
          "browserName": "Chrome",
          "browserIcon": "plugins\/DevicesDetection\/images\/browsers\/CH.gif",
          "browserCode": "CH",
          "browserVersion": "68.0",
          "events": "0",
          "continent": "North America",
          "continentCode": "amn",
          "country": "United States",
          "countryCode": "us",
          "countryFlag": "plugins\/UserCountry\/images\/flags\/us.png",
          "region": "California",
          "regionCode": "CA",
          "city": "Hercules",
          "location": "Hercules, California, United States",
          "latitude": "38.009998",
          "longitude": "-122.259003",
          "visitLocalTime": "13:39:38",
          "visitLocalHour": "13",
          "daysSinceLastVisit": "0",
          "resolution": "2560x1440",
          "plugins": "pdf",
          "pluginsIcons": [
            {
              "pluginIcon": "plugins\/DevicePlugins\/images\/plugins\/pdf.gif",
              "pluginName": "pdf"
            }
          ],
          "provider": "comcast.net",
          "providerName": "Comcast",
          "providerUrl": "http:\/\/www.comcast.net\/",
          "serverTimestamp": 1537650795,
          "serverTimePretty": "14:13:15",
          "serverDatePretty": "Saturday, September 22, 2018",
          "serverDatePrettyFirstAction": "Saturday, September 22, 2018",
          "serverTimePrettyFirstAction": "13:39:39"
        },
        {
          "idSite": "209",
          "idVisit": "134853338",
          "visitIp": "24.6.5.33",
          "visitorId": "e280af5191b64f18",
          "actionDetails": [
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/alert-popup?lenderref=Meriwest_test&evid=12-56-pm&l=1",
              "pageTitle": "Alert Popup",
              "pageIdAction": "2728742",
              "serverTimePretty": "Sep 22, 2018 13:32:25",
              "pageId": "548141848",
              "generationTime": "0.48s",
              "timeSpent": "15",
              "timeSpentPretty": "15s",
              "icon": null,
              "timestamp": 1537623145
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/applicant-information?lenderref=Meriwest_test&evid=12-56-pm&l=1",
              "pageTitle": "Applicant Information",
              "pageIdAction": "2728695",
              "serverTimePretty": "Sep 22, 2018 13:32:40",
              "pageId": "548141917",
              "generationTime": "0.48s",
              "timeSpent": "1",
              "timeSpentPretty": "1s",
              "icon": null,
              "timestamp": 1537623160
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/applicant-information?lenderref=Meriwest_test&evid=12-56-pm&l=1",
              "pageTitle": "Applicant Information",
              "pageIdAction": "2728695",
              "serverTimePretty": "Sep 22, 2018 13:32:41",
              "pageId": "548141919",
              "generationTime": "0.48s",
              "timeSpent": "3",
              "timeSpentPretty": "3s",
              "icon": null,
              "timestamp": 1537623161
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&evid=12-56-pm&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2728692",
              "serverTimePretty": "Sep 22, 2018 13:32:44",
              "pageId": "548141932",
              "generationTime": "0.56s",
              "timeSpent": "1",
              "timeSpentPretty": "1s",
              "icon": null,
              "timestamp": 1537623164
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&evid=12-56-pm&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2728692",
              "serverTimePretty": "Sep 22, 2018 13:32:45",
              "pageId": "548141934",
              "generationTime": "0.56s",
              "icon": null,
              "timestamp": 1537623165
            }
          ],
          "goalConversions": 0,
          "siteCurrency": "USD",
          "siteCurrencySymbol": "$",
          "serverDate": "2018-09-22",
          "visitServerHour": "20",
          "lastActionTimestamp": 1537648365,
          "lastActionDateTime": "2018-09-22 20:32:45",
          "userId": null,
          "visitorType": "returning",
          "visitorTypeIcon": "plugins\/Live\/images\/returningVisitor.gif",
          "visitConverted": "0",
          "visitConvertedIcon": null,
          "visitCount": "3",
          "firstActionTimestamp": 1537648345,
          "visitEcommerceStatus": "none",
          "visitEcommerceStatusIcon": null,
          "daysSinceFirstVisit": "0",
          "daysSinceLastEcommerceOrder": "0",
          "visitDuration": "21",
          "visitDurationPretty": "21s",
          "searches": "0",
          "actions": "5",
          "referrerType": "direct",
          "referrerTypeName": "Direct Entry",
          "referrerName": "evid_ab7cde02ab-9523-109d-bbb6-c7e845a5b4",
          "referrerKeyword": "",
          "referrerKeywordPosition": null,
          "referrerUrl": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx?enc=li4vaDVj_-KYKOppTSH6EAi8DUDq8STa30c_DCm3YiF8QRdk5UCGkWYcLDkeFeMbKu9CUNbPoTiorqwPvEthQc3m7_f9H_b57WfDpLC79iM",
          "referrerSearchEngineUrl": null,
          "referrerSearchEngineIcon": null,
          "languageCode": "en-us",
          "language": "Language code en-us",
          "deviceType": "Desktop",
          "deviceTypeIcon": "plugins\/DevicesDetection\/images\/screens\/normal.gif",
          "deviceBrand": "Unknown",
          "deviceModel": "",
          "operatingSystem": "Mac 10.13",
          "operatingSystemName": "Mac",
          "operatingSystemIcon": "plugins\/DevicesDetection\/images\/os\/MAC.gif",
          "operatingSystemCode": "MAC",
          "operatingSystemVersion": "10.13",
          "browserFamily": "Blink",
          "browserFamilyDescription": "Blink (Chrome, Opera)",
          "browser": "Chrome 68.0",
          "browserName": "Chrome",
          "browserIcon": "plugins\/DevicesDetection\/images\/browsers\/CH.gif",
          "browserCode": "CH",
          "browserVersion": "68.0",
          "events": "0",
          "continent": "North America",
          "continentCode": "amn",
          "country": "United States",
          "countryCode": "us",
          "countryFlag": "plugins\/UserCountry\/images\/flags\/us.png",
          "region": "California",
          "regionCode": "CA",
          "city": "Hercules",
          "location": "Hercules, California, United States",
          "latitude": "38.009998",
          "longitude": "-122.259003",
          "visitLocalTime": "13:32:25",
          "visitLocalHour": "13",
          "daysSinceLastVisit": "0",
          "resolution": "2560x1440",
          "plugins": "pdf",
          "pluginsIcons": [
            {
              "pluginIcon": "plugins\/DevicePlugins\/images\/plugins\/pdf.gif",
              "pluginName": "pdf"
            }
          ],
          "provider": "comcast.net",
          "providerName": "Comcast",
          "providerUrl": "http:\/\/www.comcast.net\/",
          "serverTimestamp": 1537648365,
          "serverTimePretty": "13:32:45",
          "serverDatePretty": "Saturday, September 22, 2018",
          "serverDatePrettyFirstAction": "Saturday, September 22, 2018",
          "serverTimePrettyFirstAction": "13:32:25"
        },
        {
          "idSite": "209",
          "idVisit": "134849628",
          "visitIp": "24.6.5.33",
          "visitorId": "e280af5191b64f18",
          "actionDetails": [
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2683026",
              "serverTimePretty": "Sep 22, 2018 12:31:20",
              "pageId": "548127375",
              "generationTime": "0.4s",
              "timeSpent": "368",
              "timeSpentPretty": "6 min 8s",
              "icon": null,
              "timestamp": 1537619480
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/applicant-information?lenderref=Meriwest_test&l=1",
              "pageTitle": "Applicant Information",
              "pageIdAction": "2728668",
              "serverTimePretty": "Sep 22, 2018 12:37:28",
              "pageId": "548128830",
              "generationTime": "0.4s",
              "timeSpent": "1229",
              "timeSpentPretty": "20 min 29s",
              "icon": null,
              "timestamp": 1537619848
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&evid=12-56-pm&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2728692",
              "serverTimePretty": "Sep 22, 2018 12:57:57",
              "pageId": "548133839",
              "generationTime": "0.48s",
              "timeSpent": "0",
              "timeSpentPretty": "0s",
              "icon": null,
              "timestamp": 1537621077
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&evid=12-56-pm&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2728692",
              "serverTimePretty": "Sep 22, 2018 12:57:57",
              "pageId": "548133842",
              "generationTime": "0.48s",
              "timeSpent": "123",
              "timeSpentPretty": "2 min 3s",
              "icon": null,
              "timestamp": 1537621077
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/applicant-information?lenderref=Meriwest_test&evid=12-56-pm&l=1",
              "pageTitle": "Applicant Information",
              "pageIdAction": "2728695",
              "serverTimePretty": "Sep 22, 2018 13:00:00",
              "pageId": "548134375",
              "generationTime": "0.48s",
              "icon": null,
              "timestamp": 1537621200
            }
          ],
          "goalConversions": 0,
          "siteCurrency": "USD",
          "siteCurrencySymbol": "$",
          "serverDate": "2018-09-22",
          "visitServerHour": "20",
          "lastActionTimestamp": 1537646400,
          "lastActionDateTime": "2018-09-22 20:00:00",
          "userId": null,
          "visitorType": "returning",
          "visitorTypeIcon": "plugins\/Live\/images\/returningVisitor.gif",
          "visitConverted": "0",
          "visitConvertedIcon": null,
          "visitCount": "2",
          "firstActionTimestamp": 1537644680,
          "visitEcommerceStatus": "none",
          "visitEcommerceStatusIcon": null,
          "daysSinceFirstVisit": "0",
          "daysSinceLastEcommerceOrder": "0",
          "visitDuration": "1721",
          "visitDurationPretty": "28 min 41s",
          "searches": "0",
          "actions": "5",
          "referrerType": "campaign",
          "referrerTypeName": "Campaigns",
          "referrerName": "evid_3385a27a-cc20-8d98-940a-37dad5a93133",
          "referrerKeyword": "apptest.loanspq.com",
          "referrerKeywordPosition": null,
          "referrerUrl": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx?enc=li4vaDVj_-KYKOppTSH6EAi8DUDq8STa30c_DCm3YiF8QRdk5UCGkWYcLDkeFeMbxOpvYi_p3BIa_jm7FZbQqOONnGllTRmc_Bu-6NOdwlV3ObtSUZz6pcwlaSjGcOXy",
          "referrerSearchEngineUrl": null,
          "referrerSearchEngineIcon": null,
          "languageCode": "en-us",
          "language": "Language code en-us",
          "deviceType": "Desktop",
          "deviceTypeIcon": "plugins\/DevicesDetection\/images\/screens\/normal.gif",
          "deviceBrand": "Unknown",
          "deviceModel": "",
          "operatingSystem": "Mac 10.13",
          "operatingSystemName": "Mac",
          "operatingSystemIcon": "plugins\/DevicesDetection\/images\/os\/MAC.gif",
          "operatingSystemCode": "MAC",
          "operatingSystemVersion": "10.13",
          "browserFamily": "Blink",
          "browserFamilyDescription": "Blink (Chrome, Opera)",
          "browser": "Chrome 68.0",
          "browserName": "Chrome",
          "browserIcon": "plugins\/DevicesDetection\/images\/browsers\/CH.gif",
          "browserCode": "CH",
          "browserVersion": "68.0",
          "events": "0",
          "continent": "North America",
          "continentCode": "amn",
          "country": "United States",
          "countryCode": "us",
          "countryFlag": "plugins\/UserCountry\/images\/flags\/us.png",
          "region": "California",
          "regionCode": "CA",
          "city": "Hercules",
          "location": "Hercules, California, United States",
          "latitude": "38.009998",
          "longitude": "-122.259003",
          "visitLocalTime": "12:31:19",
          "visitLocalHour": "12",
          "daysSinceLastVisit": "0",
          "resolution": "2560x1440",
          "plugins": "pdf",
          "pluginsIcons": [
            {
              "pluginIcon": "plugins\/DevicePlugins\/images\/plugins\/pdf.gif",
              "pluginName": "pdf"
            }
          ],
          "provider": "comcast.net",
          "providerName": "Comcast",
          "providerUrl": "http:\/\/www.comcast.net\/",
          "serverTimestamp": 1537646400,
          "serverTimePretty": "13:00:00",
          "serverDatePretty": "Saturday, September 22, 2018",
          "serverDatePrettyFirstAction": "Saturday, September 22, 2018",
          "serverTimePrettyFirstAction": "12:31:20"
        },
        {
          "idSite": "209",
          "idVisit": "134843051",
          "visitIp": "24.6.5.33",
          "visitorId": "e280af5191b64f18",
          "actionDetails": [
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/pl\/PersonalLoan.aspx\/personal-loan-information?lenderref=Meriwest_test&l=1",
              "pageTitle": "Personal Loan Information",
              "pageIdAction": "2683027",
              "serverTimePretty": "Sep 22, 2018 10:52:52",
              "pageId": "548101270",
              "generationTime": "0.34s",
              "timeSpent": "1",
              "timeSpentPretty": "1s",
              "icon": null,
              "timestamp": 1537613572
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&rec=1&uid=evid_808asdfaasdv7a6s5dasdfva7s8d6f&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2728596",
              "serverTimePretty": "Sep 22, 2018 11:08:29",
              "pageId": "548105884",
              "generationTime": "0.37s",
              "timeSpent": "1075",
              "timeSpentPretty": "17 min 55s",
              "icon": null,
              "timestamp": 1537614509
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/pl\/PersonalLoan.aspx\/personal-loan-information?lenderref=Meriwest_test&l=1",
              "pageTitle": "Personal Loan Information",
              "pageIdAction": "2683027",
              "serverTimePretty": "Sep 22, 2018 10:52:53",
              "pageId": "548101272",
              "generationTime": "0.34s",
              "timeSpent": "734",
              "timeSpentPretty": "12 min 14s",
              "icon": null,
              "timestamp": 1537613573
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2683026",
              "serverTimePretty": "Sep 22, 2018 11:05:07",
              "pageId": "548104936",
              "generationTime": "0.38s",
              "timeSpent": "1",
              "timeSpentPretty": "1s",
              "icon": null,
              "timestamp": 1537614307
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2683026",
              "serverTimePretty": "Sep 22, 2018 11:05:08",
              "pageId": "548104941",
              "generationTime": "0.38s",
              "timeSpent": "200",
              "timeSpentPretty": "3 min 20s",
              "icon": null,
              "timestamp": 1537614308
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&rec=1&uid=evid_808asdfaasdv7a6s5dasdfva7s8d6f&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2728596",
              "serverTimePretty": "Sep 22, 2018 11:08:28",
              "pageId": "548105880",
              "generationTime": "0.37s",
              "timeSpent": "1",
              "timeSpentPretty": "1s",
              "icon": null,
              "timestamp": 1537614508
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&cb-vid=64c1f015-00ea-f186-6bb8-c545347e3075&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2728611",
              "serverTimePretty": "Sep 22, 2018 11:26:24",
              "pageId": "548110741",
              "generationTime": "0.38s",
              "timeSpent": "0",
              "timeSpentPretty": "0s",
              "icon": null,
              "timestamp": 1537615584
            },
            {
              "type": "action",
              "url": "https:\/\/apptest.loanspq.com\/vl\/VehicleLoan.aspx\/vehicle-loan-information?lenderref=Meriwest_test&cb-vid=64c1f015-00ea-f186-6bb8-c545347e3075&l=1",
              "pageTitle": "Vehicle Loan Information",
              "pageIdAction": "2728611",
              "serverTimePretty": "Sep 22, 2018 11:26:24",
              "pageId": "548110745",
              "generationTime": "0.38s",
              "icon": null,
              "timestamp": 1537615584
            }
          ],
          "goalConversions": 0,
          "siteCurrency": "USD",
          "siteCurrencySymbol": "$",
          "serverDate": "2018-09-22",
          "visitServerHour": "18",
          "lastActionTimestamp": 1537640784,
          "lastActionDateTime": "2018-09-22 18:26:24",
          "userId": null,
          "visitorType": "new",
          "visitorTypeIcon": null,
          "visitConverted": "0",
          "visitConvertedIcon": null,
          "visitCount": "1",
          "firstActionTimestamp": 1537638772,
          "visitEcommerceStatus": "none",
          "visitEcommerceStatusIcon": null,
          "daysSinceFirstVisit": "0",
          "daysSinceLastEcommerceOrder": "0",
          "visitDuration": "2013",
          "visitDurationPretty": "33 min 33s",
          "searches": "0",
          "actions": "8",
          "referrerType": "direct",
          "referrerTypeName": "Direct Entry",
          "referrerName": "incorrect-evid",
          "referrerKeyword": "",
          "referrerKeywordPosition": null,
          "referrerUrl": "https:\/\/apptest.loanspq.com\/pl\/PersonalLoan.aspx?enc=li4vaDVj_-KYKOppTSH6EAi8DUDq8STa30c_DCm3YiHUlKhg1J6JG2meqoCovcWv",
          "referrerSearchEngineUrl": null,
          "referrerSearchEngineIcon": null,
          "languageCode": "en-us",
          "language": "Language code en-us",
          "deviceType": "Desktop",
          "deviceTypeIcon": "plugins\/DevicesDetection\/images\/screens\/normal.gif",
          "deviceBrand": "Unknown",
          "deviceModel": "",
          "operatingSystem": "Mac 10.13",
          "operatingSystemName": "Mac",
          "operatingSystemIcon": "plugins\/DevicesDetection\/images\/os\/MAC.gif",
          "operatingSystemCode": "MAC",
          "operatingSystemVersion": "10.13",
          "browserFamily": "Blink",
          "browserFamilyDescription": "Blink (Chrome, Opera)",
          "browser": "Chrome 68.0",
          "browserName": "Chrome",
          "browserIcon": "plugins\/DevicesDetection\/images\/browsers\/CH.gif",
          "browserCode": "CH",
          "browserVersion": "68.0",
          "events": "0",
          "continent": "North America",
          "continentCode": "amn",
          "country": "United States",
          "countryCode": "us",
          "countryFlag": "plugins\/UserCountry\/images\/flags\/us.png",
          "region": "California",
          "regionCode": "CA",
          "city": "Hercules",
          "location": "Hercules, California, United States",
          "latitude": "38.009998",
          "longitude": "-122.259003",
          "visitLocalTime": "10:52:52",
          "visitLocalHour": "10",
          "daysSinceLastVisit": "0",
          "resolution": "2560x1440",
          "plugins": "pdf",
          "pluginsIcons": [
            {
              "pluginIcon": "plugins\/DevicePlugins\/images\/plugins\/pdf.gif",
              "pluginName": "pdf"
            }
          ],
          "provider": "comcast.net",
          "providerName": "Comcast",
          "providerUrl": "http:\/\/www.comcast.net\/",
          "serverTimestamp": 1537640784,
          "serverTimePretty": "11:26:24",
          "serverDatePretty": "Saturday, September 22, 2018",
          "serverDatePrettyFirstAction": "Saturday, September 22, 2018",
          "serverTimePrettyFirstAction": "10:52:52"
        }
      ]
    }).to_json]
  ]
end

server = TCPServer.new 3000

while session = server.accept do
  request = session.gets
  puts request

  status, headers, body = app.call({})
  session.print "HTTP/1.1 #{status}\r\n"
  headers.each do |key, value|
    session.print "#{key}: #{value}\r\n"
  end
  session.print "\r\n"
  body.each do |part|
    session.print part
  end
  session.close
end
