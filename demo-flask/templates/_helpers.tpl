{{- define "demo-flask.name" -}}
{{- default .Chart.Name .Values.app.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "demo-flask.fullname" -}}
{{- include "demo-flask.name" . -}}
{{- end -}}