# Reproducer for #23206

This reproducer demonstrate that OpenShift incorrectly applies the 'move' operation of a valid RFC-6902 patch.

To use this reproducer:

1) Load the stateful set:

`oc apply -f test-statefulset.json`

2) Run do_patch.sh to apply the JSON patch.

`./do_patch.sh`

3) Observe the environment variables of the test statefulset.

`oc get statefulset test -o json`

Notice that B has replaced D, rather than B being moved to after C and D retained.

For an online comparison, trying submiting the same documents to https://json-schema-validator.herokuapp.com/jsonpatch.jsp


