[ $(kubectl get ns mynamespace -ojsonpath='{.metadat.name}') = "mynamespace" ] && echo "Correct" || echo "Incorrect"