<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<style>
body {
	transition: opacity ease-in 0.2s;
}

body[unresolved] {
	opacity: 0;
	display: block;
	overflow: hidden;
	position: relative;
}
</style>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon"
	href="${contextPath}/templates/admin/assets/images/favicon.svg" type="image/x-icon" />
<title>PlainAdmin Demo | Bootstrap 5 Admin Template</title>

<!-- ========== All CSS files linkup ========= -->
<link rel="stylesheet"
	href="${contextPath}/templates/admin/assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="${contextPath}/templates/admin/assets/css/lineicons.css" />
<link rel="stylesheet" href="${contextPath}/templates/admin/assets/css/quill/bubble.css" />
<link rel="stylesheet" href="${contextPath}/templates/admin/assets/css/quill/snow.css" />
<link rel="stylesheet" href="${contextPath}/templates/admin/assets/css/fullcalendar.css" />
<link rel="stylesheet" href="${contextPath}/templates/admin/assets/css/morris.css" />
<link rel="stylesheet" href="${contextPath}/templates/admin/assets/css/datatable.css" />
<link rel="stylesheet" href="${contextPath}/templates/admin/assets/css/main.css" />
<style type="text/css">
:root {
	--fc-small-font-size: 0.85em;
	--fc-page-bg-color: #fff;
	--fc-neutral-bg-color: hsla(0, 0%, 82%, 0.3);
	--fc-neutral-text-color: grey;
	--fc-border-color: #ddd;
	--fc-button-text-color: #fff;
	--fc-button-bg-color: #2c3e50;
	--fc-button-border-color: #2c3e50;
	--fc-button-hover-bg-color: #1e2b37;
	--fc-button-hover-border-color: #1a252f;
	--fc-button-active-bg-color: #1a252f;
	--fc-button-active-border-color: #151e27;
	--fc-event-bg-color: #3788d8;
	--fc-event-border-color: #3788d8;
	--fc-event-text-color: #fff;
	--fc-event-selected-overlay-color: rgba(0, 0, 0, 0.25);
	--fc-more-link-bg-color: #d0d0d0;
	--fc-more-link-text-color: inherit;
	--fc-event-resizer-thickness: 8px;
	--fc-event-resizer-dot-total-width: 8px;
	--fc-event-resizer-dot-border-width: 1px;
	--fc-non-business-color: hsla(0, 0%, 84%, 0.3);
	--fc-bg-event-color: #8fdf82;
	--fc-bg-event-opacity: 0.3;
	--fc-highlight-color: rgba(188, 232, 241, 0.3);
	--fc-today-bg-color: rgba(255, 220, 40, 0.15);
	--fc-now-indicator-color: red;
}

.fc-not-allowed, .fc-not-allowed .fc-event {
	cursor: not-allowed;
}

