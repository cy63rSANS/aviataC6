$tableParams = @'
{
    "properties": {
        "schema": {
               "name": "apacheAccess_CL",
               "columns": [
        {
                                "name": "SrcIP",
                                "type": "String"
                        },
                        {
                                "name": "TimeGenerated",
                                "type": "DateTime"
                        }, 
                        {
                                "name": "Method",
                                "type": "String"
                       },
                        {       
                                "name": "Request",
                                "type": "String"
                       },
                        {
                                "name": "HTTPcode",
                                "type": "String"
                        },
                        {
                                "name": "Size",
                                "type": "Int"
                        },
                        {
                                "name": "UserAgent",
                                "type": "String"
                        },
                        {
                                "name": "Computer",
                                "type": "string"
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
Invoke-AzRestMethod -Path "/subscriptions/<SUBSCRIPTION>/resourcegroups/AviataCloud/providers/microsoft.operationalinsights/workspaces/AviataLogs/tables/apacheAccess_CL?api-version=2021-12-01-preview" -Method PUT -payload $tableParams