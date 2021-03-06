<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0">
	<!-- Turn on/off full html output. If full, the complete html structure 
		is outputted, if not ony the body contents -->
	<xsl:param name="full" />
	<xsl:param name="flowname" />

	<!-- Turn off auto-insertion of <?xml> tag and set indenting on -->
	<xsl:output method="html" encoding="utf-8" indent="yes" />

	<!-- strip whitespace from whitespace-only nodes -->
	<xsl:strip-space elements="*" />

	<!-- start with the root element -->
	<xsl:template match="/">
		<xsl:choose>
	  		<xsl:when test="$full='true'">
				<html>
					<head>
						<title>
							<xsl:value-of select="$flowname"></xsl:value-of>
						</title>
						<style>
							ul {
								list-style-type:none;
							}
							li {
								list-style-type:none;
							}
							.logo {
								background-repeat: no-repeat;
								background-size: contain;
							    left center;
							  	padding: 1px 0px 1px 20px;
							  	height: 20px;
							  	width: 20px;
							}
							.sequence > .logo {
								background: url("data:image/svg+xml;base64,PHN2ZyBpZD0ic3ZnMiIgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6Y2M9Imh0dHA6Ly9jcmVhdGl2ZWNvbW1vbnMub3JnL25zIyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHZpZXdCb3g9IjAgMCAzMCAzMCIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIj4NCjxkZWZzIGlkPSJkZWZzNCI+DQo8bGluZWFyR3JhZGllbnQgaWQ9ImxpbmVhckdyYWRpZW50NDI1NiI+DQo8c3RvcCBpZD0ic3RvcDQyNTgiIHN0b3AtY29sb3I9IiM2MDAwN2QiIG9mZnNldD0iMCIvPg0KPHN0b3AgaWQ9InN0b3A0MjYwIiBzdG9wLWNvbG9yPSIjYTIxYmI3IiBvZmZzZXQ9IjEiLz4NCjwvbGluZWFyR3JhZGllbnQ+DQo8bGluZWFyR3JhZGllbnQgaWQ9ImxpbmVhckdyYWRpZW50NDIwNCIgeTI9IjE1LjE2NyIgeGxpbms6aHJlZj0iI2xpbmVhckdyYWRpZW50NDI1NiIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgyPSIyMi4wODYiIGdyYWRpZW50VHJhbnNmb3JtPSJtYXRyaXgoLS4wMDM3MzYzIC45OTk5OSAtLjk5OTk5IC0uMDAzNzM2MyAzMC4xNzIgMTAyMi40KSIgeTE9IjE1LjQ1NiIgeDE9IjEyLjM1Ii8+DQo8bGluZWFyR3JhZGllbnQgaWQ9ImxpbmVhckdyYWRpZW50NDIwNC02IiB5Mj0iMTUuMzYzIiB4bGluazpocmVmPSIjbGluZWFyR3JhZGllbnQ0MjU2IiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDI9IjIwLjI1NiIgZ3JhZGllbnRUcmFuc2Zvcm09Im1hdHJpeCgtLjAwMzczNjMgLjk5OTk5IC0uOTk5OTkgLS4wMDM3MzYzIDMwLjE3MiAxMDExLjMpIiB5MT0iMTUuNDU2IiB4MT0iMTIuMzUiLz4NCjwvZGVmcz4NCjxnIGlkPSJsYXllcjEiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDAgLTEwMjIuNCkiPg0KPHBhdGggaWQ9InJlY3Q0MTY2IiBmaWxsPSJ1cmwoI2xpbmVhckdyYWRpZW50NDIwNCkiIGQ9Im0yNi44ODcgMTAzOC01Ljk3NjUtMC4wMjIgMC4wNTc3OC0xNS40NjUtMTEuNzQ4LTAuMDQ0LTAuMDU3NzgxIDE1LjQ2NS01Ljk3NjUtMC4wMjIgMTEuNzk4IDE0LjQ3NiAxMS45MDMtMTQuMzg3eiIvPg0KPHBhdGggaWQ9InBhdGg0MjU0IiBmaWxsPSJ1cmwoI2xpbmVhckdyYWRpZW50NDIwNC02KSIgZD0ibTIwLjkyOCAxMDIyLjRoLTExLjc0OGwtMC4wMTc1NzggNC40MTk5LTUuOTc2Ni0wLjAyMiAxMS43OTkgMTQuNDc3IDExLjkwMi0xNC4zODktNS45NzY2LTAuMDIyIDAuMDE3NTgtNC40NjQ4eiIvPg0KPC9nPg0KPC9zdmc+DQo=");
							}
							.branch > .logo {
								background: url("data:image/svg+xml;base64,PHN2ZyBpZD0ic3ZnMiIgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6Y2M9Imh0dHA6Ly9jcmVhdGl2ZWNvbW1vbnMub3JnL25zIyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHZpZXdCb3g9IjAgMCAzMCAzMCIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIj4NCjxkZWZzIGlkPSJkZWZzNCI+DQo8bGluZWFyR3JhZGllbnQgaWQ9ImxpbmVhckdyYWRpZW50NDgzNiI+DQo8c3RvcCBpZD0ic3RvcDQ4MzgiIHN0b3AtY29sb3I9IiNmYzAiIG9mZnNldD0iMCIvPg0KPHN0b3AgaWQ9InN0b3A0ODQwIiBzdG9wLWNvbG9yPSIjYTgwIiBvZmZzZXQ9IjEiLz4NCjwvbGluZWFyR3JhZGllbnQ+DQo8bGluZWFyR3JhZGllbnQgaWQ9ImxpbmVhckdyYWRpZW50NDIwNCIgeTI9IjEyLjg3OCIgeGxpbms6aHJlZj0iI2xpbmVhckdyYWRpZW50NDgzNiIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgyPSIxNC4xMjUiIGdyYWRpZW50VHJhbnNmb3JtPSJtYXRyaXgoLS40MzQzNiAuNzkzOTUgLS43NTIzMyAtLjQ1ODM5IDI3LjA3NiAxMDM1LjMpIiB5MT0iMjEuMzkyIiB4MT0iMTMuNTUiLz4NCjxsaW5lYXJHcmFkaWVudCBpZD0ibGluZWFyR3JhZGllbnQ0MjA0LTkiIHkyPSIyOC42MDEiIHhsaW5rOmhyZWY9IiNsaW5lYXJHcmFkaWVudDQ4MzYiIGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIiB4Mj0iMTEuNDUiIGdyYWRpZW50VHJhbnNmb3JtPSJtYXRyaXgoLjQ2OTAzIC44MTIzOSAtLjgxMjM5IC40NjkwMyAyNS4zNjYgMTAyMC45KSIgeTE9IjEyLjQ2MSIgeDE9IjEyLjY4Ii8+DQo8L2RlZnM+DQo8ZyBpZD0ibGF5ZXIxIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgwIC0xMDIyLjQpIj4NCjxwYXRoIGlkPSJyZWN0NDE2NiIgZmlsbD0idXJsKCNsaW5lYXJHcmFkaWVudDQyMDQpIiBkPSJtMTcuODg3IDEwNDYuMi00LjQ5NjMtMi43Mzk2IDYuNzE3My0xMi4yNzgtOC44Mzg0LTUuMzg1Mi02LjcxNzMgMTIuMjc4LTQuNDk2My0yLjczOTcgMi42NDc4IDE2Ljg5MSAxNS4xODMtNi4wMjY0eiIvPg0KPHBhdGggaWQ9InJlY3Q0MTY2LTMiIGZpbGw9InVybCgjbGluZWFyR3JhZGllbnQ0MjA0LTkpIiBkPSJtMzAuMDQ2IDEwMzUtNC44NTUzIDIuODAzMS03LjI1MzUtMTIuNTYzLTkuNTQ0IDUuNTEwMiA3LjI1MzQgMTIuNTY0LTQuODU1MyAyLjgwMzEgMTYuMzk3IDYuMTY1NCAyLjg1NzUtMTcuMjgyeiIvPg0KPC9nPg0KPC9zdmc+DQo=");
							}
							.map > .logo {
								background: url("data:image/svg+xml;base64,PHN2ZyBpZD0ic3ZnMiIgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6Y2M9Imh0dHA6Ly9jcmVhdGl2ZWNvbW1vbnMub3JnL25zIyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHZpZXdCb3g9IjAgMCAzMCAzMCIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIj4NCjxkZWZzIGlkPSJkZWZzNCI+DQo8bGluZWFyR3JhZGllbnQgaWQ9ImxpbmVhckdyYWRpZW50NDIwNC02IiB5Mj0iMTYuNzMiIGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIiB4Mj0iMjIuOTA2IiBncmFkaWVudFRyYW5zZm9ybT0ibWF0cml4KC42MjYyMiAwIDAgLjUzMzg0IDExLjMxMSAxMDM2LjEpIiB5MT0iOS43NzkyIiB4MT0iMTcuNjkzIj4NCjxzdG9wIGlkPSJzdG9wNDIwMCIgc3RvcC1jb2xvcj0iIzAwMDA3ZCIgb2Zmc2V0PSIwIi8+DQo8c3RvcCBpZD0ic3RvcDQyMDIiIHN0b3AtY29sb3I9IiMwMDFiYjciIG9mZnNldD0iMSIvPg0KPC9saW5lYXJHcmFkaWVudD4NCjxsaW5lYXJHcmFkaWVudCBpZD0ibGluZWFyR3JhZGllbnQ1MzM1IiB5Mj0iMTAzMy40IiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDI9IjIwLjYxOCIgeTE9IjEwNDAuOSIgeDE9IjExLjcwNyI+DQo8c3RvcCBpZD0ic3RvcDUzMzkiIHN0b3AtY29sb3I9IiM2NDY0NjQiIG9mZnNldD0iMCIvPg0KPHN0b3AgaWQ9InN0b3A1MzQxIiBzdG9wLWNvbG9yPSIjMDAxYjE1IiBvZmZzZXQ9IjEiLz4NCjwvbGluZWFyR3JhZGllbnQ+DQo8bGluZWFyR3JhZGllbnQgaWQ9ImxpbmVhckdyYWRpZW50NTM0OSIgeTI9IjEwMjUuMyIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgyPSI4LjIzNDkiIHkxPSIxMDMxLjIiIHgxPSIuNzc2MTQiPg0KPHN0b3AgaWQ9InN0b3A1MzQ1IiBzdG9wLWNvbG9yPSIjZjU1IiBvZmZzZXQ9IjAiLz4NCjxzdG9wIGlkPSJzdG9wNTM0NyIgc3RvcC1jb2xvcj0iI2EwMCIgb2Zmc2V0PSIxIi8+DQo8L2xpbmVhckdyYWRpZW50Pg0KPC9kZWZzPg0KPGcgaWQ9ImxheWVyMSIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCAtMTAyMi40KSI+DQo8cGF0aCBpZD0icmVjdDQxNjYiIGQ9Im05LjA1NTYgMTAzMS4yIDQuNDI3NiAwLjA2M2MwLjAzMzUzIDQuODAyMi0wLjA4Njk2IDEwLjAwOS0wLjA4ODkyIDE0LjUyOWg3LjY2NTJ2LTMuMzY3M2wtNC41NDY2LTAuMDYzYy0wLjAyMTU4LTQuODIxIDAuMDc4MjktOS43NzE5IDAuMDc5NzQtMTQuNDY2aC03LjUzN3oiIGZpbGw9InVybCgjbGluZWFyR3JhZGllbnQ1MzM1KSIvPg0KPHBhdGggaWQ9InJlY3Q0MTY2LTEiIGQ9Im0yMS4wNiAxMDUwLjUgOS4wMzcxLTYuMzI4MS05LjAzNzEtNi4zMjQydjEyLjY1MnoiIGZpbGw9InVybCgjbGluZWFyR3JhZGllbnQ0MjA0LTYpIi8+DQo8cGF0aCBpZD0icmVjdDQxNjYtMCIgZD0ibTkuMDU1NiAxMDIzLjItOS4wMzcxIDYuMzI4MSA5LjAzNzEgNi4zMjQyeiIgZmlsbD0idXJsKCNsaW5lYXJHcmFkaWVudDUzNDkpIi8+DQo8L2c+DQo8L3N2Zz4NCg==");
							}
							.invoke > .logo {
								background: url("data:image/svg+xml;base64,PHN2ZyBpZD0ic3ZnMiIgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6Y2M9Imh0dHA6Ly9jcmVhdGl2ZWNvbW1vbnMub3JnL25zIyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHZpZXdCb3g9IjAgMCAzMCAzMCIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIj4NCjxkZWZzIGlkPSJkZWZzNCI+DQo8bGluZWFyR3JhZGllbnQgaWQ9ImxpbmVhckdyYWRpZW50NDIwNCIgeTI9IjIwLjYzMyIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgyPSIxMi4zMiIgeTE9IjE1LjQ1NiIgeDE9IjEyLjM1Ij4NCjxzdG9wIGlkPSJzdG9wNDIwMCIgc3RvcC1jb2xvcj0iIzAwMDA3ZCIgb2Zmc2V0PSIwIi8+DQo8c3RvcCBpZD0ic3RvcDQyMDIiIHN0b3AtY29sb3I9IiMwMDFiYjciIG9mZnNldD0iMSIvPg0KPC9saW5lYXJHcmFkaWVudD4NCjwvZGVmcz4NCjxnIGlkPSJsYXllcjEiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDAgLTEwMjIuNCkiPg0KPHBhdGggaWQ9InJlY3Q0MTY2IiBkPSJtMTUuNTY2IDMuMjI2NnY1Ljk3NjVoLTE1LjQ2NGwtMC4wMDA0NCAxMS43NDhoMTUuNDY0djUuOTc3bDE0LjQzMi0xMS44NTItMTQuNDMyLTExLjg0OXoiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDAgMTAyMi40KSIgZmlsbD0idXJsKCNsaW5lYXJHcmFkaWVudDQyMDQpIi8+DQo8L2c+DQo8L3N2Zz4NCg==");
							}
							.loop > .logo {
								background: url("data:image/svg+xml;base64,PHN2ZyBpZD0ic3ZnMiIgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6Y2M9Imh0dHA6Ly9jcmVhdGl2ZWNvbW1vbnMub3JnL25zIyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHZpZXdCb3g9IjAgMCAzMCAzMCIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIj4NCjxkZWZzIGlkPSJkZWZzNCI+DQo8cmFkaWFsR3JhZGllbnQgaWQ9InJhZGlhbEdyYWRpZW50NDY5OCIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIGN5PSIxMDQzLjMiIGN4PSIxNS43IiBncmFkaWVudFRyYW5zZm9ybT0ibWF0cml4KDEuMjQgLS4wMDM3ODExIC4wMDQzNjI5IDEuNDMwNyAtOC4yNzQ3IC00NDguNjcpIiByPSIxNC40NzEiPg0KPHN0b3AgaWQ9InN0b3A0MjAwIiBzdG9wLWNvbG9yPSIjZmZlZDE0IiBvZmZzZXQ9IjAiLz4NCjxzdG9wIGlkPSJzdG9wNDIwMiIgc3RvcC1jb2xvcj0iI2YwYmIzMiIgb2Zmc2V0PSIxIi8+DQo8L3JhZGlhbEdyYWRpZW50Pg0KPC9kZWZzPg0KPGcgaWQ9ImxheWVyMSIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCAtMTAyMi40KSI+DQo8cGF0aCBpZD0icmVjdDQxNjYiIGQ9Im0wLjMyNjYxIDEwMzguN2g0LjA2NjFzLTAuMTI4MiA0LjUwNTUgMC45NDcwMiA2LjM1OTVjMS4zNTg0IDIuMzQyMyAzLjc5MDEgNC4yMzcyIDYuMzc5NiA1LjAyODUgMy4yMjgyIDAuOTg2NCA2Ljk2OTcgMC41MTQyIDEwLjA5OS0wLjc1MjYgMi4xNjM5LTAuODc2IDQuMDk3Mi0yLjUzMzcgNS4zNzkxLTQuNDg0OCAxLjM0MDEtMi4wMzk3IDIuMDY0OS00LjU4MjIgMi4wNzA4LTcuMDIyOCAwLjAwNjItMi41NDUzLTAuOTA1MzItNS4xLTIuMTI0Mi03LjMzNDYtMC45NzAyMS0xLjc3ODctMi4zNTI4LTMuMzkzNC0zLjk5MzMtNC41ODI0LTEuMzM0MS0wLjk2Ny00LjU1MjMtMS45MjY2LTQuNTUyMy0xLjkyNjZsLTEuNzkzMSA3Ljk1NDlzMi4wNzA0IDAuNTUyNSAyLjgxMzcgMS4yNjI2YzAuOTI2NDcgMC44ODUxIDEuNTgzMiAyLjE1OSAxLjczMiAzLjQzMTcgMC4xNjgxIDEuNDM4Mi0wLjE0MDUgMy4wNjcxLTEuMDEwMiA0LjIyNDktMC43OTk2OCAxLjA2NDUtMi4xNDcyIDEuODQ1MS0zLjQ3MjQgMS45NzQzLTEuNDM1NSAwLjE0LTMuMTgzMS0wLjI2MTUtNC4xMDM3LTEuMzcxOC0wLjU5MjktMC43MTUxLTAuMzc4ODEtMi43NjA4LTAuMzc4ODEtMi43NjA4aDQuMTI5MmwtOC4xMjYyLTExLjcxOXoiIGZpbGw9InVybCgjcmFkaWFsR3JhZGllbnQ0Njk4KSIvPg0KPC9nPg0KPC9zdmc+DQo=");
							}
							.repeat > .logo {
								background: url("data:image/svg+xml;base64,PHN2ZyBpZD0ic3ZnMiIgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6Y2M9Imh0dHA6Ly9jcmVhdGl2ZWNvbW1vbnMub3JnL25zIyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHZpZXdCb3g9IjAgMCAzMCAzMCIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIj4NCjxkZWZzIGlkPSJkZWZzNCI+DQo8cmFkaWFsR3JhZGllbnQgaWQ9InJhZGlhbEdyYWRpZW50NDE0NiIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIGN5PSIxMDM5LjkiIGN4PSI4LjA2MTciIGdyYWRpZW50VHJhbnNmb3JtPSJtYXRyaXgoMS4zNTU4IC4xNTQ0MiAtLjExNzg2IDEuMDM0OCAxMTkuNjkgLTM3Ljg0MikiIHI9IjE0Ljc5MyI+DQo8c3RvcCBpZD0ic3RvcDQyMDAiIHN0b3AtY29sb3I9IiMwMDk1MDAiIG9mZnNldD0iMCIvPg0KPHN0b3AgaWQ9InN0b3A0MjAyIiBzdG9wLWNvbG9yPSIjMDQwIiBvZmZzZXQ9IjEiLz4NCjwvcmFkaWFsR3JhZGllbnQ+DQo8L2RlZnM+DQo8ZyBpZD0ibGF5ZXIxIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgwIC0xMDIyLjQpIj4NCjxwYXRoIGlkPSJyZWN0NDE2NiIgZD0ibTE4LjE1NyAxMDMyLjN2NC4yNzMxbC0zLjcxNTcgMC4wODljLTIuMjg3Ni0wLjA0MS0yLjU1NDgtMC42MTI1LTEuODQ3Mi0xLjkzMDYgMS44Mjg1LTIuMjgxMyA0LjA4NDktNC40OTggNC4zNjAyLTYuOTc5NyAwLjA5MjkxLTAuOTIyOC0wLjYxNTE1LTMuNTAyNi0yLjQzMjctNC40MzU0LTEuOTM1My0wLjk5MzMtMTMuODg5LTAuODgxMy0xNC4wMy0wLjc0NzYtMC4xNDEwMyAwLjEzMzctMC4wNTQyNiA1LjkzOTYtMC4wNTQyNiA1LjkzOTYtMC4wNTM4ODEgMC4xIDUuMjUyOCAwLjA4OSA1Ljg4NjQgMC4yNzEgMS44NTA0IDAuNTMzMyAxLjQzNTUgMi40NzgtMC4xMTYxMiAzLjU2MTEtMi4xMjg1IDEuMTQ4NS00LjU3MzIgMi4zMzYyLTUuMjcwMSAzLjYxNzMtMC43MTgzNSAxLjU0MzEtMC41NTcxIDIuOTg0NC0wLjI5MTA0IDQuNzczNCAwLjM3MzI1IDIuNTA5OSAyLjg4NzMgNC4xODg1IDUuMDk0NCA0LjE5NjVsMTIuNDE2IDAuMDQ1djQuMjczMWwxMS44NDEtOC40NzM2eiIgZmlsbD0idXJsKCNyYWRpYWxHcmFkaWVudDQxNDYpIi8+DQo8L2c+DQo8L3N2Zz4NCg==");
							}
							.exit > .logo {
								background: url("data:image/svg+xml;base64,PHN2ZyBpZD0ic3ZnMiIgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6Y2M9Imh0dHA6Ly9jcmVhdGl2ZWNvbW1vbnMub3JnL25zIyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHZpZXdCb3g9IjAgMCAzMCAzMCIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIj4NCjxkZWZzIGlkPSJkZWZzNCI+DQo8cmFkaWFsR3JhZGllbnQgaWQ9InJhZGlhbEdyYWRpZW50NDY5OCIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIGN5PSIxMDQzLjMiIGN4PSIxNS43IiBncmFkaWVudFRyYW5zZm9ybT0ibWF0cml4KDEuMjQgLS4wMDM3ODExIC4wMDQzNjI5IDEuNDMwNyAtNy41MTcgLTQ1MC4zNykiIHI9IjE0LjQ3MSI+DQo8c3RvcCBpZD0ic3RvcDQyMDAiIHN0b3AtY29sb3I9IiNlM2UyZGIiIG9mZnNldD0iMCIvPg0KPHN0b3AgaWQ9InN0b3A0MjAyIiBzdG9wLWNvbG9yPSIjOTE4YTZmIiBvZmZzZXQ9IjEiLz4NCjwvcmFkaWFsR3JhZGllbnQ+DQo8L2RlZnM+DQo8ZyBpZD0ibGF5ZXIxIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgwIC0xMDIyLjQpIj4NCjxwYXRoIGlkPSJyZWN0NDE2NiIgZD0ibTEuMDg0MiAxMDM3aDQuMDY2MXMtMC4zOTY1IDQuNDkzNiAwLjYzMTM1IDYuMzU5NWMxLjMxNDUgMi4zODYyIDQuNTY2OCA1LjAzNSA2LjQ0MjcgNS4wMjg1bDE2LjY2NS0wLjA1OC0wLjAyNTI5LTcuNDY3LTE0LjQ1OCAwLjA5OGMtMS4xOTY1LTAuODc1Ni0xLjI2MjctMy45NjA0LTEuMjYyNy0zLjk2MDRoNC4xMjkybC04LjEyNjItMTEuNzE5eiIgZmlsbD0idXJsKCNyYWRpYWxHcmFkaWVudDQ2OTgpIi8+DQo8L2c+DQo8L3N2Zz4NCg==");
							}
							.label .text{
							    left center;
							  	padding: 1px 5px 1px 5px;
							  	height: 20px;
							}
						</style>
						<script></script>
					</head>
					<body>
						<xsl:apply-templates />
					</body>
				</html>
			</xsl:when>
			<xsl:otherwise><xsl:apply-templates /></xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="FLOW">
		<ul id="flow">
			<xsl:apply-templates/>
		</ul>
	</xsl:template>
	
	<xsl:template match="SEQUENCE">
		<li class="sequence"><span class="logo"></span><span class="label"></span><span class="text">SEQUENCE</span><span class="comment">(<xsl:value-of select="COMMENT/text()"></xsl:value-of>)</span><span class="lineNr"><xsl:value-of select="@location"></xsl:value-of></span>
			<ul><xsl:apply-templates/></ul>
		</li>
	</xsl:template>
	
	<xsl:template match="MAP">
		<li class="map"><span class="logo"></span><span class="label"></span><span class="text">MAP</span><span class="comment">(<xsl:value-of select="COMMENT/text()"></xsl:value-of>)</span><span class="lineNr"><xsl:value-of select="@location"></xsl:value-of></span></li>
	</xsl:template>
	
	<xsl:template match="INVOKE">
		<li class="invoke"><span class="logo"></span><span class="label"></span><span class="text"><xsl:value-of select="@SERVICE"></xsl:value-of></span><span class="comment">(<xsl:value-of select="COMMENT/text()"></xsl:value-of>)</span><span class="lineNr"><xsl:value-of select="@location"></xsl:value-of></span></li>
	</xsl:template>
	
	<xsl:template match="EXIT">
		<li class="exit"><span class="logo"></span><span class="label"></span><span class="text">EXIT</span><span class="comment">(<xsl:value-of select="COMMENT/text()"></xsl:value-of>)</span><span class="lineNr"><xsl:value-of select="@location"></xsl:value-of></span></li>
	</xsl:template>
	
	<xsl:template match="@* | node()">
	</xsl:template>
	
</xsl:stylesheet>