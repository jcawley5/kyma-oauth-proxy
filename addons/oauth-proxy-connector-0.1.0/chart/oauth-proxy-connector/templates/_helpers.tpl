{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "bundle.fullname" -}}
{{- $name := default .Values.oAuthProxyName .Values.application_name -}}
{{- printf "%s" $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "oauth_proxy_service" -}}
{{- printf "http://%s.%s:8080" .Values.oAuthProxyName .Values.application_name .Release.Namespace | trimAll " " | quote -}}
{{- end -}}


    

