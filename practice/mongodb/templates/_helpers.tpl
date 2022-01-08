{{- define "mongodb.labels" -}}
 appname: mongodb
{{- end }}

{{- define "mongodb.selectorLabels" -}}
app.kubernetes.io/name: {{ include "mongodb.labels" . }}
{{- end }}

{{- define "express.labels" -}}
 appname: mongo-express
{{- end }}

{{- define "express.selectorLabels" -}}
app.kubernetes.io/name: {{ include "express.labels" . }}
{{- end }}