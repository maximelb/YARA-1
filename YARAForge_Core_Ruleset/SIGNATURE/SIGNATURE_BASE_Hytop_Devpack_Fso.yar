rule SIGNATURE_BASE_Hytop_Devpack_Fso
{
	meta:
		description = "Webshells Auto-generated - file fso.asp"
		author = "Florian Roth (Nextron Systems)"
		id = "094eeff9-0da0-5a44-a45c-f8ee57861e7a"
		date = "2023-12-05"
		modified = "2023-12-05"
		reference = "https://github.com/Neo23x0/signature-base"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/thor-webshells.yar#L7135-L7147"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		hash = "b37f3cde1a08890bd822a182c3a881f6"
		logic_hash = "9d071c1e2e0725091a2abe24759e6e71d78e29caa76b4fff77c44e3bb381b1a2"
		score = 75
		quality = 85
		tags = ""
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"

	strings:
		$s0 = "<!-- PageFSO Below -->"
		$s1 = "theFile.writeLine(\"<script language=\"\"vbscript\"\" runat=server>if request(\"\"\"&cli"

	condition:
		all of them
}