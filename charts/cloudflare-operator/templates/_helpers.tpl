{{- define "cloudflare-operator.name" -}}
{{- .Chart.Name }}
{{- end }}

{{- define "cloudflare-operator.fullname" -}}
{{- .Chart.Name }}
{{- end }}

{{- define "cloudflare-operator.namespace" -}}
{{- .Values.namespace }}
{{- end }}

{{- define "cloudflare-operator.serviceAccountName" -}}
{{- .Values.serviceAccountName }}
{{- end }}

{{- define "cloudflare-operator.labels" -}}
app.kubernetes.io/name: {{ include "cloudflare-operator.name" . }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
