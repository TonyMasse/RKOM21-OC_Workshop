<template>
  <q-page class="bg-grey-10 text-grey-5 q-pa-md">
    <div class="text-h3 q-mb-sm">
      Log Sample: Originals
    </div>
    <div class="text-h6 q-my-sm">
      Original version:
    </div>
    These logs are as sent by the device. Before any treatment is done.
    <div class="text-h6 q-my-sm">
      Note:
    </div>
    This is NOT how you will receive it if it's collected by something that will encapsulate them (Kafka Beat, File Beat, etc...).
    <div class="text-h6 q-my-sm">
      Note 2:
    </div>
    These samples do NOT match the samples in the "Via File Beat" page.
    <div class="text-h6 q-my-sm">
      Hint:
    </div>
    Use the Online tools to expand them to human readeable format and work on them.
    <ol>
      <li><pre>
{"admin_state":"CaseOpen","active":false,"case_detail":"We have detected an unexpected user activity. We recommend investigating this activity as it might lead to an unauthorized access to sensitive resources.","case_id":5683,"case_summary":"Anomalous activity Unusual JA3 fingerprint, when compared to similar hosts has been detected by 10.203.71.12","category":"Anomalous Activity","certainty":99,"created_at":1607576208740,"entity_type":"","entity_uuid":"","entry_origin":"Distributed Analytics Engine","entry_source":"logrhythm-boulder-0-0","entry_type":"SslAnomalyEvent","entry_uuid":"1ffb28ab-1c8a-46b9-b691-dc2be733bde7","event_count":0,"ioa":[{"created_at":1607575294000,"columns":{},"community_id":"1:uAhax/OqbI+3faRtnoMZtF/F64I=","date":"2020-12-10","dest":"10.111.65.20","dest_port":9440,"destination":{"ip":"10.111.65.20","port":9440,"is_local":true},"end_time":1607571091767,"entity_type":"Ip","entity_uuid":"10.203.71.12","entry_origin":"Distributed Analytics Engine","entry_source":"logrhythm-boulder-0-0","entry_type":"SslAnomalyEvent","entry_uuid":"1ffb28ab-1c8a-46b9-b691-dc2be733bde7","event_attribute":"Behavior Anomaly","event_category":"Anomalous Activity","event_certainty":99,"event_extra_attributes":["model:cluster","cluster_id:0","trend:none"],"event_score":5,"event_severity":50,"event_trigger":"Unusual JA3 fingerprint, when compared to similar hosts","event_trigger_id":"Analytics:Anomaly:1302","event_tags":["entry_type:Ssl AND entry_uuid:4876f2e4-5ba1-47c8-9b12-e17db572ee91"],"event_uuid":"279ceeb8-a4ab-4a5e-807f-0d0794bf1dc5","hour":3,"domain_report":{},"ip_investigation_report":{},"kubernetes":{"container":{},"labels":{},"node":{},"pod":{},"replicaset":{}},"attack_framework":null,"mitre_tactic":null,"mitre_technique":null,"session_id":"CnmeGi4uttiloTdAn7","source":{"ip":"10.203.71.12","port":58720,"is_local":true},"src":"10.203.71.12","src_port":58720,"start_time":1607571091767,"summary_dests":["10.111.65.20"],"timestamp":1607571091767,"weekday":4,"whitelisted":false,"app_info":{"created_at":1607575261663,"completed_at":1607575261663,"process_count":1,"response_code":204},"case_info":{"created_at":1607576208732,"completed_at":1607576209356,"process_count":1},"classifier_info":{"created_at":1607575260667,"completed_at":1607575260668,"process_count":1},"cve_info":{"cve_dest_status":null},"deduper_info":{"bypass":true,"created_at":1607575260387,"completed_at":1607575260387,"process_count":1},"domain_info":{},"eventscorer_info":{"bypass":true,"created_at":1607575274474,"completed_at":1607575274475,"process_count":1},"ext_info":{"created_at":1607575274460,"response_code":404,"threat_level":"Not Applicable","domain_info":{},"dest_ip_info":{},"src_ip_info":{},"uri_info":{}},"file_info":{},"ip_info":{},"logfinder_info":{"bypass":true,"created_at":1607575261156,"completed_at":1607575261157,"process_count":1},"mistwatcher_info":{},"network_info":{"created_at":1607575261771,"completed_at":1607575261775,"process_count":1,"response_code":200,"int_dest":{"ip_addr":"10.111.65.20","network_description":"Unknown","network_prefix":"Unknown","network_type":"internal"},"int_src":{"ip_addr":"10.203.71.12","network_description":"Unknown","network_prefix":"Unknown","network_type":"internal"}},"pcap_info":{},"rapid7_info":{},"rare_info":{"created_at":1607575260667,"completed_at":1607575260667,"process_count":1,"response_code":200,"rare":true,"rule_id":1},"url_info":{},"session_info":{"local_orig":true,"local_resp":false,"logs_count_ssl":1,"logs_count_total":1},"vulnerability_info":{},"event_actor":{},"logs":[{"app":"ssl","community_id":"1:uAhax/OqbI+3faRtnoMZtF/F64I=","created_at":1607571092076,"date":"2020-12-10","dest":"10.111.65.20","destination":{"ip":"10.111.65.20","port":9440,"is_local":true},"entry_origin":"Network Analysis Engine","entry_source":"logrhythm-boulder-0-0","entry_type":"Ssl","entry_uuid":"4876f2e4-5ba1-47c8-9b12-e17db572ee91","hour":3,"source":{"ip":"10.203.71.12","port":58720,"is_local":true},"src":"10.203.71.12","timestamp":1607571091766,"pcap_info":{},"mistwatcher_info":{},"weekday":4,"conn_state":"S1","dest_port":9440,"duration":0.257687,"history":"ShADad","local_orig":true,"local_resp":true,"orig_pkts":9,"proto":"tcp","resp_pkts":8,"session_id":"CnmeGi4uttiloTdAn7","src_port":58720,"dhcp_server":"","columns":{},"decorations":{},"cipher":"TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384","request_type":"","version":"TLSv12","cert_chain_fuids":["Fbt4rod5QYgLZ0gSk","Fa19yM2SxLxsrWtdzd","FiOHxK3iOofZR0ooo2"],"curve":"secp521r1","established":true,"issuer":"CN=LogRhythm Issuing CA,O=LogRhythm Inc.,C=US","subject":"CN=*.schq.secious.com,O=LogRhythm,L=Boulder,ST=Colorado,C=US","validation_status":"unable to get local issuer certificate","ja3":"e31ddcf08fe20f60d649817a0ca2e789","ja3s":"0debd3853f330c574b05e0b6d882dc27"}],"IncidentCaseEvents":false,"decorations":{}}],"ioa_count":501,"ioa_summary_count":0,"last_modified":1607603195463,"main_event":{"created_at":0,"columns":{},"date":"","entry_origin":"","entry_source":"","entry_type":"","entry_uuid":"","event_attribute":"","event_category":"","event_extra_attributes":null,"event_score":0,"event_uuid":"","hour":0,"domain_report":{},"ip_investigation_report":{},"kubernetes":{"container":{},"labels":{},"node":{},"pod":{},"replicaset":{}},"attack_framework":null,"mitre_tactic":null,"mitre_technique":null,"timestamp":0,"whitelisted":false,"app_info":{},"case_info":{},"classifier_info":{},"cve_info":{"cve_dest_status":null},"deduper_info":{},"domain_info":{},"eventscorer_info":{},"ext_info":{"domain_info":{},"dest_ip_info":{},"src_ip_info":{},"uri_info":{}},"file_info":{},"ip_info":{},"logfinder_info":{},"mistwatcher_info":{},"network_info":{"int_dest":{},"int_src":{}},"pcap_info":{},"rapid7_info":{},"rare_info":{},"url_info":{},"session_info":{"local_orig":false,"local_resp":false},"vulnerability_info":{},"event_actor":{},"IncidentCaseEvents":false,"decorations":{}},"positive":true,"servicenow_info":{},"severity":50,"score":3,"timestamp":1607571091767,"wildcard_ioa_count":0,"actor":{},"summary_events_count":0,"policy_violation_info":{},"incident_info":{},"casescore":0,"determination":"","note":""}
</pre></li>
      <li><pre>
{"admin_state":"CaseOpen","active":false,"case_detail":"We have detected an unexpected user activity. We recommend investigating this activity as it might lead to an unauthorized access to sensitive resources.","case_id":4377,"case_summary":"Anomalous activity Unusual number of internal sessions for a past period of time, when compared to similar hosts has been detected","category":"Anomalous Activity","certainty":100,"created_at":1606758732034,"entity_type":"","entity_uuid":"","entry_origin":"Distributed Analytics Engine","entry_source":"logrhythm-boulder-0-1","entry_type":"ConnAnomalyEvent","entry_uuid":"bc3f66c0-c1f3-43f5-a982-c4604c383f63","event_count":0,"ioa":[{"created_at":1606742195000,"columns":{},"date":"2020-11-30","destination":{},"end_time":1606737751594,"entity_type":"Ip","entity_uuid":"10.2.0.56","entry_origin":"Distributed Analytics Engine","entry_source":"logrhythm-boulder-0-1","entry_type":"ConnAnomalyEvent","entry_uuid":"bc3f66c0-c1f3-43f5-a982-c4604c383f63","event_attribute":"Behavior Anomaly","event_category":"Anomalous Activity","event_certainty":54,"event_extra_attributes":["model:cluster","cluster_id:0","location:internal","aggregate:true","expected_range:1.0 to 63.777377510488165","trend:none"],"event_score":3,"event_severity":30,"event_trigger":"Unusual number of internal sessions for a past period of time, when compared to similar hosts","event_trigger_id":"Analytics:Anomaly:200","event_tags":["entry_type:Connection AND date:2020-11-30 AND hour:12 AND source.ip:10.2.0.56"],"event_uuid":"b3677a28-5b06-4fbd-b6be-b8f6b14ff541","hour":12,"ip_addresses":["10.2.0.56"],"domain_report":{},"ip_investigation_report":{},"kubernetes":{"container":{},"labels":{},"node":{},"pod":{},"replicaset":{}},"local_orig":true,"attack_framework":null,"mitre_tactic":null,"mitre_technique":null,"source":{"ip":"10.2.0.56"},"start_time":1606737751477,"timestamp":1606737751594,"weekday":1,"whitelisted":false,"app_info":{"created_at":1606742204578,"completed_at":1606742204578,"process_count":1,"response_code":204},"case_info":{"created_at":1606758732029,"completed_at":1606758732627,"process_count":1},"classifier_info":{"created_at":1606742194080,"completed_at":1606742194081,"process_count":1},"cve_info":{"cve_dest_status":null},"deduper_info":{"bypass":true,"created_at":1606742193778,"completed_at":1606742193778,"process_count":1},"domain_info":{},"eventscorer_info":{"bypass":true,"created_at":1606742205254,"completed_at":1606742205254,"process_count":1},"ext_info":{"created_at":1606742205243,"response_code":404,"threat_level":"Not Applicable","domain_info":{},"dest_ip_info":{},"src_ip_info":{},"uri_info":{}},"file_info":{},"ip_info":{},"logfinder_info":{"bypass":true,"created_at":1606742197047,"completed_at":1606742204075,"process_count":1},"mistwatcher_info":{},"network_info":{"created_at":1606742204578,"completed_at":1606742204578,"process_count":1,"response_code":204,"int_dest":{},"int_src":{}},"pcap_info":{},"rapid7_info":{},"rare_info":{"created_at":1606742205254,"completed_at":1606742205254,"process_count":1,"response_code":200,"rare":true,"rule_id":1},"url_info":{},"session_info":{"local_orig":true,"local_resp":true,"logs_count_conn":10000,"logs_count_total":10000},"vulnerability_info":{},"event_actor":{},"logs":[],"IncidentCaseEvents":false,"decorations":{}}],"ioa_count":252,"ioa_summary_count":0,"last_modified":1607610074725,"main_event":{"created_at":0,"columns":{},"date":"","entry_origin":"","entry_source":"","entry_type":"","entry_uuid":"","event_attribute":"","event_category":"","event_extra_attributes":null,"event_score":0,"event_uuid":"","hour":0,"domain_report":{},"ip_investigation_report":{},"kubernetes":{"container":{},"labels":{},"node":{},"pod":{},"replicaset":{}},"attack_framework":null,"mitre_tactic":null,"mitre_technique":null,"timestamp":0,"whitelisted":false,"app_info":{},"case_info":{},"classifier_info":{},"cve_info":{"cve_dest_status":null},"deduper_info":{},"domain_info":{},"eventscorer_info":{},"ext_info":{"domain_info":{},"dest_ip_info":{},"src_ip_info":{},"uri_info":{}},"file_info":{},"ip_info":{},"logfinder_info":{},"mistwatcher_info":{},"network_info":{"int_dest":{},"int_src":{}},"pcap_info":{},"rapid7_info":{},"rare_info":{},"url_info":{},"session_info":{"local_orig":false,"local_resp":false},"vulnerability_info":{},"event_actor":{},"IncidentCaseEvents":false,"decorations":{}},"positive":true,"servicenow_info":{},"severity":50,"score":3,"timestamp":1606737751594,"wildcard_ioa_count":0,"actor":{},"summary_events_count":0,"policy_violation_info":{},"incident_info":{},"casescore":0,"determination":"","note":""}
</pre></li>
      <li><pre>
{"admin_state":"CaseOpen","active":false,"case_detail":"Large amount of data was downloaded from internal services and uploaded externally. This might indicate an attempted data theft (inside threat). Look into the type of connection/data transfer and confirm whether it is expected.","case_id":1792,"case_summary":"Exfiltration of data has been detected","category":"Extrusion","certainty":100,"created_at":1606331978902,"entity_type":"","entity_uuid":"","entry_origin":"Distributed Analytics Engine","entry_source":"logrhythm-boulder-0-1","entry_type":"ExfilEvent","entry_uuid":"ddb0b1ca-844e-4b06-8102-f3a9f3b2f4c0","event_count":0,"ioa":[{"created_at":1606331798000,"columns":{},"community_id":"1:sffbVvvJTdHUF8rKE4IFUpNCp1k=","date":"2020-11-25","dest":"3.139.130.152","dest_cc":"US","dest_port":443,"destination":{"geo":{"continent_name":"North America","country_iso_code":"US","location":{"lat":37.751,"lon":-97.822}},"ip":"3.139.130.152","port":443,"is_local":false},"duration":91.000104,"end_time":1606329121536,"entity_type":"Ip","entity_uuid":"10.111.64.160","entry_origin":"Distributed Analytics Engine","entry_source":"logrhythm-boulder-0-1","entry_type":"ConnAnomalyEvent","entry_uuid":"ddb0b1ca-844e-4b06-8102-f3a9f3b2f4c0","event_attribute":"Behavior Anomaly","event_category":"Anomalous Activity","event_certainty":43,"event_extra_attributes":["model:individual","location:external","expected_range(bytes):15330.0 to 15407.5","expected_range(packets):26.0 to 27.5","trend:none","MITRE:Exfiltration/Exfiltration Over Alternative Protocol","MITRE:Exfiltration/Exfiltration Over Command and Control Channel"],"event_score":4,"event_severity":40,"event_trigger":"Unusual external outbound traffic volume","event_trigger_id":"Analytics:Anomaly:103","event_tags":["entry_uuid:3cd14766-26fe-4577-8e85-5450863b95e6"],"event_uuid":"6281cbf9-8ec1-45f7-98dd-2a10b89cef1e","hour":18,"domain_report":{},"ip_investigation_report":{},"kubernetes":{"container":{},"labels":{},"node":{},"pod":{},"replicaset":{}},"local_orig":true,"local_resp":false,"attack_framework":null,"mitre_tactic":null,"mitre_technique":null,"proto":"tcp","session_id":"CWNdmrhauoGa9MGj2","source":{"ip":"10.111.64.160","port":57158,"is_local":true},"src":"10.111.64.160","src_port":57158,"start_time":1606329121536,"summary_dests":["3.139.130.152"],"timestamp":1606329121536,"weekday":3,"whitelisted":false,"app_info":{"created_at":1606331803925,"completed_at":1606331803926,"process_count":1,"response_code":204},"case_info":{"created_at":1606331978894,"completed_at":1606331979520,"process_count":1},"classifier_info":{"created_at":1606331800727,"completed_at":1606331800727,"process_count":1},"cve_info":{"cve_dest_status":null},"deduper_info":{"created_at":1606331800036,"completed_at":1606331800037,"process_count":1},"domain_info":{},"eventscorer_info":{"bypass":true,"created_at":1606331810576,"completed_at":1606331810577,"process_count":1},"ext_info":{"created_at":1606331810563,"response_code":200,"threat_level":"green","domain_info":{"domain":"us-east-2.compute.amazonaws.com","domain_is_popular":true,"server_name":"ec2-3-139-130-152.us-east-2.compute.amazonaws.com"},"dest_ip_info":{},"src_ip_info":{},"uri_info":{}},"file_info":{},"ip_info":{},"logfinder_info":{"bypass":true,"created_at":1606331803464,"completed_at":1606331803465,"process_count":1},"mistwatcher_info":{},"network_info":{"created_at":1606331804481,"completed_at":1606331804485,"process_count":1,"response_code":200,"int_dest":{"ip_addr":"3.139.130.152"},"int_src":{"ip_addr":"10.111.64.160","network_description":"Unknown","network_prefix":"Unknown","network_type":"internal"}},"pcap_info":{},"rapid7_info":{},"rare_info":{"created_at":1606331810576,"completed_at":1606331810576,"process_count":1,"response_code":200,"rare":true,"rule_id":1},"url_info":{},"session_info":{"local_orig":true,"local_resp":false,"logs_count_conn":1,"logs_count_total":1},"vulnerability_info":{},"event_actor":{},"logs":[{"community_id":"1:sffbVvvJTdHUF8rKE4IFUpNCp1k=","created_at":1606329217689,"date":"2020-11-25","dest":"3.139.130.152","destination":{"geo":{"continent_name":"North America","country_iso_code":"US","location":{"lat":37.751,"lon":-97.822}},"ip":"3.139.130.152","port":443,"is_local":false},"entry_origin":"Network Analysis Engine","entry_source":"logrhythm-boulder-0-0","entry_type":"Connection","entry_uuid":"3cd14766-26fe-4577-8e85-5450863b95e6","hour":18,"source":{"ip":"10.111.64.160","port":57158,"is_local":true},"src":"10.111.64.160","timestamp":1606329121535,"pcap_info":{},"mistwatcher_info":{},"weekday":3,"conn_state":"SF","dest_port":443,"duration":91.000104,"history":"ShADadTFf","local_orig":true,"local_resp":false,"missed_bytes":1448,"orig_bytes":13972,"orig_ip_bytes":20199,"orig_pkts":30,"proto":"tcp","resp_bytes":4663,"resp_ip_bytes":6195,"resp_pkts":27,"service":"ssl","session_id":"CWNdmrhauoGa9MGj2","src_port":57158,"dhcp_server":"","columns":{},"decorations":{},"request_type":""}],"IncidentCaseEvents":false,"decorations":{},"mitre_ttp":[{"tactic_id":"TA0010","tactic":"Exfiltration","technique_id":"T1048","technique":"Exfiltration Over Alternative Protocol"},{"tactic_id":"TA0010","tactic":"Exfiltration","technique_id":"T1041","technique":"Exfiltration Over Command and Control Channel"}]}],"ioa_count":54,"ioa_summary_count":0,"last_modified":1607608537862,"main_event":{"created_at":0,"columns":{},"date":"","entry_origin":"","entry_source":"","entry_type":"","entry_uuid":"","event_attribute":"","event_category":"","event_extra_attributes":null,"event_score":0,"event_uuid":"","hour":0,"domain_report":{},"ip_investigation_report":{},"kubernetes":{"container":{},"labels":{},"node":{},"pod":{},"replicaset":{}},"attack_framework":null,"mitre_tactic":null,"mitre_technique":null,"timestamp":0,"whitelisted":false,"app_info":{},"case_info":{},"classifier_info":{},"cve_info":{"cve_dest_status":null},"deduper_info":{},"domain_info":{},"eventscorer_info":{},"ext_info":{"domain_info":{},"dest_ip_info":{},"src_ip_info":{},"uri_info":{}},"file_info":{},"ip_info":{},"logfinder_info":{},"mistwatcher_info":{},"network_info":{"int_dest":{},"int_src":{}},"pcap_info":{},"rapid7_info":{},"rare_info":{},"url_info":{},"session_info":{"local_orig":false,"local_resp":false},"vulnerability_info":{},"event_actor":{},"IncidentCaseEvents":false,"decorations":{}},"positive":true,"servicenow_info":{},"severity":80,"score":3,"timestamp":1606455616530,"wildcard_ioa_count":0,"actor":{},"summary_events_count":0,"policy_violation_info":{},"incident_info":{},"casescore":0,"determination":"","note":""}
</pre></li>
      <li><pre>
{"admin_state":"CaseOpen","active":false,"case_detail":"We have detected an unexpected user activity. We recommend investigating this activity as it might lead to an unauthorized access to sensitive resources.","case_id":590,"case_summary":"Anomalous activity Unusual external outbound traffic volume has been detected by 10.111.65.20","category":"Anomalous Activity","certainty":100,"created_at":1606281456275,"entity_type":"","entity_uuid":"","entry_origin":"Distributed Analytics Engine","entry_source":"logrhythm-boulder-0-1","entry_type":"ConnAnomalyEvent","entry_uuid":"ec9b560a-8888-4223-bbe4-f53ac2f95e85","event_count":0,"ioa":[{"created_at":1606281381000,"columns":{},"community_id":"1:wrWYUPztjIW/Ez3/Tr2fDUbpKEA=","date":"2020-11-25","dest":"192.146.155.77","dest_cc":"US","dest_port":443,"destination":{"geo":{"continent_name":"North America","country_iso_code":"US","location":{"lat":37.751,"lon":-97.822}},"ip":"192.146.155.77","port":443,"is_local":false},"duration":50.577306,"end_time":1606279105157,"entity_type":"Ip","entity_uuid":"10.111.65.20","entry_origin":"Distributed Analytics Engine","entry_source":"logrhythm-boulder-0-1","entry_type":"ConnAnomalyEvent","entry_uuid":"ec9b560a-8888-4223-bbe4-f53ac2f95e85","event_attribute":"Behavior Anomaly","event_category":"Anomalous Activity","event_certainty":43,"event_extra_attributes":["model:individual","location:external","expected_range(bytes):4420.0 to 6975.25","expected_range(packets):24.0 to 37.75","trend:none","MITRE:Exfiltration/Exfiltration Over Alternative Protocol","MITRE:Exfiltration/Exfiltration Over Command and Control Channel"],"event_score":4,"event_severity":40,"event_trigger":"Unusual external outbound traffic volume","event_trigger_id":"Analytics:Anomaly:103","event_tags":["entry_uuid:88fa3f8f-2ea2-4af1-aa5d-13d8f94a0e0e"],"event_uuid":"47170655-18fb-4ec8-a04a-b06180a9fe7c","hour":4,"domain_report":{},"ip_investigation_report":{},"kubernetes":{"container":{},"labels":{},"node":{},"pod":{},"replicaset":{}},"local_orig":true,"local_resp":false,"attack_framework":null,"mitre_tactic":null,"mitre_technique":null,"proto":"tcp","session_id":"Cn1nXy1fNaoTmGebjg","source":{"ip":"10.111.65.20","port":33452,"is_local":true},"src":"10.111.65.20","src_port":33452,"start_time":1606279105157,"summary_dests":["192.146.155.77"],"timestamp":1606279105157,"weekday":3,"whitelisted":false,"app_info":{"created_at":1606281391220,"completed_at":1606281391220,"process_count":1,"response_code":204},"case_info":{"created_at":1606281456266,"completed_at":1606281456845,"process_count":1},"classifier_info":{"created_at":1606281389032,"completed_at":1606281389032,"process_count":1},"cve_info":{"cve_dest_status":null},"deduper_info":{"created_at":1606281387828,"completed_at":1606281387828,"process_count":1},"domain_info":{},"eventscorer_info":{"bypass":true,"created_at":1606281426319,"completed_at":1606281426320,"process_count":1},"ext_info":{"created_at":1606281395028,"response_code":200,"threat_level":"green","domain_info":{},"dest_ip_info":{"ip_addr":"192.146.155.77","ip_whois_as_origin":"AS53736","ip_whois_cc":"US","ip_whois_location":"San Jose,CA,95110,USA","ip_whois_org":"Nutanix","ip_whois_reg_date":"2015-02-05T19:00:43-05:00"},"src_ip_info":{},"uri_info":{}},"file_info":{},"ip_info":{},"logfinder_info":{"bypass":true,"created_at":1606281390133,"completed_at":1606281390134,"process_count":1},"mistwatcher_info":{},"network_info":{"created_at":1606281425148,"completed_at":1606281425816,"process_count":1,"response_code":200,"int_dest":{"ip_addr":"192.146.155.77","network_type":"external"},"int_src":{"ip_addr":"10.111.65.20","network_description":"Unknown","network_prefix":"Unknown","network_type":"internal"}},"pcap_info":{},"rapid7_info":{},"rare_info":{"created_at":1606281426320,"completed_at":1606281426320,"process_count":1,"response_code":200,"rare":true,"rule_id":1},"url_info":{},"session_info":{"local_orig":true,"local_resp":false,"logs_count_conn":1,"logs_count_total":1},"vulnerability_info":{},"event_actor":{},"logs":[{"community_id":"1:wrWYUPztjIW/Ez3/Tr2fDUbpKEA=","created_at":1606279161541,"date":"2020-11-25","dest":"192.146.155.77","destination":{"geo":{"continent_name":"North America","country_iso_code":"US","location":{"lat":37.751,"lon":-97.822}},"ip":"192.146.155.77","port":443,"is_local":false},"entry_origin":"Network Analysis Engine","entry_source":"logrhythm-boulder-0-0","entry_type":"Connection","entry_uuid":"88fa3f8f-2ea2-4af1-aa5d-13d8f94a0e0e","hour":4,"source":{"ip":"10.111.65.20","port":33452,"is_local":true},"src":"10.111.65.20","timestamp":1606279105156,"pcap_info":{},"mistwatcher_info":{},"weekday":3,"conn_state":"SF","dest_port":443,"duration":50.577306,"history":"ShADdaFf","local_orig":true,"local_resp":false,"missed_bytes":17476,"orig_bytes":92135,"orig_ip_bytes":80000,"orig_pkts":127,"proto":"tcp","resp_bytes":6137,"resp_ip_bytes":10349,"resp_pkts":112,"service":"ssl","session_id":"Cn1nXy1fNaoTmGebjg","src_port":33452,"dhcp_server":"","columns":{},"decorations":{},"request_type":""}],"IncidentCaseEvents":false,"decorations":{},"mitre_ttp":[{"tactic_id":"TA0010","tactic":"Exfiltration","technique_id":"T1048","technique":"Exfiltration Over Alternative Protocol"},{"tactic_id":"TA0010","tactic":"Exfiltration","technique_id":"T1041","technique":"Exfiltration Over Command and Control Channel"}]}],"ioa_count":2880,"ioa_summary_count":0,"last_modified":1607604525889,"main_event":{"created_at":0,"columns":{},"date":"","entry_origin":"","entry_source":"","entry_type":"","entry_uuid":"","event_attribute":"","event_category":"","event_extra_attributes":null,"event_score":0,"event_uuid":"","hour":0,"domain_report":{},"ip_investigation_report":{},"kubernetes":{"container":{},"labels":{},"node":{},"pod":{},"replicaset":{}},"attack_framework":null,"mitre_tactic":null,"mitre_technique":null,"timestamp":0,"whitelisted":false,"app_info":{},"case_info":{},"classifier_info":{},"cve_info":{"cve_dest_status":null},"deduper_info":{},"domain_info":{},"eventscorer_info":{},"ext_info":{"domain_info":{},"dest_ip_info":{},"src_ip_info":{},"uri_info":{}},"file_info":{},"ip_info":{},"logfinder_info":{},"mistwatcher_info":{},"network_info":{"int_dest":{},"int_src":{}},"pcap_info":{},"rapid7_info":{},"rare_info":{},"url_info":{},"session_info":{"local_orig":false,"local_resp":false},"vulnerability_info":{},"event_actor":{},"IncidentCaseEvents":false,"decorations":{}},"positive":true,"servicenow_info":{},"severity":50,"score":3,"timestamp":1606279105157,"wildcard_ioa_count":0,"actor":{},"summary_events_count":0,"policy_violation_info":{},"incident_info":{},"casescore":0,"determination":"","note":""}
</pre></li>
      <li><pre>
{"admin_state":"CaseOpen","active":false,"case_detail":"We have detected an unexpected user activity. We recommend investigating this activity as it might lead to an unauthorized access to sensitive resources.","case_id":888,"case_summary":"Anomalous activity Unusual number of HTTP errors has been detected","category":"Anomalous Activity","certainty":100,"created_at":1606289482120,"entity_type":"","entity_uuid":"","entry_origin":"Distributed Analytics Engine","entry_source":"logrhythm-boulder-0-0","entry_type":"HttpAnomalyEvent","entry_uuid":"30dd0002-315f-406b-8f65-22926d656361","event_count":0,"ioa":[{"created_at":1606289479000,"columns":{},"date":"2020-11-25","destination":{},"end_time":1606287141391,"entity_type":"Ip","entity_uuid":"10.3.1.225","entry_origin":"Distributed Analytics Engine","entry_source":"logrhythm-boulder-0-0","entry_type":"HttpAnomalyEvent","entry_uuid":"30dd0002-315f-406b-8f65-22926d656361","event_attribute":"Behavior Anomaly","event_category":"Anomalous Activity","event_certainty":43,"event_extra_attributes":["model:individual","expected_range:17.0 to 19.0","trend:none"],"event_score":4,"event_severity":40,"event_trigger":"Unusual number of HTTP errors","event_trigger_id":"Analytics:Anomaly:601","event_tags":["entry_type:Http AND date:2020-11-25 AND hour:6 AND source.ip:10.3.1.225 AND status_code:\u003e=400 AND status_code:\u003c600 AND destination.is_local:true"],"event_uuid":"658474c3-e703-491e-af36-0ad1816958d9","hour":6,"domain_report":{},"ip_investigation_report":{},"kubernetes":{"container":{},"labels":{},"node":{},"pod":{},"replicaset":{}},"attack_framework":null,"mitre_tactic":null,"mitre_technique":null,"source":{"ip":"10.3.1.225"},"start_time":1606284077867,"timestamp":1606287141391,"weekday":3,"whitelisted":false,"app_info":{"created_at":1606289481092,"completed_at":1606289481092,"process_count":1,"response_code":204},"case_info":{"created_at":1606289482114,"completed_at":1606289482730,"process_count":1},"classifier_info":{"created_at":1606289480036,"completed_at":1606289480037,"process_count":1},"cve_info":{"cve_dest_status":null},"deduper_info":{"bypass":true,"created_at":1606289479532,"completed_at":1606289479532,"process_count":1},"domain_info":{},"eventscorer_info":{"bypass":true,"created_at":1606289481600,"completed_at":1606289481601,"process_count":1},"ext_info":{"created_at":1606289481588,"response_code":404,"threat_level":"Not Applicable","domain_info":{},"dest_ip_info":{},"src_ip_info":{},"uri_info":{}},"file_info":{},"ip_info":{},"logfinder_info":{"bypass":true,"created_at":1606289480541,"completed_at":1606289480588,"process_count":1},"mistwatcher_info":{},"network_info":{"created_at":1606289481092,"completed_at":1606289481092,"process_count":1,"response_code":204,"int_dest":{},"int_src":{}},"pcap_info":{},"rapid7_info":{},"rare_info":{"created_at":1606289481601,"completed_at":1606289481601,"process_count":1,"response_code":200,"rare":true,"rule_id":1},"url_info":{},"session_info":{"local_orig":false,"local_resp":false,"server_name":"usbo1part01","logs_count_http":24,"logs_count_total":24},"vulnerability_info":{},"event_actor":{},"logs":[],"IncidentCaseEvents":false,"decorations":{}}],"ioa_count":202,"ioa_summary_count":0,"last_modified":1607606129387,"main_event":{"created_at":0,"columns":{},"date":"","entry_origin":"","entry_source":"","entry_type":"","entry_uuid":"","event_attribute":"","event_category":"","event_extra_attributes":null,"event_score":0,"event_uuid":"","hour":0,"domain_report":{},"ip_investigation_report":{},"kubernetes":{"container":{},"labels":{},"node":{},"pod":{},"replicaset":{}},"attack_framework":null,"mitre_tactic":null,"mitre_technique":null,"timestamp":0,"whitelisted":false,"app_info":{},"case_info":{},"classifier_info":{},"cve_info":{"cve_dest_status":null},"deduper_info":{},"domain_info":{},"eventscorer_info":{},"ext_info":{"domain_info":{},"dest_ip_info":{},"src_ip_info":{},"uri_info":{}},"file_info":{},"ip_info":{},"logfinder_info":{},"mistwatcher_info":{},"network_info":{"int_dest":{},"int_src":{}},"pcap_info":{},"rapid7_info":{},"rare_info":{},"url_info":{},"session_info":{"local_orig":false,"local_resp":false},"vulnerability_info":{},"event_actor":{},"IncidentCaseEvents":false,"decorations":{}},"positive":true,"servicenow_info":{},"severity":50,"score":3,"timestamp":1606287141391,"wildcard_ioa_count":0,"actor":{},"summary_events_count":0,"policy_violation_info":{},"incident_info":{},"casescore":0,"determination":"","note":""}
</pre></li>
      <li><pre>
{"admin_state":"CaseOpen","active":false,"case_detail":"Remote attackers are probing network and hosted services to attack potentially vulnerable hosts. We recommend keeping an eye on the scan and quarantining the potential threat if feasible.","case_id":1941,"case_summary":"Reconnaissance Unusual number of failed internal connection attempts for a past period of time attempt detected","category":"Recon Activity","certainty":100,"created_at":1606346642495,"entity_type":"","entity_uuid":"","entry_origin":"Distributed Analytics Engine","entry_source":"logrhythm-boulder-0-1","entry_type":"ConnAnomalyEvent","entry_uuid":"a7c92926-6009-42ee-8414-c170969e6419","event_count":0,"ioa":[{"created_at":1606346207000,"columns":{},"date":"2020-11-25","destination":{},"end_time":1606344407677,"entity_type":"Ip","entity_uuid":"10.4.3.4","entry_origin":"Distributed Analytics Engine","entry_source":"logrhythm-boulder-0-1","entry_type":"ConnAnomalyEvent","entry_uuid":"a7c92926-6009-42ee-8414-c170969e6419","event_attribute":"Scan","event_category":"Recon Activity","event_certainty":40,"event_extra_attributes":["model:individual","location:internal","aggregate:true","expected_range:1.0 to 1.0","trend:none","MITRE:Discovery/Network Service Scanning"],"event_score":3,"event_severity":30,"event_trigger":"Unusual number of failed internal connection attempts for a past period of time","event_trigger_id":"Analytics:Anomaly:202","event_tags":["entry_type:Connection AND source.ip:10.4.3.4 AND date:2020-11-25 AND hour:22"],"event_uuid":"659ce3d0-49c0-4bf5-94dd-1dcdbd5f4488","hour":22,"ip_addresses":["10.4.3.4"],"domain_report":{},"ip_investigation_report":{},"kubernetes":{"container":{},"labels":{},"node":{},"pod":{},"replicaset":{}},"attack_framework":null,"mitre_tactic":null,"mitre_technique":null,"source":{"ip":"10.4.3.4","user":"serviceagent@qa.schq.secious.com"},"start_time":1606342130737,"timestamp":1606344407677,"weekday":3,"whitelisted":false,"app_info":{"created_at":1606346216499,"completed_at":1606346216499,"process_count":1,"response_code":204},"case_info":{"created_at":1606346642489,"completed_at":1606346643120,"process_count":1},"classifier_info":{"created_at":1606346208143,"completed_at":1606346208143,"process_count":1},"cve_info":{"cve_dest_status":null},"deduper_info":{"created_at":1606346207686,"completed_at":1606346207687,"process_count":1},"domain_info":{},"eventscorer_info":{"bypass":true,"created_at":1606346217004,"completed_at":1606346217007,"process_count":1},"ext_info":{"created_at":1606346216830,"response_code":404,"threat_level":"Not Applicable","domain_info":{},"dest_ip_info":{},"src_ip_info":{},"uri_info":{}},"file_info":{},"ip_info":{},"logfinder_info":{"bypass":true,"created_at":1606346210855,"completed_at":1606346215996,"process_count":1},"mistwatcher_info":{},"network_info":{"created_at":1606346216499,"completed_at":1606346216499,"process_count":1,"response_code":204,"int_dest":{},"int_src":{}},"pcap_info":{},"rapid7_info":{},"rare_info":{"created_at":1606346217004,"completed_at":1606346217007,"process_count":1,"response_code":200,"rare":true,"rule_id":1},"url_info":{},"session_info":{"local_orig":true,"local_resp":true,"logs_count_conn":7852,"logs_count_total":7852},"vulnerability_info":{},"event_actor":{},"logs":[],"IncidentCaseEvents":false,"decorations":{},"mitre_ttp":[{"tactic_id":"TA0007","tactic":"Discovery","technique_id":"T1046","technique":"Network Service Scanning"}]}],"ioa_count":15,"ioa_summary_count":0,"last_modified":1607608805939,"main_event":{"created_at":0,"columns":{},"date":"","entry_origin":"","entry_source":"","entry_type":"","entry_uuid":"","event_attribute":"","event_category":"","event_extra_attributes":null,"event_score":0,"event_uuid":"","hour":0,"domain_report":{},"ip_investigation_report":{},"kubernetes":{"container":{},"labels":{},"node":{},"pod":{},"replicaset":{}},"attack_framework":null,"mitre_tactic":null,"mitre_technique":null,"timestamp":0,"whitelisted":false,"app_info":{},"case_info":{},"classifier_info":{},"cve_info":{"cve_dest_status":null},"deduper_info":{},"domain_info":{},"eventscorer_info":{},"ext_info":{"domain_info":{},"dest_ip_info":{},"src_ip_info":{},"uri_info":{}},"file_info":{},"ip_info":{},"logfinder_info":{},"mistwatcher_info":{},"network_info":{"int_dest":{},"int_src":{}},"pcap_info":{},"rapid7_info":{},"rare_info":{},"url_info":{},"session_info":{"local_orig":false,"local_resp":false},"vulnerability_info":{},"event_actor":{},"IncidentCaseEvents":false,"decorations":{}},"positive":true,"servicenow_info":{},"severity":40,"score":3,"timestamp":1606344407677,"wildcard_ioa_count":0,"actor":{},"summary_events_count":0,"policy_violation_info":{},"incident_info":{},"casescore":0,"determination":"","note":""}
</pre></li>
    </ol>
  </q-page>
</template>

<script>
export default {
  name: 'PageLogSampleOriginal',
  data () {
    return {
      teamId: ''
    }
  },
  mounted () {
    if (typeof this.$route.params.teamId !== 'undefined') {
      if (this.$route.params.teamId.length) {
        this.teamId = this.$route.params.teamId
      }
    }
  }
}
</script>
