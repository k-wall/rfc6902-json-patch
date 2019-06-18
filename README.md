# rfc6902-json-patch



curl -k -v -XPATCH -H "User-Agent: oc/v1.11.0+d4cacc0 (linux/amd64) kubernetes/d4cacc0" -H "Accept: application/json" -H "Content-Type: application/json-patch+json" -H "Authorization: Bearer dG1adglqJLByBlLUAQUYFl4iny1HbAwMwMD-9tqhLv4" 'https://127.0.0.1:8443/apis/apps/v1/namespaces/amq-online-infra/statefulsets/broker-sharded-c8f5351e-0nnmnlkpj7' --data-binary "@/tmp/rfc6902_patch_statefulset.json.txt"

