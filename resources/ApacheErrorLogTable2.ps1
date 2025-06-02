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
          "name": "Module",
          "type": "String"
        },
        {
          "name": "LogLevel",
          "type": "String"
        },
        {
          "name": "ProcessID",
          "type": "String"
        },
        {
          "name": "ThreadID",
          "type": "String"
        },
        {
          "name": "ClientIP",
          "type": "String"
        },
        {
          "name": "ClientPort",
          "type": "String"
        },
        {
          "name": "ErrorCode",
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
Invoke-AzRestMethod -Path "/subscriptions/<SUBSCRIPTION>/resourcegroups/AviataCloud/providers/microsoft.operationalinsights/workspaces/AviataLogs/tables/apacheError_CL?api-version=2021-12-01-preview" -Method PUT -payload $tableParams