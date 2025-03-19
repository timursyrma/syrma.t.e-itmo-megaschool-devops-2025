for pod in $(kubectl get pods -o jsonpath="{.items[*].metadata.name}"); do
  echo "----- Pods logs: $pod -----"
  kubectl logs $pod --tail=10
  echo ""
done