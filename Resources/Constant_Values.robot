*** Settings ***
Documentation       Constant Keywords and variables for all test cases

*** Variables ***

${success_Status_code}                          200
${header}                                       headers
${content_type}                                 Content-Type
${content_json}                                 application/json; charset=utf-8
${content_text_xml}                             text/xml; charset=utf-8

${payload_CountryName}                          <?xml version="1.0" encoding="utf-8"?><soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><CountryName xmlns="http://www.oorsprong.org/websamples.countryinfo"><sCountryISOCode>string</sCountryISOCode></CountryName></soap:Body></soap:Envelope>
${payload_LanguageName}                         <?xml version="1.0" encoding="utf-8"?><soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><LanguageName xmlns="http://www.oorsprong.org/websamples.countryinfo"><sISOCode>string</sISOCode></LanguageName></soap:Body></soap:Envelope>
${payload_CountryFlag}                          <?xml version="1.0" encoding="utf-8"?><soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><CountryFlag xmlns="http://www.oorsprong.org/websamples.countryinfo"><sCountryISOCode>string</sCountryISOCode></CountryFlag></soap:Body></soap:Envelope>
${payload_CapitalCity}                          <?xml version="1.0" encoding="utf-8"?><soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><CapitalCity xmlns="http://www.oorsprong.org/websamples.countryinfo"><sCountryISOCode>string</sCountryISOCode></CapitalCity></soap:Body></soap:Envelope>


${payload_ListOfContinentsByName}                <?xml version="1.0" encoding="utf-8"?><soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><ListOfContinentsByName xmlns="http://www.oorsprong.org/websamples.countryinfo"></ListOfContinentsByName></soap:Body></soap:Envelope>
${payload_ListOfContinentsByCode}                <?xml version="1.0" encoding="utf-8"?><soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><ListOfContinentsByCode xmlns="http://www.oorsprong.org/websamples.countryinfo"></ListOfContinentsByCode></soap:Body></soap:Envelope>
${payload_ListOfCurrenciesByName}                <?xml version="1.0" encoding="utf-8"?><soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><ListOfCurrenciesByName xmlns="http://www.oorsprong.org/websamples.countryinfo"></ListOfCurrenciesByName></soap:Body></soap:Envelope>
${payload_ListOfCurrenciesByCode}                <?xml version="1.0" encoding="utf-8"?><soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><ListOfCurrenciesByCode xmlns="http://www.oorsprong.org/websamples.countryinfo"></ListOfCurrenciesByCode></soap:Body></soap:Envelope>