{{- define ".Values.labels" -}}
 appname: mongodb
{{- end }}

{{- define ".Values.selectorLabels" -}}
app.kubernetes.io/name: {{ include ".Values.labels" . }}
{{- end }}

{{- define "mongo.labels" -}}
 appname: mongo-express
{{- end }}

{{- define "mongo.selectorLabels" -}}
app.kubernetes.io/name: {{ include "mongo.labels" . }}
{{- end }}