.fc-unselectable {
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

.fc {
	display: flex;
	flex-direction: column;
	font-size: 1em;
}

.fc, .fc *, .fc :after, .fc :before {
	box-sizing: border-box;
}

.fc table {
	border-collapse: collapse;
	border-spacing: 0;
	font-size: 1em;
}

.fc th {
	text-align: center;
}

.fc td, .fc th {
	padding: 0;
	vertical-align: top;
}

.fc a[data-navlink] {
	cursor: pointer;
}

.fc a[data-navlink]:hover {
	text-decoration: underline;
}

.fc-direction-ltr {
	direction: ltr;
	text-align: left;
}

.fc-direction-rtl {
	direction: rtl;
	text-align: right;
}

.fc-theme-standard td, .fc-theme-standard th {
	border: 1px solid var(--fc-border-color);
}

.fc-liquid-hack td, .fc-liquid-hack th {
	position: relative;
}

@font-face {
	font-family: fcicons;
	font-style: normal;
	font-weight: 400;
	src:
		url("data:application/x-font-ttf;charset=utf-8;base64,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")
		format("truetype");
}

.fc-icon {
	speak: none;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	display: inline-block;
	font-family: fcicons !important;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	height: 1em;
	line-height: 1;
	text-align: center;
	text-transform: none;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
	width: 1em;
}

.fc-icon-chevron-left:before {
	content: "\e900";
}

.fc-icon-chevron-right:before {
	content: "\e901";
}

.fc-icon-chevrons-left:before {
	content: "\e902";
}

.fc-icon-chevrons-right:before {
	content: "\e903";
}

.fc-icon-minus-square:before {
	content: "\e904";
}

.fc-icon-plus-square:before {
	content: "\e905";
}

.fc-icon-x:before {
	content: "\e906";
}

.fc .fc-button {
	border-radius: 0;
	font-family: inherit;
	font-size: inherit;
	line-height: inherit;
	margin: 0;
	overflow: visible;
	text-transform: none;
}

.fc .fc-button:focus {
	outline: 1px dotted;
	outline: 5px auto -webkit-focus-ring-color;
}

.fc .fc-button {
	-webkit-appearance: button;
}

.fc .fc-button:not(:disabled) {
	cursor: pointer;
}

.fc .fc-button::-moz-focus-inner {
	border-style: none;
	padding: 0;
}

.fc .fc-button {
	background-color: transparent;
	border: 1px solid transparent;
	border-radius: 0.25em;
	display: inline-block;
	font-size: 1em;
	font-weight: 400;
	line-height: 1.5;
	padding: 0.4em 0.65em;
	text-align: center;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
	vertical-align: middle;
}

.fc .fc-button:hover {
	text-decoration: none;
}

.fc .fc-button:focus {
	box-shadow: 0 0 0 0.2rem rgba(44, 62, 80, 0.25);
	outline: 0;
}

.fc .fc-button:disabled {
	opacity: 0.65;
}

.fc .fc-button-primary {
	background-color: var(--fc-button-bg-color);
	border-color: var(--fc-button-border-color);
	color: var(--fc-button-text-color);
}

.fc .fc-button-primary:hover {
	background-color: var(--fc-button-hover-bg-color);
	border-color: var(--fc-button-hover-border-color);
	color: var(--fc-button-text-color);
}

.fc .fc-button-primary:disabled {
	background-color: var(--fc-button-bg-color);
	border-color: var(--fc-button-border-color);
	color: var(--fc-button-text-color);
}

.fc .fc-button-primary:focus {
	box-shadow: 0 0 0 0.2rem rgba(76, 91, 106, 0.5);
}

.fc .fc-button-primary:not(:disabled).fc-button-active, .fc .fc-button-primary:not(:disabled):active
	{
	background-color: var(--fc-button-active-bg-color);
	border-color: var(--fc-button-active-border-color);
	color: var(--fc-button-text-color);
}

.fc .fc-button-primary:not(:disabled).fc-button-active:focus, .fc .fc-button-primary:not(:disabled):active:focus
	{
	box-shadow: 0 0 0 0.2rem rgba(76, 91, 106, 0.5);
}

.fc .fc-button .fc-icon {
	font-size: 1.5em;
	vertical-align: middle;
}

.fc .fc-button-group {
	display: inline-flex;
	position: relative;
	vertical-align: middle;
}

.fc .fc-button-group>.fc-button {
	flex: 1 1 auto;
	position: relative;
}

.fc .fc-button-group>.fc-button.fc-button-active, .fc .fc-button-group>.fc-button:active,
	.fc .fc-button-group>.fc-button:focus, .fc .fc-button-group>.fc-button:hover
	{
	z-index: 1;
}

.fc-direction-ltr .fc-button-group>.fc-button:not(:first-child) {
	border-bottom-left-radius: 0;
	border-top-left-radius: 0;
	margin-left: -1px;
}

.fc-direction-ltr .fc-button-group>.fc-button:not(:last-child) {
	border-bottom-right-radius: 0;
	border-top-right-radius: 0;
}

.fc-direction-rtl .fc-button-group>.fc-button:not(:first-child) {
	border-bottom-right-radius: 0;
	border-top-right-radius: 0;
	margin-right: -1px;
}

.fc-direction-rtl .fc-button-group>.fc-button:not(:last-child) {
	border-bottom-left-radius: 0;
	border-top-left-radius: 0;
}

.fc .fc-toolbar {
	align-items: center;
	display: flex;
	justify-content: space-between;
}

.fc .fc-toolbar.fc-header-toolbar {
	margin-bottom: 1.5em;
}

.fc .fc-toolbar.fc-footer-toolbar {
	margin-top: 1.5em;
}

.fc .fc-toolbar-title {
	font-size: 1.75em;
	margin: 0;
}

.fc-direction-ltr .fc-toolbar>*>:not(:first-child) {
	margin-left: 0.75em;
}

.fc-direction-rtl .fc-toolbar>*>:not(:first-child) {
	margin-right: 0.75em;
}

.fc-direction-rtl .fc-toolbar-ltr {
	flex-direction: row-reverse;
}

.fc .fc-scroller {
	-webkit-overflow-scrolling: touch;
	position: relative;
}

.fc .fc-scroller-liquid {
	height: 100%;
}

.fc .fc-scroller-liquid-absolute {
	bottom: 0;
	left: 0;
	position: absolute;
	right: 0;
	top: 0;
}

.fc .fc-scroller-harness {
	direction: ltr;
	overflow: hidden;
	position: relative;
}

.fc .fc-scroller-harness-liquid {
	height: 100%;
}

.fc-direction-rtl .fc-scroller-harness>.fc-scroller {
	direction: rtl;
}

.fc-theme-standard .fc-scrollgrid {
	border: 1px solid var(--fc-border-color);
}

.fc .fc-scrollgrid, .fc .fc-scrollgrid table {
	table-layout: fixed;
	width: 100%;
}

.fc .fc-scrollgrid table {
	border-left-style: hidden;
	border-right-style: hidden;
	border-top-style: hidden;
}

.fc .fc-scrollgrid {
	border-bottom-width: 0;
	border-collapse: separate;
	border-right-width: 0;
}

.fc .fc-scrollgrid-liquid {
	height: 100%;
}

.fc .fc-scrollgrid-section, .fc .fc-scrollgrid-section table, .fc .fc-scrollgrid-section>td
	{
	height: 1px;
}

.fc .fc-scrollgrid-section-liquid>td {
	height: 100%;
}

.fc .fc-scrollgrid-section>* {
	border-left-width: 0;
	border-top-width: 0;
}

.fc .fc-scrollgrid-section-footer>*, .fc .fc-scrollgrid-section-header>*
	{
	border-bottom-width: 0;
}

.fc .fc-scrollgrid-section-body table, .fc .fc-scrollgrid-section-footer table
	{
	border-bottom-style: hidden;
}

.fc .fc-scrollgrid-section-sticky>* {
	background: var(--fc-page-bg-color);
	position: sticky;
	z-index: 3;
}

.fc .fc-scrollgrid-section-header.fc-scrollgrid-section-sticky>* {
	top: 0;
}

.fc .fc-scrollgrid-section-footer.fc-scrollgrid-section-sticky>* {
	bottom: 0;
}

.fc .fc-scrollgrid-sticky-shim {
	height: 1px;
	margin-bottom: -1px;
}

.fc-sticky {
	position: sticky;
}

.fc .fc-view-harness {
	flex-grow: 1;
	position: relative;
}

.fc .fc-view-harness-active>.fc-view {
	bottom: 0;
	left: 0;
	position: absolute;
	right: 0;
	top: 0;
}

.fc .fc-col-header-cell-cushion {
	display: inline-block;
	padding: 2px 4px;
}

.fc .fc-bg-event, .fc .fc-highlight, .fc .fc-non-business {
	bottom: 0;
	left: 0;
	position: absolute;
	right: 0;
	top: 0;
}

.fc .fc-non-business {
	background: var(--fc-non-business-color);
}

.fc .fc-bg-event {
	background: var(--fc-bg-event-color);
	opacity: var(--fc-bg-event-opacity);
}

.fc .fc-bg-event .fc-event-title {
	font-size: var(--fc-small-font-size);
	font-style: italic;
	margin: 0.5em;
}

.fc .fc-highlight {
	background: var(--fc-highlight-color);
}

.fc .fc-cell-shaded, .fc .fc-day-disabled {
	background: var(--fc-neutral-bg-color);
}

a.fc-event, a.fc-event:hover {
	text-decoration: none;
}

.fc-event.fc-event-draggable, .fc-event[href] {
	cursor: pointer;
}

.fc-event .fc-event-main {
	position: relative;
	z-index: 2;
}

.fc-event-dragging:not(.fc-event-selected) {
	opacity: 0.75;
}

.fc-event-dragging.fc-event-selected {
	box-shadow: 0 2px 7px rgba(0, 0, 0, 0.3);
}

.fc-event .fc-event-resizer {
	display: none;
	position: absolute;
	z-index: 4;
}

.fc-event-selected .fc-event-resizer, .fc-event:hover .fc-event-resizer
	{
	display: block;
}

.fc-event-selected .fc-event-resizer {
	background: var(--fc-page-bg-color);
	border-color: inherit;
	border-radius: calc(var(--fc-event-resizer-dot-total-width)/2);
	border-style: solid;
	border-width: var(--fc-event-resizer-dot-border-width);
	height: var(--fc-event-resizer-dot-total-width);
	width: var(--fc-event-resizer-dot-total-width);
}

.fc-event-selected .fc-event-resizer:before {
	bottom: -20px;
	content: "";
	left: -20px;
	position: absolute;
	right: -20px;
	top: -20px;
}

.fc-event-selected, .fc-event:focus {
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
}

.fc-event-selected:before, .fc-event:focus:before {
	bottom: 0;
	content: "";
	left: 0;
	position: absolute;
	right: 0;
	top: 0;
	z-index: 3;
}

.fc-event-selected:after, .fc-event:focus:after {
	background: var(--fc-event-selected-overlay-color);
	bottom: -1px;
	content: "";
	left: -1px;
	position: absolute;
	right: -1px;
	top: -1px;
	z-index: 1;
}

.fc-h-event {
	background-color: var(--fc-event-bg-color);
	border: 1px solid var(--fc-event-border-color);
	display: block;
}

.fc-h-event .fc-event-main {
	color: var(--fc-event-text-color);
}

.fc-h-event .fc-event-main-frame {
	display: flex;
}

.fc-h-event .fc-event-time {
	max-width: 100%;
	overflow: hidden;
}

.fc-h-event .fc-event-title-container {
	flex-grow: 1;
	flex-shrink: 1;
	min-width: 0;
}

.fc-h-event .fc-event-title {
	display: inline-block;
	left: 0;
	max-width: 100%;
	overflow: hidden;
	right: 0;
	vertical-align: top;
}

.fc-h-event.fc-event-selected:before {
	bottom: -10px;
	top: -10px;
}

.fc-direction-ltr .fc-daygrid-block-event:not(.fc-event-start),
	.fc-direction-rtl .fc-daygrid-block-event:not(.fc-event-end) {
	border-bottom-left-radius: 0;
	border-left-width: 0;
	border-top-left-radius: 0;
}

.fc-direction-ltr .fc-daygrid-block-event:not(.fc-event-end),
	.fc-direction-rtl .fc-daygrid-block-event:not(.fc-event-start) {
	border-bottom-right-radius: 0;
	border-right-width: 0;
	border-top-right-radius: 0;
}

.fc-h-event:not(.fc-event-selected) .fc-event-resizer {
	bottom: 0;
	top: 0;
	width: var(--fc-event-resizer-thickness);
}

.fc-direction-ltr
        .fc-h-event:not(.fc-event-selected)
        .fc-event-resizer-start, .fc-direction-rtl
        .fc-h-event:not(.fc-event-selected)
        .fc-event-resizer-end {
	cursor: w-resize;
	left: calc(var(--fc-event-resizer-thickness)* -0.5);
}

.fc-direction-ltr
        .fc-h-event:not(.fc-event-selected)
        .fc-event-resizer-end, .fc-direction-rtl
        .fc-h-event:not(.fc-event-selected)
        .fc-event-resizer-start {
	cursor: e-resize;
	right: calc(var(--fc-event-resizer-thickness)* -0.5);
}

.fc-h-event.fc-event-selected .fc-event-resizer {
	margin-top: calc(var(--fc-event-resizer-dot-total-width)* -0.5);
	top: 50%;
}

.fc-direction-ltr .fc-h-event.fc-event-selected .fc-event-resizer-start,
	.fc-direction-rtl .fc-h-event.fc-event-selected .fc-event-resizer-end {
	left: calc(var(--fc-event-resizer-dot-total-width)* -0.5);
}

.fc-direction-ltr .fc-h-event.fc-event-selected .fc-event-resizer-end,
	.fc-direction-rtl .fc-h-event.fc-event-selected .fc-event-resizer-start
	{
	right: calc(var(--fc-event-resizer-dot-total-width)* -0.5);
}

.fc .fc-popover {
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.15);
	position: absolute;
	z-index: 9999;
}

