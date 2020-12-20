# Overview of the collected Tobii Attention Data

As part of our data collection process, we monitor different lifecycles, such as:

* session lifecycle (e.g. a browser tab being opened and closed)
  * 'application/vnd.tobii.atex.session-started-event-v1+json'
  * 'application/vnd.tobii.atex.session-ended-event-v1+json'

* beacon lifecycle (e.g. an ad being loaded or removed from the browser tab)
  * 'application/vnd.tobii.atex.beacon-detected-event-v1+json'
  * 'application/vnd.tobii.atex.beacon-updated-event-v1+json'
  * 'application/vnd.tobii.atex.beacon-removed-event-v1+json'

* beacon view lifecycle (e.g. an ad becoming in-view or out-view)
  * 'application/vnd.tobii.atex.beacon-in-view-event-v1+json'
  * 'application/vnd.tobii.atex.beacon-out-view-event-v1+json'

* beacon hit (e.g. an ad being clicked on or fixated)
  * 'application/vnd.tobii.atex.beacon-attention-hit-event-v1+json'
  * 'application/vnd.tobii.atex.beacon-mouse-hit-event-v1+json'

* beacon artifact (e.g. a screenshot of an ad or a collection of eyetracker gazepoints)
  * 'application/vnd.tobii.atex.beacon-artifact-event-v1+json'

In addition to these metrics and structured data, we also collect "artifacts" relevant to each beacons, such as

* screenshots
* eyetracker gazepoints
* mouse-hovering coordinates
* etc

Each of these events carry data about

* the browser status,
* the eyetracker status,
* the screen coordinates,
* beacon HTML content,
* beacon meta data (such as brand, campaign name, etc),
* etc.

The events, along with the artifacts, will be post-processed and augmented
in order to analyze information that might not be available in clear text e.g. brand.

Below you can see an example of this ad (actual screenshot taken by us)

![screenshot](./overview-tobii-attention-data-c95a18ef-a3aa-4dba-a913-df95c84ddba2.png "screenshot")

which is

* an in-view event (application/vnd.tobii.atex.beacon-in-view-event-v1+json)
* related to a Casumo ad
* served by Bannerflow
* while a user is browsing AftonBladet.

