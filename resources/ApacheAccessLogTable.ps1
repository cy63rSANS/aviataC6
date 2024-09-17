$tableParams = @'
{
    "properties": {
        "schema": {
               "name": "apacheAccess2_CL",
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
                                "name": "RawData",
                                "type": "String"
                        }
              ]
        }
    }
}
'@
Invoke-AzRestMethod -Path "/subscriptions/0ca097b8-df5d-406b-8155-a4c896584838/resourcegroups/AviataCloud/providers/microsoft.operationalinsights/workspaces/fairlinelogs/tables/apacheAccess2_CL?api-version=2021-12-01-preview" -Method PUT -payload $tableParams