.fc .fc-popover-header {
	align-items: center;
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	padding: 3px 4px;
}

.fc .fc-popover-title {
	margin: 0 2px;
}

.fc .fc-popover-close {
	cursor: pointer;
	font-size: 1.1em;
	opacity: 0.65;
}

.fc-theme-standard .fc-popover {
	background: var(--fc-page-bg-color);
	border: 1px solid var(--fc-border-color);
}

.fc-theme-standard .fc-popover-header {
	background: var(--fc-neutral-bg-color);
}
</style>
<style type="text/css">
:root {
	--fc-daygrid-event-dot-width: 8px;
}

.fc-daygrid-day-events:after, .fc-daygrid-day-events:before,
	.fc-daygrid-day-frame:after, .fc-daygrid-day-frame:before,
	.fc-daygrid-event-harness:after, .fc-daygrid-event-harness:before {
	clear: both;
	content: "";
	display: table;
}

.fc .fc-daygrid-body {
	position: relative;
	z-index: 1;
}

.fc .fc-daygrid-day.fc-day-today {
	background-color: var(--fc-today-bg-color);
}

.fc .fc-daygrid-day-frame {
	min-height: 100%;
	position: relative;
}

.fc .fc-daygrid-day-top {
	display: flex;
	flex-direction: row-reverse;
}

.fc .fc-day-other .fc-daygrid-day-top {
	opacity: 0.3;
}

.fc .fc-daygrid-day-number {
	padding: 4px;
	position: relative;
	z-index: 4;
}

.fc .fc-daygrid-day-events {
	margin-top: 1px;
}

