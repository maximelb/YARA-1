rule SIGNATURE_BASE_APT_Sandworm_User_May20_1___FILE
{
	meta:
		description = "Detects user added by Sandworm on compromised machines"
		author = "Florian Roth (Nextron Systems)"
		id = "ada549a4-abcc-5c0a-9601-75631e78c835"
		date = "2020-05-28"
		modified = "2023-12-05"
		reference = "https://media.defense.gov/2020/May/28/2002306626/-1/-1/0/CSA%20Sandworm%20Actors%20Exploiting%20Vulnerability%20in%20Exim%20Transfer%20Agent%2020200528.pdf"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/apt_sandworm_exim_expl.yar#L68-L84"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "d052792a674dfa2d93a048b550ea085c3b9225662fdb09bf4a602093b0527e38"
		score = 75
		quality = 85
		tags = "FILE"
		hash1 = "dc074464e50502459038ac127b50b8c68ed52817a61c2f97f0add33447c8f730"
		hash2 = "538d713cb47a6b5ec6a3416404e0fc1ebcbc219a127315529f519f936420c80e"

	strings:
		$s1 = "mysql_db:x:" ascii
		$a1 = "root:x:"
		$a2 = "daemon:x:"

	condition:
		filesize <4KB and all of them
}