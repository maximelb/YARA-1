rule ELASTIC_Linux_Hacktool_Infectionmonkey_6C84537B___FILE_MEMORY
{
	meta:
		description = "Detects Linux Hacktool Infectionmonkey (Linux.Hacktool.Infectionmonkey)"
		author = "Elastic Security"
		id = "6c84537b-6aa1-40d5-b14c-f78d7e67823d"
		date = "2022-01-05"
		modified = "2022-01-26"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Linux_Hacktool_Infectionmonkey.yar#L1-L19"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "d941943046db48cf0eb7f11e144a79749848ae6b50014833c5390936e829f6c3"
		logic_hash = "24cb368040fffe2743d0361a955d45a62a95a31c1744f3de15089169e365bb89"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "e9275f5fd8df389a4c99f69c09df1e3e515d8b958616e6d4d2c82d693deb4908"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "linux"

	strings:
		$a = { 75 14 8B 54 24 0C 83 FA FF 0F 44 D0 83 C4 1C 89 D0 C3 8D 74 }

	condition:
		all of them
}