.fc .fc-daygrid-body-balanced .fc-daygrid-day-events {
	left: 0;
	position: absolute;
	right: 0;
}

.fc .fc-daygrid-body-unbalanced .fc-daygrid-day-events {
	min-height: 2em;
	position: relative;
}

.fc .fc-daygrid-body-natural .fc-daygrid-day-events {
	margin-bottom: 1em;
}

.fc .fc-daygrid-event-harness {
	position: relative;
}

.fc .fc-daygrid-event-harness-abs {
	left: 0;
	position: absolute;
	right: 0;
	top: 0;
}

.fc .fc-daygrid-bg-harness {
	bottom: 0;
	position: absolute;
	top: 0;
}

.fc .fc-daygrid-day-bg .fc-non-business {
	z-index: 1;
}

.fc .fc-daygrid-day-bg .fc-bg-event {
	z-index: 2;
}

.fc .fc-daygrid-day-bg .fc-highlight {
	z-index: 3;
}

.fc .fc-daygrid-event {
	margin-top: 1px;
	z-index: 6;
}

.fc .fc-daygrid-event.fc-event-mirror {
	z-index: 7;
}

.fc .fc-daygrid-day-bottom {
	font-size: 0.85em;
	padding: 2px 3px 0;
}

.fc .fc-daygrid-day-bottom:before {
	clear: both;
	content: "";
	display: table;
}

.fc .fc-daygrid-more-link {
	cursor: pointer;
	position: relative;
	z-index: 4;
}

.fc .fc-daygrid-week-number {
	background-color: var(--fc-neutral-bg-color);
	color: var(--fc-neutral-text-color);
	min-width: 1.5em;
	padding: 2px;
	position: absolute;
	text-align: center;
	top: 0;
	z-index: 5;
}

.fc .fc-more-popover .fc-popover-body {
	min-width: 220px;
	padding: 10px;
}

.fc-direction-ltr .fc-daygrid-event.fc-event-start, .fc-direction-rtl .fc-daygrid-event.fc-event-end
	{
	margin-left: 2px;
}

.fc-direction-ltr .fc-daygrid-event.fc-event-end, .fc-direction-rtl .fc-daygrid-event.fc-event-start
	{
	margin-right: 2px;
}

.fc-direction-ltr .fc-daygrid-week-number {
	border-radius: 0 0 3px 0;
	left: 0;
}

.fc-direction-rtl .fc-daygrid-week-number {
	border-radius: 0 0 0 3px;
	right: 0;
}

.fc-liquid-hack .fc-daygrid-day-frame {
	position: static;
}

.fc-daygrid-event {
	border-radius: 3px;
	font-size: var(--fc-small-font-size);
	position: relative;
	white-space: nowrap;
}

.fc-daygrid-block-event .fc-event-time {
	font-weight: 700;
}

.fc-daygrid-block-event .fc-event-time, .fc-daygrid-block-event .fc-event-title
	{
	padding: 1px;
}

.fc-daygrid-dot-event {
	align-items: center;
	display: flex;
	padding: 2px 0;
}

.fc-daygrid-dot-event .fc-event-title {
	flex-grow: 1;
	flex-shrink: 1;
	font-weight: 700;
	min-width: 0;
	overflow: hidden;
}

.fc-daygrid-dot-event.fc-event-mirror, .fc-daygrid-dot-event:hover {
	background: rgba(0, 0, 0, 0.1);
}

.fc-daygrid-dot-event.fc-event-selected:before {
	bottom: -10px;
	top: -10px;
}

.fc-daygrid-event-dot {
	border: calc(var(--fc-daygrid-event-dot-width)/2) solid
		var(--fc-event-border-color);
	border-radius: calc(var(--fc-daygrid-event-dot-width)/2);
	box-sizing: content-box;
	height: 0;
	margin: 0 4px;
	width: 0;
}

.fc-direction-ltr .fc-daygrid-event .fc-event-time {
	margin-right: 3px;
}

.fc-direction-rtl .fc-daygrid-event .fc-event-time {
	margin-left: 3px;
}
</style>
<style type="text/css">
.fc-v-event {
	background-color: var(--fc-event-bg-color);
	border: 1px solid var(--fc-event-border-color);
	display: block;
}

.fc-v-event .fc-event-main {
	color: var(--fc-event-text-color);
	height: 100%;
}

.fc-v-event .fc-event-main-frame {
	display: flex;
	flex-direction: column;
	height: 100%;
}

.fc-v-event .fc-event-time {
	flex-grow: 0;
	flex-shrink: 0;
	max-height: 100%;
	overflow: hidden;
}

.fc-v-event .fc-event-title-container {
	flex-grow: 1;
	flex-shrink: 1;
	min-height: 0;
}

.fc-v-event .fc-event-title {
	bottom: 0;
	max-height: 100%;
	overflow: hidden;
	top: 0;
}

.fc-v-event:not(.fc-event-start) {
	border-top-left-radius: 0;
	border-top-right-radius: 0;
	border-top-width: 0;
}

.fc-v-event:not(.fc-event-end) {
	border-bottom-left-radius: 0;
	border-bottom-right-radius: 0;
	border-bottom-width: 0;
}

.fc-v-event.fc-event-selected:before {
	left: -10px;
	right: -10px;
}

.fc-v-event .fc-event-resizer-start {
	cursor: n-resize;
}

.fc-v-event .fc-event-resizer-end {
	cursor: s-resize;
}

.fc-v-event:not(.fc-event-selected) .fc-event-resizer {
	height: var(--fc-event-resizer-thickness);
	left: 0;
	right: 0;
}

.fc-v-event:not(.fc-event-selected) .fc-event-resizer-start {
	top: calc(var(--fc-event-resizer-thickness)/-2);
}

.fc-v-event:not(.fc-event-selected) .fc-event-resizer-end {
	bottom: calc(var(--fc-event-resizer-thickness)/-2);
}

.fc-v-event.fc-event-selected .fc-event-resizer {
	left: 50%;
	margin-left: calc(var(--fc-event-resizer-dot-total-width)/-2);
}

.fc-v-event.fc-event-selected .fc-event-resizer-start {
	top: calc(var(--fc-event-resizer-dot-total-width)/-2);
}

