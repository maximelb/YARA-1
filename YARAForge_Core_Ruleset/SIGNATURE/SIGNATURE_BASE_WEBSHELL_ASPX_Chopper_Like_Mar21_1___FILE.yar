rule SIGNATURE_BASE_WEBSHELL_ASPX_Chopper_Like_Mar21_1___FILE
{
	meta:
		description = "Detects Chopper like ASPX Webshells"
		author = "Florian Roth (Nextron Systems)"
		id = "a4dc1880-865f-5e20-89a2-3a642c453ef9"
		date = "2021-03-31"
		modified = "2023-12-05"
		reference = "Internal Research"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_hafnium.yar#L399-L416"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "baa9eb1e3c4ac5ce49d27b1c3f75c8b6590567e25d98761a8b704478f2cee970"
		score = 85
		quality = 85
		tags = "FILE"
		hash1 = "ac44513e5ef93d8cbc17219350682c2246af6d5eb85c1b4302141d94c3b06c90"

	strings:
		$s1 = "http://f/<script language=\"JScript\" runat=\"server\">var _0x" ascii
		$s2 = "));function Page_Load(){var _0x" ascii
		$s3 = ";eval(Request[_0x" ascii
		$s4 = "','orange','unsafe','" ascii

	condition:
		filesize <3KB and 1 of them or 2 of them
}