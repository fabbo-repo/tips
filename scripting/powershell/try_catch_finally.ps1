try {
    $wc = new-object System.Net.WebClient
    $wc.DownloadFile("http://www.contoso.com/MyDoc.doc","c:\temp\MyDoc.doc")
}
catch [System.Net.WebException],[System.IO.IOException] {
    "Unable to download MyDoc.doc from http://www.contoso.com."
}
catch {
    "An error occurred that could not be resolved."
}
catch [System.Management.Automation.CommandNotFoundException]
{"Inherited Exception" }