.fc-v-event.fc-event-selected .fc-event-resizer-end {
	bottom: calc(var(--fc-event-resizer-dot-total-width)/-2);
}

.fc .fc-timegrid .fc-daygrid-body {
	z-index: 2;
}

.fc .fc-timegrid-divider {
	padding: 0 0 2px;
}

.fc .fc-timegrid-body {
	min-height: 100%;
	position: relative;
	z-index: 1;
}

.fc .fc-timegrid-axis-chunk {
	position: relative;
}

.fc .fc-timegrid-axis-chunk>table, .fc .fc-timegrid-slots {
	position: relative;
	z-index: 1;
}

.fc .fc-timegrid-slot {
	border-bottom: 0;
	height: 1.5em;
}

.fc .fc-timegrid-slot:empty:before {
	content: "\00a0";
}

.fc .fc-timegrid-slot-minor {
	border-top-style: dotted;
}

.fc .fc-timegrid-slot-label-cushion {
	display: inline-block;
	white-space: nowrap;
}

.fc .fc-timegrid-slot-label {
	vertical-align: middle;
}

.fc .fc-timegrid-axis-cushion, .fc .fc-timegrid-slot-label-cushion {
	padding: 0 4px;
}

.fc .fc-timegrid-axis-frame-liquid {
	height: 100%;
}

.fc .fc-timegrid-axis-frame {
	align-items: center;
	display: flex;
	justify-content: flex-end;
	overflow: hidden;
}

.fc .fc-timegrid-axis-cushion {
	flex-shrink: 0;
	max-width: 60px;
}

.fc-direction-ltr .fc-timegrid-slot-label-frame {
	text-align: right;
}

.fc-direction-rtl .fc-timegrid-slot-label-frame {
	text-align: left;
}

.fc-liquid-hack .fc-timegrid-axis-frame-liquid {
	bottom: 0;
	height: auto;
	left: 0;
	position: absolute;
	right: 0;
	top: 0;
}

.fc .fc-timegrid-col.fc-day-today {
	background-color: var(--fc-today-bg-color);
}

.fc .fc-timegrid-col-frame {
	min-height: 100%;
	position: relative;
}

.fc-media-screen.fc-liquid-hack .fc-timegrid-col-frame {
	bottom: 0;
	height: auto;
	left: 0;
	position: absolute;
	right: 0;
	top: 0;
}

.fc-media-screen .fc-timegrid-cols {
	bottom: 0;
	left: 0;
	position: absolute;
	right: 0;
	top: 0;
}

.fc-media-screen .fc-timegrid-cols>table {
	height: 100%;
}

.fc-media-screen .fc-timegrid-col-bg, .fc-media-screen .fc-timegrid-col-events,
	.fc-media-screen .fc-timegrid-now-indicator-container {
	left: 0;
	position: absolute;
	right: 0;
	top: 0;
}

.fc .fc-timegrid-col-bg {
	z-index: 2;
}

.fc .fc-timegrid-col-bg .fc-non-business {
	z-index: 1;
}

.fc .fc-timegrid-col-bg .fc-bg-event {
	z-index: 2;
}

.fc .fc-timegrid-col-bg .fc-highlight {
	z-index: 3;
}

.fc .fc-timegrid-bg-harness {
	left: 0;
	position: absolute;
	right: 0;
}

.fc .fc-timegrid-col-events {
	z-index: 3;
}

.fc .fc-timegrid-now-indicator-container {
	bottom: 0;
	overflow: hidden;
}

.fc-direction-ltr .fc-timegrid-col-events {
	margin: 0 2.5% 0 2px;
}

.fc-direction-rtl .fc-timegrid-col-events {
	margin: 0 2px 0 2.5%;
}

.fc-timegrid-event-harness {
	position: absolute;
}

.fc-timegrid-event-harness>.fc-timegrid-event {
	bottom: 0;
	left: 0;
	position: absolute;
	right: 0;
	top: 0;
}

.fc-timegrid-event-harness-inset .fc-timegrid-event, .fc-timegrid-event.fc-event-mirror,
	.fc-timegrid-more-link {
	box-shadow: 0 0 0 1px var(--fc-page-bg-color);
}

.fc-timegrid-event, .fc-timegrid-more-link {
	border-radius: 3px;
	font-size: var(--fc-small-font-size);
}

.fc-timegrid-event {
	margin-bottom: 1px;
}

.fc-timegrid-event .fc-event-main {
	padding: 1px 1px 0;
}

.fc-timegrid-event .fc-event-time {
	font-size: var(--fc-small-font-size);
	margin-bottom: 1px;
	white-space: nowrap;
}

.fc-timegrid-event-short .fc-event-main-frame {
	flex-direction: row;
	overflow: hidden;
}

.fc-timegrid-event-short .fc-event-time:after {
	content: "\00a0-\00a0";
}

.fc-timegrid-event-short .fc-event-title {
	font-size: var(--fc-small-font-size);
}

.fc-timegrid-more-link {
	background: var(--fc-more-link-bg-color);
	color: var(--fc-more-link-text-color);
	cursor: pointer;
	margin-bottom: 1px;
	position: absolute;
	z-index: 9999;
}

.fc-timegrid-more-link-inner {
	padding: 3px 2px;
	top: 0;
}

.fc-direction-ltr .fc-timegrid-more-link {
	right: 0;
}

.fc-direction-rtl .fc-timegrid-more-link {
	left: 0;
}

.fc .fc-timegrid-now-indicator-line {
	border-color: var(--fc-now-indicator-color);
	border-style: solid;
	border-width: 1px 0 0;
	left: 0;
	position: absolute;
	right: 0;
	z-index: 4;
}

.fc .fc-timegrid-now-indicator-arrow {
	border-color: var(--fc-now-indicator-color);
	border-style: solid;
	margin-top: -5px;
	position: absolute;
	z-index: 4;
}

.fc-direction-ltr .fc-timegrid-now-indicator-arrow {
	border-bottom-color: transparent;
	border-top-color: transparent;
	border-width: 5px 0 5px 6px;
	left: 0;
}

