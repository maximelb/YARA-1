rule SIGNATURE_BASE_EXPL_Gitlab_CE_RCE_Malformed_JPG_CVE_2021_22204___CVE_2021_22204_CVE_2021_22205_FILE
{
	meta:
		description = "Detects malformed JPG files exploting EXIF vulnerability CVE-2021-22204 and used in the exploitation of GitLab vulnerability CVE-2021-22205"
		author = "Florian Roth (Nextron Systems)"
		id = "3d769340-0306-596d-8783-2b37b93a5673"
		date = "2021-10-26"
		modified = "2023-12-05"
		reference = "https://attackerkb.com/topics/D41jRUXCiJ/cve-2021-22205/rapid7-analysis?referrer=blog"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/exploit_gitlab_cve_2021_22205.yar#L29-L44"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "0718ad24337acbb746c6e0d7e0b42d2d034ff583ec6fd12b34fda4737d7e78b0"
		score = 70
		quality = 83
		tags = "CVE-2021-22204, CVE-2021-22205, FILE"

	strings:
		$h1 = { 41 54 26 54 46 4F 52 4D }
		$sr1 = /\(metadata[\s]{0,3}\([A-Za-z]{1,20} "\\/

	condition:
		filesize <10KB and $h1 and $sr1
}