```json
{
  "beacon": {
    "height": "244",
    "id": "39e70296-f724-4f75-b4e1-2d1f5e780808",
    "in_view_ratio_percentile": "100",
    "meta": {
      "_": true,
      "bf": {
        "defaulttargeturl": "https://www.casumo.com/sv/"
      },
      "bf_prop": {
        "accountid": "55793eaa8fb623183cbe3d90",
        "bannerformatid": "5d1cb0149aa5c2a040ab2eee",
        "bannerformatname": "null",
        "bannerid": "5d5d499eb563f6636c92df4c",
        "bannersizeheight": "240",
        "bannersizewidth": "980",
        "brandid": "55793f05727dd5190c2e7418",
        "campaignid": "5d1cb0039aa5c2a040ab2e8e",
        "campaignlabels": "null",
        "campaignname": "Dynamic Daily Drop Jackpot_Prospecting IE, CA, UK, FI, DE, NO",
        "domainname": "campaigns.casumo.com",
        "foldername": "2019 - Daily drop",
        "folderpath": [],
        "textculturename": "sv-se",
        "textid": "5d5d499eb563f6636c92df3a",
        "textlanguageculture": "se-sv",
        "textlanguageid": "5655ab4a6eba212ab41d8a87",
        "textlanguagename": "Swedish",
        "textname": "Swedish"
      },
      "html": "<html style=\"min-height: 100vh !important; min-width: 100vw !important;\"><head><script>var BF_prop={\"BannerId\":\"5d5d499eb563f6636c92df4c\",\"BannerFormatId\":\"5d1cb0149aa5c2a040ab2eee\",\"BannerFormatName\":null,\"BannerSizeWidth\":980,\"BannerSizeHeight\":240,\"TextId\":\"5d5d499eb563f6636c92df3a\",\"TextName\":\"Swedish\",\"TextLanguageId\":\"5655ab4a6eba212ab41d8a87\",\"TextLanguageName\":\"Swedish\",\"TextLanguageCulture\":\"se-sv\",\"TextCultureName\":\"sv-se\",\"AccountId\":\"55793eaa8fb623183cbe3d90\",\"BrandId\":\"55793f05727dd5190c2e7418\",\"CampaignId\":\"5d1cb0039aa5c2a040ab2e8e\",\"CampaignName\":\"Dynamic Daily Drop Jackpot_Prospecting IE, CA, UK, FI, DE, NO\",\"CampaignLabels\":null,\"FolderName\":\"2019 - Daily drop\",\"FolderPath\":[],\"DomainName\":\"campaigns.casumo.com\"};</script>\n<script>!function(){function n(n,o){var r,i,a;if(window.JSON&&window.parent&&window.parent.postMessage){if(r=t.clickpixel,i={},r&&(a=e(r),a.data))try{i=JSON.parse(a.data)}catch(n){}window.parent.postMessage(JSON.stringify({event:n,url:window.location.href,data:o,params:i}),'*')}}function e(n){n&&n.indexOf('?')>-1&&(n=n.substring(n.indexOf('?')+1));for(var e,t=/([^&=]+)=?([^&]*)/g,o=function(n){try{n=decodeURIComponent(n.replace(/\\+/g,' '))}catch(n){}return n},r=n||window.location.search.substring(1),i={};e=t.exec(r);)i[o(e[1])]=o(e[2]);return i}var t=e(),o='https://www.casumo.com/sv/';document.onclick=window.bannerClick=function(e){var r,i;e=e||window.event,r=o,i=r,t.targeturl&&(i=decodeURIComponent(t.targeturl)),window.onBannerClick&&'function'==typeof window.onBannerClick&&(i=window.onBannerClick(e,r)),(''+(i||'')).indexOf('//')>-1&&'#'!==i&&'none'!==i&&(i=i.replace(/\\[target_url\\]/gi,r).replace(/\\[target_url_esc\\]/gi,encodeURIComponent(r)).replace(/\\[target_url_esc_esc\\]/gi,encodeURIComponent(encodeURIComponent(r))),n('click',{targetUrl:r,x:e.clientX,y:e.clientY}),window.open(i,t.targetwindow||'_blank'))},window.BF={DefaultTargetUrl:o,trackEvent:n,bannerClick:bannerClick}}();</script>\n<script>function onBannerClick(e, targetUrl) { \n\n // Parameters\n var queries = new Object();\n window.location.search.replace(new RegExp('([^?=&]+)(=([^&]*))?', 'g'), function( $0, $1, $2, $3 ){ queries[ $1 ] = $3; });\n\n // Open window\n var clickUrl = targetUrl;\n if (queries['targeturl']) // Overridden Target URL via placement\n clickUrl = decodeURIComponent(queries['targeturl']);\n if(clickUrl) {\n // Resolve possible macros\n clickUrl = clickUrl.replace(/\\[target_url\\]/gi, targetUrl).replace(/\\[target_url_esc\\]/gi, encodeURIComponent(targetUrl)).replace(/\\[target_url_esc_esc\\]/gi, encodeURIComponent(encodeURIComponent(targetUrl)));\n\n //This should be injected into onBannerClick. makes it use the new click tracking\n if((window.BF ? window.BF : window).bannerClick) {\n return clickUrl;\n }\n\n // Custom click tracking pixel\n if (queries['clickpixel']) {\n var clickpixel = new Image();\n clickpixel.src = decodeURIComponent(queries['clickpixel']);\n }\n \n // Custom click script source\n if (queries['clickscript']) {\n\tvar clickScript = document.createElement('script');\n\tclickScript.type = 'text/javascript';\n\tclickScript.async = true;\n \tclickScript.src = decodeURIComponent(queries['clickscript']);\n \tvar firstScriptOnPage = document.getElementsByTagName('script');\n \tif (firstScriptOnPage.length > 0)\nfirstScriptOnPage[0].parentNode.insertBefore(clickScript, firstScriptOnPage[0]);\n }\n\n // Open window\n window.open(clickUrl, queries['targetwindow']);\n }\n}\n\n// Change text colors dynamically - DCO (via widget)\nwindow.addEventListener('message', function(e) {\n\ttry {\n\t if (typeof e == 'object') {\n\t \tif (e.data && e.data.data && e.data.data.event) {\n\n\t \t\tif (e.data.data.event == 'SET_DYNAMIC_COLOR') {\n\t \t\t\tvar obj = e.data.data.object;\n\n\t \t\t\tvar el = document.querySelector('.object-inner[data-text-field=\"' + obj.key + '\"]');\n\t \t\t\tif (el) {\n\t\t\t\t\t\tswitch (obj.property) {\n\t\t\t\t\t\t\tcase 'backgroundColorHover':\n\t\t\t\t\t\t\t\tvar css = '.object-inner[data-text-field=\"' + obj.key + '\"]:hover{ background-color: ' + obj.value + '; }';\n\t\t\t\t\t\t\t\tvar style = document.createElement('style');\n\t\t\t\t\t\t\t\tif (style.styleSheet) {\n\t\t\t\t\t\t\t\t style.styleSheet.cssText = css;\n\t\t\t\t\t\t\t\t} else {\n\t\t\t\t\t\t\t\t style.appendChild(document.createTextNode(css));\n\t\t\t\t\t\t\t\t}\n\t\t\t\t\t\t\t\tdocument.getElementsByTagName('head')[0].appendChild(style);\n\t\t\t\t\t\t\t\tbreak;\n\t\t\t\t\t\t\tdefault:\n\t\t\t\t\t\t\t\tel.style[obj.property] = obj.value;\n\t\t\t\t\t\t}\n\t \t\t\t}\n\t \t\t\t\n\t \t\t}\n\t \t}\n\t\t}\n\t} catch (err) {\n\n\t}\n});</script><style>\n .epmmgiiocbflpbpabpnhfopghbbjeaoc-beacon-label-parent {\n position: relative;\n height: 0;\n width: 0;\n }\n\n .epmmgiiocbflpbpabpnhfopghbbjeaoc-beacon-label {\n position: absolute;\n z-index: 1000;\n background-color: rgba(255,255,255,0.75);\n color: black;\n font-size: 8pt;\n line-height: normal;\n white-space: nowrap;\n height: 15px;\n }\n </style><meta name=\"BF\" content=\"{&quot;DefaultTargetUrl&quot;:&quot;https://www.casumo.com/sv/&quot;}\"><meta name=\"BF_prop\" content=\"{&quot;BannerId&quot;:&quot;5d5d499eb563f6636c92df4c&quot;,&quot;BannerFormatId&quot;:&quot;5d1cb0149aa5c2a040ab2eee&quot;,&quot;BannerFormatName&quot;:null,&quot;BannerSizeWidth&quot;:980,&quot;BannerSizeHeight&quot;:240,&quot;TextId&quot;:&quot;5d5d499eb563f6636c92df3a&quot;,&quot;TextName&quot;:&quot;Swedish&quot;,&quot;TextLanguageId&quot;:&quot;5655ab4a6eba212ab41d8a87&quot;,&quot;TextLanguageName&quot;:&quot;Swedish&quot;,&quot;TextLanguageCulture&quot;:&quot;se-sv&quot;,&quot;TextCultureName&quot;:&quot;sv-se&quot;,&quot;AccountId&quot;:&quot;55793eaa8fb623183cbe3d90&quot;,&quot;BrandId&quot;:&quot;55793f05727dd5190c2e7418&quot;,&quot;CampaignId&quot;:&quot;5d1cb0039aa5c2a040ab2e8e&quot;,&quot;CampaignName&quot;:&quot;Dynamic Daily Drop Jackpot_Prospecting IE, CA, UK, FI, DE, NO&quot;,&quot;CampaignLabels&quot;:null,&quot;FolderName&quot;:&quot;2019 - Daily drop&quot;,&quot;FolderPath&quot;:[],&quot;DomainName&quot;:&quot;campaigns.casumo.com&quot;}\"></head>\n<body style=\"margin:0;\">\n<img src=\"//cdn.bannerflow.com/bf-images/5d5d499eb563f6636c92df4c.5iSuH5561DHX.gif?cb=637072561914907442\" style=\"cursor:pointer;width:100%;height:auto\">\n\n<script id=\"epmmgiiocbflpbpabpnhfopghbbjeaoc-3c23289d-ad3e-4bef-9fc4-c615638d9942\">(function () {\n if (window.BF === undefined) {\n return;\n }\n\n let element = document.createElement('meta');\n element.setAttribute('name', 'BF');\n element.setAttribute('content', JSON.stringify(window.BF));\n document.head.appendChild(element);\n })()</script><script id=\"epmmgiiocbflpbpabpnhfopghbbjeaoc-fc7251bf-d5b7-419a-80b3-5f059feb71bb\">(function () {\n if (window.BF_prop === undefined) {\n return;\n }\n\n let el2 = document.createElement('meta');\n el2.setAttribute('name', 'BF_prop');\n el2.setAttribute('content', JSON.stringify(window.BF_prop));\n document.head.appendChild(el2);\n })()</script></body></html>",
      "htmlbaseurl": "https://cdn.bannerflow.com/bf-banners/",
      "text": "",
      "url": {
        "host": "cdn.bannerflow.com",
        "hostname": "cdn.bannerflow.com",
        "href": "https://cdn.bannerflow.com/bf-banners/5d5d499eb563f6636c92df4c.5iSuH5561DHX.html?cb=637072561915370923&clickpixel=%2F%2F55793f05727dd5190c2e7418.tracker.bannerflow.com%2Fapi%2Ftr%2Fclick%3Fdata%3D%257B%2522account%2522%253A%2522casumo%2522%252C%2522brand%2522%253A%252255793f05727dd5190c2e7418%2522%252C%2522placement%2522%253A%25225d9753c169cf6019e01188cd%2522%252C%2522ad%2522%253A%25225d5d499eb563f6636c92df4d%2522%252C%2522bannerset%2522%253A%25225d1cb0039aa5c2a040ab2e8e%2522%252C%2522banner%2522%253A%25225d5d499eb563f6636c92df4c%2522%252C%2522spotIndexes%2522%253A0%252C%2522bannerIds%2522%253A%25225d5d499eb563f6636c92df4c%2522%257D&targeturl=https%3A%2F%2Fadclick.g.doubleclick.net%2Fpcs%2Fclick%3Fxai%3DAKAOjstLzEXjmNrY5-N-IFNSBGSWGuRYbpmKjj8r2Yb2HnMkJiCWQTwFoSVbf_ZEIWQjxfcnhPIj0Aofk7F8rAU18ORULW3B58Rl9SRf3QrBjmNQYjS_YrpPkDDOxZDQbborqEbqlDtSRLEMYvR7AKQndhN518M3OCyqWiHatZExswEkQUfGM8y6nE9dqLS8VIBOh_U2ovjxj6k%26sai%3DAMfl-YTTS1sYdu2yGvhI7su6gd3p4TiFZVAGKRYAf-mgrp19U2_Uvz1opE2zOAu7E5eiwPL45l7gbRGqX3sHV1-RWaJlEaCnWUI01eAAY0gjx7X1%26sig%3DCg0ArKJSzFDhLpmbNisHEAE%26urlfix%3D1%26rm_eid%3D4130624%26adurl%3Dhttps%3A%2F%2Fams1-ib.adnxs.com%2Fclick%253FbjSAt0CCAEBuNIC3QIIAQAAAAMD16DlAbjSAt0CCAEBuNIC3QIIAQFw1j72VB4pCN4fZFQYwLXTeBrhdAAAAAOIB4QDXJgAA1yYAAAIAAADcRgULIHYaAAAAAABVU0QAU0VLANQD8ACHPQAAAAABAQQCAAAAAMgAECHHSQAAAAA.%2Fbcr%253DAAAAAAAA8D8%253D%2Fcnd%253D%2525215hBlXwiWs6cQENyNlVgYoOxpIAQoADEAAAAAAAA0QDoJQU1TMTozOTQzQN0USeC-DpwzYiNAUQAAAAAAAAAAWQAAAAAAAAAAYQAAAAAAAAAAaQAAAAAAAAAAcQAAAAAAAAAAeAA.%2Fcca%253DOTk0MyNBTVMxOjM5NDM%253D%2Fbn%253D84019%2Fclickenc%253Dhttps%253A%252F%252Fwww.casumo.com%252Fsv%252F%253Fdclid%253D%2525edclid!&targetwindow=_blank&ref=https%3A%2F%2Fwww.aftonbladet.se%2F",
        "origin": "https://cdn.bannerflow.com",
        "pathname": "/bf-banners/5d5d499eb563f6636c92df4c.5iSuH5561DHX.html",
        "pathnameparams": [
          "bf-banners",
          "5d5d499eb563f6636c92df4c.5iSuH5561DHX.html"
        ],
        "protocol": "https:",
        "search": "?cb=637072561915370923&clickpixel=%2F%2F55793f05727dd5190c2e7418.tracker.bannerflow.com%2Fapi%2Ftr%2Fclick%3Fdata%3D%257B%2522account%2522%253A%2522casumo%2522%252C%2522brand%2522%253A%252255793f05727dd5190c2e7418%2522%252C%2522placement%2522%253A%25225d9753c169cf6019e01188cd%2522%252C%2522ad%2522%253A%25225d5d499eb563f6636c92df4d%2522%252C%2522bannerset%2522%253A%25225d1cb0039aa5c2a040ab2e8e%2522%252C%2522banner%2522%253A%25225d5d499eb563f6636c92df4c%2522%252C%2522spotIndexes%2522%253A0%252C%2522bannerIds%2522%253A%25225d5d499eb563f6636c92df4c%2522%257D&targeturl=https%3A%2F%2Fadclick.g.doubleclick.net%2Fpcs%2Fclick%3Fxai%3DAKAOjstLzEXjmNrY5-N-IFNSBGSWGuRYbpmKjj8r2Yb2HnMkJiCWQTwFoSVbf_ZEIWQjxfcnhPIj0Aofk7F8rAU18ORULW3B58Rl9SRf3QrBjmNQYjS_YrpPkDDOxZDQbborqEbqlDtSRLEMYvR7AKQndhN518M3OCyqWiHatZExswEkQUfGM8y6nE9dqLS8VIBOh_U2ovjxj6k%26sai%3DAMfl-YTTS1sYdu2yGvhI7su6gd3p4TiFZVAGKRYAf-mgrp19U2_Uvz1opE2zOAu7E5eiwPL45l7gbRGqX3sHV1-RWaJlEaCnWUI01eAAY0gjx7X1%26sig%3DCg0ArKJSzFDhLpmbNisHEAE%26urlfix%3D1%26rm_eid%3D4130624%26adurl%3Dhttps%3A%2F%2Fams1-ib.adnxs.com%2Fclick%253FbjSAt0CCAEBuNIC3QIIAQAAAAMD16DlAbjSAt0CCAEBuNIC3QIIAQFw1j72VB4pCN4fZFQYwLXTeBrhdAAAAAOIB4QDXJgAA1yYAAAIAAADcRgULIHYaAAAAAABVU0QAU0VLANQD8ACHPQAAAAABAQQCAAAAAMgAECHHSQAAAAA.%2Fbcr%253DAAAAAAAA8D8%253D%2Fcnd%253D%2525215hBlXwiWs6cQENyNlVgYoOxpIAQoADEAAAAAAAA0QDoJQU1TMTozOTQzQN0USeC-DpwzYiNAUQAAAAAAAAAAWQAAAAAAAAAAYQAAAAAAAAAAaQAAAAAAAAAAcQAAAAAAAAAAeAA.%2Fcca%253DOTk0MyNBTVMxOjM5NDM%253D%2Fbn%253D84019%2Fclickenc%253Dhttps%253A%252F%252Fwww.casumo.com%252Fsv%252F%253Fdclid%253D%2525edclid!&targetwindow=_blank&ref=https%3A%2F%2Fwww.aftonbladet.se%2F",
        "searchparams": {
          "cb": "637072561915370923",
          "clickpixel": "//55793f05727dd5190c2e7418.tracker.bannerflow.com/api/tr/click?data=%7B%22account%22%3A%22casumo%22%2C%22brand%22%3A%2255793f05727dd5190c2e7418%22%2C%22placement%22%3A%225d9753c169cf6019e01188cd%22%2C%22ad%22%3A%225d5d499eb563f6636c92df4d%22%2C%22bannerset%22%3A%225d1cb0039aa5c2a040ab2e8e%22%2C%22banner%22%3A%225d5d499eb563f6636c92df4c%22%2C%22spotIndexes%22%3A0%2C%22bannerIds%22%3A%225d5d499eb563f6636c92df4c%22%7D",
          "ref": {
            "host": "www.aftonbladet.se",
            "hostname": "www.aftonbladet.se",
            "href": "https://www.aftonbladet.se/",
            "origin": "https://www.aftonbladet.se",
            "pathname": "/",
            "pathnameparams": [
              ""
            ],
            "protocol": "https:",
            "searchparams": {}
          },
          "targeturl": {
            "host": "adclick.g.doubleclick.net",
            "hostname": "adclick.g.doubleclick.net",
            "href": "https://adclick.g.doubleclick.net/pcs/click?xai=AKAOjstLzEXjmNrY5-N-IFNSBGSWGuRYbpmKjj8r2Yb2HnMkJiCWQTwFoSVbf_ZEIWQjxfcnhPIj0Aofk7F8rAU18ORULW3B58Rl9SRf3QrBjmNQYjS_YrpPkDDOxZDQbborqEbqlDtSRLEMYvR7AKQndhN518M3OCyqWiHatZExswEkQUfGM8y6nE9dqLS8VIBOh_U2ovjxj6k&sai=AMfl-YTTS1sYdu2yGvhI7su6gd3p4TiFZVAGKRYAf-mgrp19U2_Uvz1opE2zOAu7E5eiwPL45l7gbRGqX3sHV1-RWaJlEaCnWUI01eAAY0gjx7X1&sig=Cg0ArKJSzFDhLpmbNisHEAE&urlfix=1&rm_eid=4130624&adurl=https://ams1-ib.adnxs.com/click%3FbjSAt0CCAEBuNIC3QIIAQAAAAMD16DlAbjSAt0CCAEBuNIC3QIIAQFw1j72VB4pCN4fZFQYwLXTeBrhdAAAAAOIB4QDXJgAA1yYAAAIAAADcRgULIHYaAAAAAABVU0QAU0VLANQD8ACHPQAAAAABAQQCAAAAAMgAECHHSQAAAAA./bcr%3DAAAAAAAA8D8%3D/cnd%3D%25215hBlXwiWs6cQENyNlVgYoOxpIAQoADEAAAAAAAA0QDoJQU1TMTozOTQzQN0USeC-DpwzYiNAUQAAAAAAAAAAWQAAAAAAAAAAYQAAAAAAAAAAaQAAAAAAAAAAcQAAAAAAAAAAeAA./cca%3DOTk0MyNBTVMxOjM5NDM%3D/bn%3D84019/clickenc%3Dhttps%3A%2F%2Fwww.casumo.com%2Fsv%2F%3Fdclid%3D%25edclid!",
            "origin": "https://adclick.g.doubleclick.net",
            "pathname": "/pcs/click",
            "pathnameparams": [
              "pcs",
              "click"
            ],
            "protocol": "https:",
            "search": "?xai=AKAOjstLzEXjmNrY5-N-IFNSBGSWGuRYbpmKjj8r2Yb2HnMkJiCWQTwFoSVbf_ZEIWQjxfcnhPIj0Aofk7F8rAU18ORULW3B58Rl9SRf3QrBjmNQYjS_YrpPkDDOxZDQbborqEbqlDtSRLEMYvR7AKQndhN518M3OCyqWiHatZExswEkQUfGM8y6nE9dqLS8VIBOh_U2ovjxj6k&sai=AMfl-YTTS1sYdu2yGvhI7su6gd3p4TiFZVAGKRYAf-mgrp19U2_Uvz1opE2zOAu7E5eiwPL45l7gbRGqX3sHV1-RWaJlEaCnWUI01eAAY0gjx7X1&sig=Cg0ArKJSzFDhLpmbNisHEAE&urlfix=1&rm_eid=4130624&adurl=https://ams1-ib.adnxs.com/click%3FbjSAt0CCAEBuNIC3QIIAQAAAAMD16DlAbjSAt0CCAEBuNIC3QIIAQFw1j72VB4pCN4fZFQYwLXTeBrhdAAAAAOIB4QDXJgAA1yYAAAIAAADcRgULIHYaAAAAAABVU0QAU0VLANQD8ACHPQAAAAABAQQCAAAAAMgAECHHSQAAAAA./bcr%3DAAAAAAAA8D8%3D/cnd%3D%25215hBlXwiWs6cQENyNlVgYoOxpIAQoADEAAAAAAAA0QDoJQU1TMTozOTQzQN0USeC-DpwzYiNAUQAAAAAAAAAAWQAAAAAAAAAAYQAAAAAAAAAAaQAAAAAAAAAAcQAAAAAAAAAAeAA./cca%3DOTk0MyNBTVMxOjM5NDM%3D/bn%3D84019/clickenc%3Dhttps%3A%2F%2Fwww.casumo.com%2Fsv%2F%3Fdclid%3D%25edclid!",
            "searchparams": {
              "adurl": {
                "host": "ams1-ib.adnxs.com",
                "hostname": "ams1-ib.adnxs.com",
                "href": "https://ams1-ib.adnxs.com/click?bjSAt0CCAEBuNIC3QIIAQAAAAMD16DlAbjSAt0CCAEBuNIC3QIIAQFw1j72VB4pCN4fZFQYwLXTeBrhdAAAAAOIB4QDXJgAA1yYAAAIAAADcRgULIHYaAAAAAABVU0QAU0VLANQD8ACHPQAAAAABAQQCAAAAAMgAECHHSQAAAAA./bcr=AAAAAAAA8D8=/cnd=%215hBlXwiWs6cQENyNlVgYoOxpIAQoADEAAAAAAAA0QDoJQU1TMTozOTQzQN0USeC-DpwzYiNAUQAAAAAAAAAAWQAAAAAAAAAAYQAAAAAAAAAAaQAAAAAAAAAAcQAAAAAAAAAAeAA./cca=OTk0MyNBTVMxOjM5NDM=/bn=84019/clickenc=https://www.casumo.com/sv/?dclid=%edclid!",
                "origin": "https://ams1-ib.adnxs.com",
                "pathname": "/click",
                "pathnameparams": [
                  "click"
                ],
                "protocol": "https:",
                "search": "?bjSAt0CCAEBuNIC3QIIAQAAAAMD16DlAbjSAt0CCAEBuNIC3QIIAQFw1j72VB4pCN4fZFQYwLXTeBrhdAAAAAOIB4QDXJgAA1yYAAAIAAADcRgULIHYaAAAAAABVU0QAU0VLANQD8ACHPQAAAAABAQQCAAAAAMgAECHHSQAAAAA./bcr=AAAAAAAA8D8=/cnd=%215hBlXwiWs6cQENyNlVgYoOxpIAQoADEAAAAAAAA0QDoJQU1TMTozOTQzQN0USeC-DpwzYiNAUQAAAAAAAAAAWQAAAAAAAAAAYQAAAAAAAAAAaQAAAAAAAAAAcQAAAAAAAAAAeAA./cca=OTk0MyNBTVMxOjM5NDM=/bn=84019/clickenc=https://www.casumo.com/sv/?dclid=%edclid!",
                "searchparams": {
                  "bjsat0ccaebunic3qiiaqaaaamd16dlabjsat0ccaebunic3qiiaqfw1j72vb4pcn4fzfqywlxtebrhdaaaaaoib4qdxjgaa1yyaaaiaaadcrgulihyaaaaaaabvu0qau0vlanqd8achpqaaaaabaqqcaaaaamgaechhsqaaaaa./bcr": "AAAAAAAA8D8=/cnd=!5hBlXwiWs6cQENyNlVgYoOxpIAQoADEAAAAAAAA0QDoJQU1TMTozOTQzQN0USeC-DpwzYiNAUQAAAAAAAAAAWQAAAAAAAAAAYQAAAAAAAAAAaQAAAAAAAAAAcQAAAAAAAAAAeAA./cca=OTk0MyNBTVMxOjM5NDM=/bn=84019/clickenc=https://www.casumo.com/sv/?dclid=�clid!"
                }
              },
              "rm_eid": "4130624",
              "sai": "AMfl-YTTS1sYdu2yGvhI7su6gd3p4TiFZVAGKRYAf-mgrp19U2_Uvz1opE2zOAu7E5eiwPL45l7gbRGqX3sHV1-RWaJlEaCnWUI01eAAY0gjx7X1",
              "sig": "Cg0ArKJSzFDhLpmbNisHEAE",
              "urlfix": "1",
              "xai": "AKAOjstLzEXjmNrY5-N-IFNSBGSWGuRYbpmKjj8r2Yb2HnMkJiCWQTwFoSVbf_ZEIWQjxfcnhPIj0Aofk7F8rAU18ORULW3B58Rl9SRf3QrBjmNQYjS_YrpPkDDOxZDQbborqEbqlDtSRLEMYvR7AKQndhN518M3OCyqWiHatZExswEkQUfGM8y6nE9dqLS8VIBOh_U2ovjxj6k"
            }
          },
          "targetwindow": "_blank"
        }
      }
    },
    "parent_ids": [],
    "tags": [],
    "type": "ad/bannerflow.com-bf-iframe-v1",
    "width": "980",
    "x": "0",
    "y": "0"
  },
  "browser": {
    "adblock_detected": false,
    "client": {
      "height": "240",
      "scroll": {
        "x": "0",
        "y": "0"
      },
      "width": "980",
      "x": "79",
      "y": "147"
    },
    "page": {
      "height": "244",
      "url": {
        "host": "www.aftonbladet.se",
        "hostname": "www.aftonbladet.se",
        "href": "https://www.aftonbladet.se/",
        "origin": "https://www.aftonbladet.se",
        "pathname": "/",
        "pathnameparams": [
          ""
        ],
        "protocol": "https:",
        "searchparams": {}
      },
      "width": "980",
      "x": "0",
      "y": "0",
      "zoom_factor_percentile": "100"
    },
    "screen": {
      "available": {
        "height": "805",
        "left": "0",
        "top": "23",
        "width": "1440"
      },
      "height": "900",
      "orientation": {
        "angle": "0",
        "type": "landscape-primary"
      },
      "os_zoom_factor_percentile": "100",
      "pixel_ratio_percentile": "100",
      "width": "1440"
    },
    "window": {
      "height": "795",
      "viewport": {
        "x": "0",
        "y": "0"
      },
      "width": "1419",
      "x": "40",
      "y": "23"
    }
  },
  "client": {
    "id": "chrome-extension://epmmgiiocbflpbpabpnhfopghbbjeaoc",
    "installation_id": "35057ffb-3e4e-4050-9ed0-11bfd985845b",
    "name": "Tobii Pro Attention Panel (beta)",
    "version": "v0.1.168"
  },
  "duration": "PT2S",
  "experimental": {
    "http_block_detected": true,
    "http_block_urls": "[]",
    "permissions_block_detected": false
  },
  "eyetracker": {
    "configuration_valid": true,
    "connected": true,
    "detected": true
  },
  "geo": {
    "city": {
      "name": "London"
    },
    "country": {
      "iso_3166_1_alpha_2": "GB",
      "name": "United Kingdom"
    },
    "region": {
      "name": "England"
    }
  },
  "id": "9a0f47b0-d1e5-44b7-bd06-69872037554e",
  "intersection": {
    "ratio_percentile": "100",
    "threshold_percentile": "50"
  },
  "ntp": {
    "in_sync": true,
    "offset": "0"
  },
  "platform": {
    "description": "Chrome 77.0.3865.90 on OS X 10.12.6 64-bit",
    "layout": "Blink",
    "name": "Chrome",
    "os": {
      "architecture": "64",
      "family": "OS X",
      "version": "10.12.6"
    },
    "ua": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36",
    "version": "77.0.3865.90"
  },
  "session": {
    "id": "19ae323c-fd80-419e-a328-bdc38ba21669"
  },
  "time": {
    "stamp": "2019-10-29T09:31:21.952Z",
    "utc_offset": "0",
    "zone": "Europe/London"
  }
}
```
