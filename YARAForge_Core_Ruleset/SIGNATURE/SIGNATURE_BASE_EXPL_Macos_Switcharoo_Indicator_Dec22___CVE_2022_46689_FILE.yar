rule SIGNATURE_BASE_EXPL_Macos_Switcharoo_Indicator_Dec22___CVE_2022_46689_FILE
{
	meta:
		description = "Detects indicators found after exploitations of CVE-2022-46689"
		author = "Florian Roth (Nextron Systems)"
		id = "d5d9559a-c19c-5ddc-9d72-701986a9d7ac"
		date = "2022-12-19"
		modified = "2023-12-05"
		reference = "https://github.com/zhuowei/MacDirtyCowDemo"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/expl_macos_switcharoo_dec22.yar#L42-L54"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "9b9ea134fc4b3a7b15ae585ced2e12cbe1defc54bc6175282d6b7a2a0b65abd1"
		score = 65
		quality = 85
		tags = "CVE-2022-46689, FILE"

	strings:
		$x1 = "auth       sufficient     pam_permit.so" ascii

	condition:
		filesize <1KB and $x1
}