.fc-direction-rtl .fc-timegrid-now-indicator-arrow {
	border-bottom-color: transparent;
	border-top-color: transparent;
	border-width: 5px 6px 5px 0;
	right: 0;
}
</style>
<style type="text/css">
:root {
	--fc-list-event-dot-width: 10px;
	--fc-list-event-hover-bg-color: #f5f5f5;
}

.fc-theme-standard .fc-list {
	border: 1px solid var(--fc-border-color);
}

.fc .fc-list-empty {
	align-items: center;
	background-color: var(--fc-neutral-bg-color);
	display: flex;
	height: 100%;
	justify-content: center;
}

.fc .fc-list-empty-cushion {
	margin: 5em 0;
}

.fc .fc-list-table {
	border-style: hidden;
	width: 100%;
}

.fc .fc-list-table tr>* {
	border-left: 0;
	border-right: 0;
}

.fc .fc-list-sticky .fc-list-day>* {
	background: var(--fc-page-bg-color);
	position: sticky;
	top: 0;
}

.fc .fc-list-table thead {
	left: -10000px;
	position: absolute;
}

.fc .fc-list-table tbody>tr:first-child th {
	border-top: 0;
}

.fc .fc-list-table th {
	padding: 0;
}

.fc .fc-list-day-cushion, .fc .fc-list-table td {
	padding: 8px 14px;
}

.fc .fc-list-day-cushion:after {
	clear: both;
	content: "";
	display: table;
}

.fc-theme-standard .fc-list-day-cushion {
	background-color: var(--fc-neutral-bg-color);
}

.fc-direction-ltr .fc-list-day-text, .fc-direction-rtl .fc-list-day-side-text
	{
	float: left;
}

.fc-direction-ltr .fc-list-day-side-text, .fc-direction-rtl .fc-list-day-text
	{
	float: right;
}

.fc-direction-ltr .fc-list-table .fc-list-event-graphic {
	padding-right: 0;
}

.fc-direction-rtl .fc-list-table .fc-list-event-graphic {
	padding-left: 0;
}

.fc .fc-list-event.fc-event-forced-url {
	cursor: pointer;
}

.fc .fc-list-event:hover td {
	background-color: var(--fc-list-event-hover-bg-color);
}

.fc .fc-list-event-graphic, .fc .fc-list-event-time {
	white-space: nowrap;
	width: 1px;
}

.fc .fc-list-event-dot {
	border: calc(var(--fc-list-event-dot-width)/2) solid
		var(--fc-event-border-color);
	border-radius: calc(var(--fc-list-event-dot-width)/2);
	box-sizing: content-box;
	display: inline-block;
	height: 0;
	width: 0;
}

.fc .fc-list-event-title a {
	color: inherit;
	text-decoration: none;
}

.fc .fc-list-event.fc-event-forced-url:hover a {
	text-decoration: underline;
}
</style>
</head>

