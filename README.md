---
noteId: "48e633c0c8fa11efb1376198d99b5f98"
tags: []

---

# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch`
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.


cds bind --to freightorderattachments-messaging:fos4o5p
cds bind --to dmsfree:dmsfreekey
cds watch --profile hybrid



com/fo/attach/ce/sap/s4/beh/FreightOrder/Created/v1

application/cloudevents+json

```
{
"type":"sap.s4.beh.FreightOrder.Created.v1",
"specversion":"1.0",
"source":"/default/sap.s4.beh/740623809",
"id":"dd841049-0b04-1edf-afb7-578bc54ed473",
"time":"2024-12-19T03:38:40Z",
"datacontenttype":"application/json",
"data":
{
"TransportationOrderUUID":"dd841049-0b04-1edf-afb7-543a3c8e1473",
"TransportationOrder":"6600000900",
"TransportationOrderType":"SFO2",
"TransportationMode":"01",
"TransportationShippingType":"18",
"Carrier":"13386001",
"TranspPurgOrgExtID":""
}
}

```
