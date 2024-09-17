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
Invoke-AzRestMethod -Path "/subscriptions/0ca097b8-df5d-406b-8155-a4c896584838/resourcegroups/Aviata/providers/microsoft.operationalinsights/workspaces/fairlinelogs/tables/apacheError_CL?api-version=2021-12-01-preview" -Method PUT -payload $tableParams