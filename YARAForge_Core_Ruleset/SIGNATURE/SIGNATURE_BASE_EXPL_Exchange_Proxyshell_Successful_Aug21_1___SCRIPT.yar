rule SIGNATURE_BASE_EXPL_Exchange_Proxyshell_Successful_Aug21_1___SCRIPT
{
	meta:
		description = "Detects successful ProxyShell exploitation attempts in log files"
		author = "Florian Roth (Nextron Systems)"
		id = "8c11cd1a-6d3f-5f29-af61-17179b01ca8b"
		date = "2021-08-08"
		modified = "2021-08-09"
		reference = "https://blog.orange.tw/2021/08/proxylogon-a-new-attack-surface-on-ms-exchange-part-1.html"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/expl_proxyshell.yar#L18-L34"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "06ab609a8efe3b36b6356a9cf7b7b11b2fc2a556ec1df6995008a9df86b3fcee"
		score = 85
		quality = 83
		tags = ""

	strings:
		$xr1a = / \/autodiscover\/autodiscover\.json[^\n]{1,300}\/(powershell|X-Rps-CAT)/ nocase ascii
		$xr1b = / \/autodiscover\/autodiscover\.json[^\n]{1,300}\/(mapi\/nspi|EWS\/)[^\n]{1,400}(200|302) 0 0/
		$xr2 = /autodiscover\/autodiscover\.json[^\n]{1,60}&X-Rps-CAT=/ nocase ascii
		$xr3 = /Email=autodiscover\/autodiscover\.json[^\n]{1,400}200 0 0/ nocase ascii

	condition:
		1 of them
}