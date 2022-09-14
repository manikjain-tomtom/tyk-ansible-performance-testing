ansible-playbook gcp.playbook.yml -t standup -e '{ "gcp_machine_type": "c2-standard-8", "gcp_image": "projects/rhel-cloud/global/images/rhel-8-v20220822", "test_services": [ "kong", "apollo" ] }'

ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t install -t standup -e '{ "query_type": "REST", "test_services": [ "kong" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "kong" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "prefix": "c2-standard-8-gcp-1-vanilla"vanilla", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "kong" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "prefix": "c2-standard-8-gcp-2-vanilla"vanilla", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "kong" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "prefix": "c2-standard-8-gcp-3-vanilla"vanilla", "load_test_duration": "5m" }'

ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t install -t standup -e '{ "query_type": "REST", "test_services": [ "kong" ], "enable_auth": true, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "kong" ], "enable_auth": true, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "prefix": "c2-standard-8-gcp-1-auth"auth", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "kong" ], "enable_auth": true, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "prefix": "c2-standard-8-gcp-2-auth"auth", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "kong" ], "enable_auth": true, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "prefix": "c2-standard-8-gcp-3-auth"auth", "load_test_duration": "5m" }'

ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t install -t standup -e '{ "query_type": "REST", "test_services": [], "enable_auth": false, "enable_analytics": true, "enable_quota": false, "enable_rate_limiting": false }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [], "enable_auth": false, "enable_analytics": true, "enable_quota": false, "enable_rate_limiting": false, "prefix": "c2-standard-8-gcp-1-analytics"analytics", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [], "enable_auth": false, "enable_analytics": true, "enable_quota": false, "enable_rate_limiting": false, "prefix": "c2-standard-8-gcp-2-analytics"analytics", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [], "enable_auth": false, "enable_analytics": true, "enable_quota": false, "enable_rate_limiting": false, "prefix": "c2-standard-8-gcp-3-analytics"analytics", "load_test_duration": "5m" }'

ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t install -t standup -e '{ "query_type": "REST", "test_services": [ "kong" ], "enable_auth": true, "enable_analytics": false, "enable_quota": true, "enable_rate_limiting": false }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "kong" ], "enable_auth": true, "enable_analytics": false, "enable_quota": true, "enable_rate_limiting": false, "prefix": "c2-standard-8-gcp-1-auth-quota"auth-quota", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "kong" ], "enable_auth": true, "enable_analytics": false, "enable_quota": true, "enable_rate_limiting": false, "prefix": "c2-standard-8-gcp-2-auth-quota"auth-quota", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "kong" ], "enable_auth": true, "enable_analytics": false, "enable_quota": true, "enable_rate_limiting": false, "prefix": "c2-standard-8-gcp-3-auth-quota"auth-quota", "load_test_duration": "5m" }'

ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t install -t standup -e '{ "query_type": "REST", "test_services": [ "kong" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": true }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "kong" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": true, "prefix": "c2-standard-8-gcp-1-rate-limiting"rate-limiting", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "kong" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": true, "prefix": "c2-standard-8-gcp-2-rate-limiting"rate-limiting", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "kong" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": true, "prefix": "c2-standard-8-gcp-3-rate-limiting"rate-limiting", "load_test_duration": "5m" }'

ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t install -t standup -e '{ "query_type": "REST", "test_services": [], "enable_auth": true, "enable_analytics": true, "enable_quota": true, "enable_rate_limiting": true }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [], "enable_auth": true, "enable_analytics": true, "enable_quota": true, "enable_rate_limiting": true, "prefix": "c2-standard-8-gcp-1-all"all", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [], "enable_auth": true, "enable_analytics": true, "enable_quota": true, "enable_rate_limiting": true, "prefix": "c2-standard-8-gcp-2-all"all", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [], "enable_auth": true, "enable_analytics": true, "enable_quota": true, "enable_rate_limiting": true, "prefix": "c2-standard-8-gcp-3-all"all", "load_test_duration": "5m" }'

ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t install -t standup -e '{ "query_type": "STITCH", "test_services": [ "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 0 }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "STITCH", "test_services": [ "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 0, "prefix": "c2-standard-8-gcp-1", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "STITCH", "test_services": [ "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 0, "prefix": "c2-standard-8-gcp-2", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "STITCH", "test_services": [ "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 0, "prefix": "c2-standard-8-gcp-3", "load_test_duration": "5m" }'

ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t install -t standup -e '{ "query_type": "STITCH", "test_services": [ "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 1 }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "STITCH", "test_services": [ "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 1, "prefix": "c2-standard-8-gcp-1", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "STITCH", "test_services": [ "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 1, "prefix": "c2-standard-8-gcp-2", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "STITCH", "test_services": [ "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 1, "prefix": "c2-standard-8-gcp-3", "load_test_duration": "5m" }'

ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t install -t standup -e '{ "query_type": "STITCH", "test_services": [ "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 2 }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "STITCH", "test_services": [ "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 2, "prefix": "c2-standard-8-gcp-1", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "STITCH", "test_services": [ "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 2, "prefix": "c2-standard-8-gcp-2", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/c2-standard-8-gcp-hosts.yml -t test -e '{ "query_type": "STITCH", "test_services": [ "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 2, "prefix": "c2-standard-8-gcp-3", "load_test_duration": "5m" }'

ansible-playbook gcp.playbook.yml -t cleanup -e '{ "gcp_machine_type": "c2-standard-8", "test_services": [ "kong", "apollo" ] }'
