{{- define "mongodb.labels" -}}
 appname: mongodb
{{- end }}

{{- define "mongodb.selectorLabels" -}}
 {{ include "mongodb.labels" . }}
{{- end }}

{{- define "express.labels" -}}
 appname: mongo-express
{{- end }}

{{- define "express.selectorLabels" -}}
 {{ include "express.labels" . }}
{{- end }}