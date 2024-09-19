$tableParams = @'
{
    "properties": {
        "schema": {
               "name": "apacheError_CL",
               "columns": [
        {
                                "name": "TimeGenerated",
                                "type": "DateTime"
                        },
                        {
                                "name": "Source",
                                "type": "String"
                       },
                        {
                                "name": "Process",
                                "type": "String"
                       },
                        {
                                "name": "ErrorMsg",
                                "type": "String"
                        },
                        {
                                "name": "RawData",
                                "type": "String"
                        }
              ]
        }
    }
}
'@
Invoke-AzRestMethod -Path "/subscriptions/replace1-this-with-your-00identifier/resourcegroups/AviataCloud/providers/microsoft.operationalinsights/workspaces/AviataLogs/tables/apacheError_CL?api-version=2021-12-01-preview" -Method PUT -payload $tableParams