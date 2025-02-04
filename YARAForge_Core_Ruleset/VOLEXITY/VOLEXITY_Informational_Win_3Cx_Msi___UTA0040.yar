rule VOLEXITY_Informational_Win_3Cx_Msi___UTA0040
{
	meta:
		description = "Detects 3CX installers created in March 2023, 3CX was known to be compromised at this time."
		author = "threatintel@volexity.com"
		id = "ac26e7b1-61eb-5074-bcda-46d714bdba4c"
		date = "2023-03-30"
		modified = "2023-03-30"
		reference = "https://www.reddit.com/r/crowdstrike/comments/125r3uu/20230329_situational_awareness_crowdstrike/"
		source_url = "https://github.com/volexity/threat-intel/blob/af57cbbbd67525bf8ba24e1df4797799165b6f83/2023/2023-03-30 3CX/indicators/rules.yar#L134-L152"
		license_url = "https://github.com/volexity/threat-intel/blob/af57cbbbd67525bf8ba24e1df4797799165b6f83/LICENSE.txt"
		logic_hash = "c04de2653ef587f27c7ebf058c6f6c345e16b67f36ccc4306bc49f8c4394728e"
		score = 75
		quality = 80
		tags = ""
		hash1 = "aa124a4b4df12b34e74ee7f6c683b2ebec4ce9a8edcf9be345823b4fdcf5d868"
		memory_suitable = 0
		license = "See license at https://github.com/volexity/threat-intel/blob/main/LICENSE.txt"

	strings:
		$cert = { 1B 66 11 DF 9C 9A 4D 6E CC 8E D5 0C 9B 91 78 73 }
		$app = "3CXDesktopApp.exe"
		$data = "202303"

	condition:
		all of them
}