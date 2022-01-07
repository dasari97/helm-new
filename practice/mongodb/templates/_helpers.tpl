{{- define ".Values.labels" -}}
 appname: mongodb
{{- end }}

{{- define "demo.selectorLabels" -}}
app.kubernetes.io/name: {{ include ".Values.labels" . }}
{{- end }}