<body data-new-gr-c-s-check-loaded="14.1196.0" data-gr-ext-installed>
	<!-- Preloader  -->
	<div id="preloader" style="display: none">
		<div class="spinner"></div>
	</div>
	
	<%@ include file="/common/admin/left.jsp" %>

	<main class="main-wrapper">
		<!-- Header -->
		<div>
			<%@ include file="/common/admin/header.jsp"%>
		</div>

		<div class="content">
			<sitemesh:write property="body" />
		</div>

		<!-- Footer -->
		<div>
			<%@ include file="/common/admin/footer.jsp"%>
		</div>
	</main>

	<!-- ========= All Javascript files linkup ======== -->
	<script src="${contextPath}/templates/admin/assets/js/bootstrap.bundle.min.js"></script>
	<script src="${contextPath}/templates/admin/assets/js/Chart.min.js"></script>
	<script src="${contextPath}/templates/admin/assets/js/apexcharts.min.js"></script>
	<script src="${contextPath}/templates/admin/assets/js/dynamic-pie-chart.js"></script>
	<script src="${contextPath}/templates/admin/assets/js/moment.min.js"></script>
	<script src="${contextPath}/templates/admin/assets/js/fullcalendar.js"></script>
	<script src="${contextPath}/templates/admin/assets/js/jvectormap.min.js"></script>
	<script src="${contextPath}/templates/admin/assets/js/world-merc.js"></script>
	<script src="${contextPath}/templates/admin/assets/js/polyfill.js"></script>
	<script src="${contextPath}/templates/admin/assets/js/quill.min.js"></script>
	<script src="${contextPath}/templates/admin/assets/js/datatable.js"></script>
	<script src="${contextPath}/templates/admin/assets/js/Sortable.min.js"></script>
	<script src="${contextPath}/templates/admin/assets/js/main.js"></script>
	<script>
      // ======== jvectormap activation
      var markers = [
        { name: "Egypt", coords: [26.8206, 30.8025] },
        { name: "Russia", coords: [61.524, 105.3188] },
        { name: "Canada", coords: [56.1304, -106.3468] },
        { name: "Greenland", coords: [71.7069, -42.6043] },
        { name: "Brazil", coords: [-14.235, -51.9253] },
      ];

      var jvm = new jsVectorMap({
        map: "world_merc",
        selector: "#map",
        zoomButtons: true,

        regionStyle: {
          initial: {
            fill: "#d1d5db",
          },
        },

        labels: {
          markers: {
            render: (marker) => marker.name,
          },
        },

        markersSelectable: true,
        selectedMarkers: markers.map((marker, index) => {
          var name = marker.name;

          if (name === "Russia" || name === "Brazil") {
            return index;
          }
        }),
        markers: markers,
        markerStyle: {
          initial: { fill: "#4A6CF7" },
          selected: { fill: "#ff5050" },
        },
        markerLabelStyle: {
          initial: {
            fontWeight: 400,
            fontSize: 14,
          },
        },
      });
      // ====== calendar activation
      document.addEventListener("DOMContentLoaded", function () {
        var calendarMiniEl = document.getElementById("calendar-mini");
        var calendarMini = new FullCalendar.Calendar(calendarMiniEl, {
          initialView: "dayGridMonth",
          headerToolbar: {
            end: "today prev,next",
          },
        });
        calendarMini.render();
      });

      // =========== chart one start
      const ctx1 = document.getElementById("Chart1").getContext("2d");
      const chart1 = new Chart(ctx1, {
        type: "line",
        data: {
          labels: [
            "Jan",
            "Fab",
            "Mar",
            "Apr",
            "May",
            "Jun",
            "Jul",
            "Aug",
            "Sep",
            "Oct",
            "Nov",
            "Dec",
          ],
          datasets: [
            {
              label: "",
              backgroundColor: "transparent",
              borderColor: "#365CF5",
              data: [
                600, 800, 750, 880, 940, 880, 900, 770, 920, 890, 976, 1100,
              ],
              pointBackgroundColor: "transparent",
              pointHoverBackgroundColor: "#365CF5",
              pointBorderColor: "transparent",
              pointHoverBorderColor: "#fff",
              pointHoverBorderWidth: 5,
              borderWidth: 5,
              pointRadius: 8,
              pointHoverRadius: 8,
              cubicInterpolationMode: "monotone", // Add this line for curved line
            },
          ],
        },
        options: {
          plugins: {
            tooltip: {
              callbacks: {
                labelColor: function (context) {
                  return {
                    backgroundColor: "#ffffff",
                    color: "#171717",
                  };
                },
              },
              intersect: false,
              backgroundColor: "#f9f9f9",
              title: {
                fontFamily: "Plus Jakarta Sans",
                color: "#8F92A1",
                fontSize: 12,
              },
              body: {
                fontFamily: "Plus Jakarta Sans",
                color: "#171717",
                fontStyle: "bold",
                fontSize: 16,
              },
              multiKeyBackground: "transparent",
              displayColors: false,
              padding: {
                x: 30,
                y: 10,
              },
              bodyAlign: "center",
              titleAlign: "center",
              titleColor: "#8F92A1",
              bodyColor: "#171717",
              bodyFont: {
                family: "Plus Jakarta Sans",
                size: "16",
                weight: "bold",
              },
            },
            legend: {
              display: false,
            },
          },
          responsive: true,
          maintainAspectRatio: false,
          title: {
            display: false,
          },
          scales: {
            y: {
              grid: {
                display: false,
                drawTicks: false,
                drawBorder: false,
              },
              ticks: {
                padding: 35,
                max: 1200,
                min: 500,
              },
            },
            x: {
              grid: {
                drawBorder: false,
                color: "rgba(143, 146, 161, .1)",
                zeroLineColor: "rgba(143, 146, 161, .1)",
              },
              ticks: {
                padding: 20,
              },
            },
          },
        },
      });
      // =========== chart one end

      // =========== chart two start
      const ctx2 = document.getElementById("Chart2").getContext("2d");
      const chart2 = new Chart(ctx2, {
        type: "bar",
        data: {
          labels: [
            "Jan",
            "Fab",
            "Mar",
            "Apr",
            "May",
            "Jun",
            "Jul",
            "Aug",
            "Sep",
            "Oct",
            "Nov",
            "Dec",
          ],
          datasets: [
            {
              label: "",
              backgroundColor: "#365CF5",
              borderRadius: 30,
              barThickness: 6,
              maxBarThickness: 8,
              data: [
                600, 700, 1000, 700, 650, 800, 690, 740, 720, 1120, 876, 900,
              ],
            },
          ],
        },
        options: {
          plugins: {
            tooltip: {
              callbacks: {
                titleColor: function (context) {
                  return "#8F92A1";
                },
                label: function (context) {
                  let label = context.dataset.label || "";

                  if (label) {
                    label += ": ";
                  }
                  label += context.parsed.y;
                  return label;
                },
              },
              backgroundColor: "#F3F6F8",
              titleAlign: "center",
              bodyAlign: "center",
              titleFont: {
                size: 12,
                weight: "bold",
                color: "#8F92A1",
              },
              bodyFont: {
                size: 16,
                weight: "bold",
                color: "#171717",
              },
              displayColors: false,
              padding: {
                x: 30,
                y: 10,
              },
            },
          },
          layout: {
            padding: {
              top: 15,
              right: 15,
              bottom: 15,
              left: 15,
            },
          },
          responsive: true,
          maintainAspectRatio: false,
          scales: {
            y: {
              grid: {
                display: false,
                drawTicks: false,
                drawBorder: false,
              },
              ticks: {
                padding: 35,
                max: 1200,
                min: 0,
              },
            },
            x: {
              grid: {
                display: false,
                drawBorder: false,
                color: "rgba(143, 146, 161, .1)",
                drawTicks: false,
                zeroLineColor: "rgba(143, 146, 161, .1)",
              },
              ticks: {
                padding: 20,
              },
            },
          },
          plugins: {
            legend: {
              display: false,
            },
            title: {
              display: false,
            },
          },
        },
      });
      // =========== chart two end

      // =========== chart three start
      const ctx3 = document.getElementById("Chart3").getContext("2d");
      const chart3 = new Chart(ctx3, {
        type: "line",
        data: {
          labels: [
            "Jan",
            "Feb",
            "Mar",
            "Apr",
            "May",
            "Jun",
            "Jul",
            "Aug",
            "Sep",
            "Oct",
            "Nov",
            "Dec",
          ],
          datasets: [
            {
              label: "Revenue",
              backgroundColor: "transparent",
              borderColor: "#365CF5",
              data: [80, 120, 110, 100, 130, 150, 115, 145, 140, 130, 160, 210],
              pointBackgroundColor: "transparent",
              pointHoverBackgroundColor: "#365CF5",
              pointBorderColor: "transparent",
              pointHoverBorderColor: "#365CF5",
              pointHoverBorderWidth: 3,
              pointBorderWidth: 5,
              pointRadius: 5,
              pointHoverRadius: 8,
              fill: false,
              tension: 0.4,
            },
            {
              label: "Profit",
              backgroundColor: "transparent",
              borderColor: "#9b51e0",
              data: [
                120, 160, 150, 140, 165, 210, 135, 155, 170, 140, 130, 200,
              ],
              pointBackgroundColor: "transparent",
              pointHoverBackgroundColor: "#9b51e0",
              pointBorderColor: "transparent",
              pointHoverBorderColor: "#9b51e0",
              pointHoverBorderWidth: 3,
              pointBorderWidth: 5,
              pointRadius: 5,
              pointHoverRadius: 8,
              fill: false,
              tension: 0.4,
            },
            {
              label: "Order",
              backgroundColor: "transparent",
              borderColor: "#f2994a",
              data: [180, 110, 140, 135, 100, 90, 145, 115, 100, 110, 115, 150],
              pointBackgroundColor: "transparent",
              pointHoverBackgroundColor: "#f2994a",
              pointBorderColor: "transparent",
              pointHoverBorderColor: "#f2994a",
              pointHoverBorderWidth: 3,
              pointBorderWidth: 5,
              pointRadius: 5,
              pointHoverRadius: 8,
              fill: false,
              tension: 0.4,
            },
          ],
        },
        options: {
          plugins: {
            tooltip: {
              intersect: false,
              backgroundColor: "#fbfbfb",
              titleColor: "#8F92A1",
              bodyColor: "#272727",
              titleFont: {
                size: 16,
                family: "Plus Jakarta Sans",
                weight: "400",
              },
              bodyFont: {
                family: "Plus Jakarta Sans",
                size: 16,
              },
              multiKeyBackground: "transparent",
              displayColors: false,
              padding: {
                x: 30,
                y: 15,
              },
              borderColor: "rgba(143, 146, 161, .1)",
              borderWidth: 1,
              enabled: true,
            },
            title: {
              display: false,
            },
            legend: {
              display: false,
            },
          },
          layout: {
            padding: {
              top: 0,
            },
          },
          responsive: true,
          // maintainAspectRatio: false,
          legend: {
            display: false,
          },
          scales: {
            y: {
              grid: {
                display: false,
                drawTicks: false,
                drawBorder: false,
              },
              ticks: {
                padding: 35,
              },
              max: 350,
              min: 50,
            },
            x: {
              grid: {
                drawBorder: false,
                color: "rgba(143, 146, 161, .1)",
                drawTicks: false,
                zeroLineColor: "rgba(143, 146, 161, .1)",
              },
              ticks: {
                padding: 20,
              },
            },
          },
        },
      });
      // =========== chart three end

      // ================== chart four start
      const ctx4 = document.getElementById("Chart4").getContext("2d");
      const chart4 = new Chart(ctx4, {
        type: "bar",
        data: {
          labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun"],
          datasets: [
            {
              label: "",
              backgroundColor: "#365CF5",
              borderColor: "transparent",
              borderRadius: 20,
              borderWidth: 5,
              barThickness: 20,
              maxBarThickness: 20,
              data: [600, 700, 1000, 700, 650, 800],
            },
            {
              label: "",
              backgroundColor: "#d50100",
              borderColor: "transparent",
              borderRadius: 20,
              borderWidth: 5,
              barThickness: 20,
              maxBarThickness: 20,
              data: [690, 740, 720, 1120, 876, 900],
            },
          ],
        },
        options: {
          plugins: {
            tooltip: {
              backgroundColor: "#F3F6F8",
              titleColor: "#8F92A1",
              titleFontSize: 12,
              bodyColor: "#171717",
              bodyFont: {
                weight: "bold",
                size: 16,
              },
              multiKeyBackground: "transparent",
              displayColors: false,
              padding: {
                x: 30,
                y: 10,
              },
              bodyAlign: "center",
              titleAlign: "center",
              enabled: true,
            },
            legend: {
              display: false,
            },
          },
          layout: {
            padding: {
              top: 0,
            },
          },
          responsive: true,
          // maintainAspectRatio: false,
          title: {
            display: false,
          },
          scales: {
            y: {
              grid: {
                display: false,
                drawTicks: false,
                drawBorder: false,
              },
              ticks: {
                padding: 35,
                max: 1200,
                min: 0,
              },
            },
            x: {
              grid: {
                display: false,
                drawBorder: false,
                color: "rgba(143, 146, 161, .1)",
                zeroLineColor: "rgba(143, 146, 161, .1)",
              },
              ticks: {
                padding: 20,
              },
            },
          },
        },
      });
      // =========== chart four end

      // =========== theme change
      const lightThemeColors = {
        darkBorder: "rgba(143, 146, 161, .1)",
        darkColor: "#5A6A85",
      };

      const darkThemeColors = {
        darkBorder: "#2b2b42",
        darkColor: "#838C9A",
      };

      // Function to apply theme colors to the chart
      function applyThemeColors(themeColors) {
        chart1.options.scales.y.grid.color = themeColors.darkBorder;
        chart1.options.scales.y.grid.borderColor = themeColors.darkBorder;
        chart1.options.scales.x.ticks.color = themeColors.darkColor;
        chart1.options.scales.y.ticks.color = themeColors.darkColor;

        chart2.options.scales.y.grid.color = themeColors.darkBorder;
        chart2.options.scales.y.grid.borderColor = themeColors.darkBorder;
        chart2.options.scales.x.ticks.color = themeColors.darkColor;
        chart2.options.scales.y.ticks.color = themeColors.darkColor;

        chart3.options.scales.y.grid.color = themeColors.darkBorder;
        chart3.options.scales.y.grid.borderColor = themeColors.darkBorder;
        chart3.options.scales.x.ticks.color = themeColors.darkColor;
        chart3.options.scales.y.ticks.color = themeColors.darkColor;

        chart4.options.scales.y.grid.color = themeColors.darkBorder;
        chart4.options.scales.y.grid.borderColor = themeColors.darkBorder;
        chart4.options.scales.x.ticks.color = themeColors.darkColor;
        chart4.options.scales.y.ticks.color = themeColors.darkColor;

        chart1.update();
        chart2.update();
        chart3.update();
        chart4.update();
      }

      const darkThemeButton = document.querySelector(".darkThemeButton");
      const lightThemeButton = document.querySelector(".lightThemeButton");

      // Check if the user has a saved theme preference
      const savedTheme = localStorage.getItem("theme");

      // Check the saved theme preference and apply appropriate colors
      if (savedTheme === "dark") {
        applyThemeColors(darkThemeColors);
      } else {
        applyThemeColors(lightThemeColors);
      }

      // Event listeners for theme buttons
      darkThemeButton.addEventListener("click", () => {
        applyThemeColors(darkThemeColors);
      });

      lightThemeButton.addEventListener("click", () => {
        applyThemeColors(lightThemeColors);
      });
    </script>

</body>
</html>
