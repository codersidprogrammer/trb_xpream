oc delete configmaps elastic-configmaps
oc create -f elastic_maps.yml

oc delete statefulset elastic-trb-database

# # Create Service
# echo "\n creating service"
# oc create -f $1_service.yml

# Create Statefulset
echo "\n creating Statefulset"
oc create -f elastic_database.yml
oc patch statefulset elastic-trb-database -p '{"spec":{"template":{"spec":{"containers":[{"name":"elasticsearch","image":"docker-registry.default.svc:5000/xpream/elasticsearch:8.1.2","securityContext":{"privileged":true}}]}}}}'
oc set sa statefulset elastic-trb-database xpreamadmin