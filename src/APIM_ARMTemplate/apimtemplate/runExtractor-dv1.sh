#! /bin/bash

#Example of api name: api-security-v1
echo Enter api name:

read apiName

#Example of output folder: C:\Dev\EPA\api-security-v1\apis\arm-files
echo Enter output folder:

read outputFolder

dotnet run extract --sourceApimName it-shared-apim-epa-vic-dv1 --destinationApimName it-shared-apim-epa-vic-dev --resourceGroup it-shared-integ-rg-epa-vic-dev --fileFolder "$outputFolder" --apiName "$apiName" --policyXMLBaseUrl https://deploystintegvicdev.blob.core.windows.net/deploysecurityv1apidef/_api-security-v1-features/drop/policies --linkedTemplatesBaseUrl https://deploystintegvicdev.blob.core.windows.net/deploysecurityv1apidef/_api-security-v1-features/drop/arm-files