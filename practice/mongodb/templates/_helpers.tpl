{{- define ".Values.labels" -}}
 appname: mongodb
{{- end }}

{{- define ".Values.selectorLabels" -}}
app.kubernetes.io/name: {{ include ".Values.labels" . }}
{{- end }}

{{- define "Values.app" -}}
 appname: mongo-express
{{- end }}

{{- define "Values.selectorLabels" -}}
app.kubernetes.io/name: {{ include ".Values.app" . }}
{{- end }}