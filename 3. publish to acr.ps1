$acrName = "msdsdemoacr"
$imageName = "$acrName.azurecr.io/python-api-demo:0.2"

az login

az acr login --name $acrName

docker tag python-api-demo $imageName
docker push $imageName