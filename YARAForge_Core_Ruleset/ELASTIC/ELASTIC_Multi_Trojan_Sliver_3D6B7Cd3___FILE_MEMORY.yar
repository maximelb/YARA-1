rule ELASTIC_Multi_Trojan_Sliver_3D6B7Cd3___FILE_MEMORY
{
	meta:
		description = "Detects Multi Trojan Sliver (Multi.Trojan.Sliver)"
		author = "Elastic Security"
		id = "3d6b7cd3-f702-470c-819c-8750ec040083"
		date = "2022-12-01"
		modified = "2023-09-20"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Multi_Trojan_Sliver.yar#L52-L88"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "9846124cfd124eed466465d187eeacb4d405c558dd84ba8e575d8a7b3290403e"
		logic_hash = "3cbd3358b7d59d6a2912069f4cb8de005b6fafd61e44111d1f6cf0418eb2d1fc"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "46d5388bd1fe767a4852c9e35420985d5011368dac6545fd57fbb256de9a94e9"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "multi"

	strings:
		$session_start_x86_1 = { 89 4C 24 ?? 89 44 24 ?? 8D 4C 24 ?? 89 4C 24 ?? C6 44 24 ?? ?? 89 04 24 E8 ?? ?? ?? ?? 8B 44 24 ?? 89 44 24 ?? C7 44 24 ?? ?? ?? ?? ?? }
		$session_start_x86_2 = { FF 05 ?? ?? ?? ?? 8D 05 ?? ?? ?? ?? 89 04 24 C7 44 24 ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B 44 24 ?? 8B 4C 24 ?? 85 C9 74 ?? B8 ?? ?? ?? ?? }
		$session_start_x86_3 = { E8 ?? ?? ?? ?? 8B 44 24 ?? 85 C0 74 ?? FF 05 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B 04 24 39 05 ?? ?? ?? ?? 7E ?? C6 44 24 ?? ?? 8B 54 24 ?? 8B 02 FF D0 83 C4 ?? }
		$session_start_x64_1 = { 44 0F 11 7C 24 ?? 48 8D 0D ?? ?? ?? ?? 48 89 4C 24 ?? 48 89 44 24 ?? 48 8D 4C 24 ?? 48 89 4C 24 ?? C6 44 24 ?? ?? 0F 1F 00 E8 ?? ?? ?? ?? 48 89 44 24 ?? 48 C7 44 24 ?? ?? ?? ?? ?? EB ?? E8 ?? ?? ?? ?? E8 ?? ?? ?? ?? }
		$session_start_x64_2 = { E8 ?? ?? ?? ?? 48 85 C0 74 ?? 48 FF 05 ?? ?? ?? ?? 48 8D 05 ?? ?? ?? ?? BB ?? ?? ?? ?? E8 ?? ?? ?? ?? 48 85 DB B9 ?? ?? ?? ?? 48 0F 45 C1 48 39 05 ?? ?? ?? ?? 7E ?? C6 44 24 ?? ?? 48 8B 54 24 ?? 48 8B 02 FF D0 }
		$session_start_x64_3 = { 48 89 6C 24 ?? 48 8D 6C 24 ?? 49 C7 C5 ?? ?? ?? ?? 4C 89 6C 24 ?? C6 44 24 ?? ?? 48 8D 05 ?? ?? ?? ?? 31 DB E8 ?? ?? ?? ?? 44 0F 11 7C 24 ?? 48 8D 0D ?? ?? ?? ?? 48 89 4C 24 ?? 48 89 44 24 ?? 48 8D 4C 24 ?? 48 89 4C 24 ?? C6 44 24 ?? ?? 0F 1F 00 }
		$register_x64_1 = { 48 81 EC ?? ?? ?? ?? 48 89 AC 24 ?? ?? ?? ?? 48 8D AC 24 ?? ?? ?? ?? 90 E8 ?? ?? ?? ?? 48 89 44 24 ?? 48 89 5C 24 ?? 48 89 4C 24 ?? 0F 1F 44 00 ?? E8 ?? ?? ?? ?? 48 8B 4C 24 ?? 48 85 C9 48 8B 4C 24 ?? BA ?? ?? ?? ?? 48 0F 45 CA 48 89 4C 24 ?? 48 8B 54 24 ?? BE ?? ?? ?? ?? 48 0F 45 D6 48 89 54 24 ?? }
		$register_x64_2 = { 48 8D 1D ?? ?? ?? ?? 48 89 9C 24 ?? ?? ?? ?? 48 C7 84 24 ?? ?? ?? ?? ?? ?? ?? ?? 48 89 9C 24 ?? ?? ?? ?? 48 C7 84 24 ?? ?? ?? ?? ?? ?? ?? ?? 48 89 9C 24 ?? ?? ?? ?? 48 C7 84 24 ?? ?? ?? ?? ?? ?? ?? ?? 48 8D 84 24 ?? ?? ?? ?? }
		$register_x64_3 = { E8 ?? ?? ?? ?? 48 89 84 24 ?? ?? ?? ?? 48 89 5C 24 ?? 48 89 4C 24 ?? 66 90 E8 ?? ?? ?? ?? 48 8B 4C 24 ?? 48 85 C9 48 8B 8C 24 ?? ?? ?? ?? BA ?? ?? ?? ?? 48 0F 45 CA 48 8B 54 24 ?? BE ?? ?? ?? ?? 48 0F 45 D6 48 85 DB 74 ?? 48 8D BC 24 ?? ?? ?? ?? 48 8D 7F ?? 0F 1F 00 48 89 6C 24 ?? 48 8D 6C 24 ?? }
		$register_x64_4 = { 48 89 84 24 ?? ?? ?? ?? 48 89 9C 24 ?? ?? ?? ?? 48 89 8C 24 ?? ?? ?? ?? E8 ?? ?? ?? ?? 48 8B 8C 24 ?? ?? ?? ?? 48 85 C9 48 8B 8C 24 ?? ?? ?? ?? BA ?? ?? ?? ?? 48 0F 45 CA 48 89 8C 24 ?? ?? ?? ?? 48 8B B4 24 ?? ?? ?? ?? BF ?? ?? ?? ?? 48 0F 45 F7 48 89 B4 24 ?? ?? ?? ?? }
		$register_x64_5 = { 48 89 84 24 ?? ?? ?? ?? 48 89 5C 24 ?? 48 89 4C 24 ?? E8 ?? ?? ?? ?? 48 8B 4C 24 ?? 48 85 C9 48 8B 8C 24 ?? ?? ?? ?? BA ?? ?? ?? ?? 48 0F 45 CA 48 89 8C 24 ?? ?? ?? ?? 48 8B 54 24 ?? BE ?? ?? ?? ?? 48 0F 45 D6 48 89 54 24 ?? }
		$register_x64_6 = { E8 ?? ?? ?? ?? 48 8B 6D ?? 48 8B 94 24 ?? ?? ?? ?? 48 89 94 24 ?? ?? ?? ?? 48 8B 94 24 ?? ?? ?? ?? 48 89 94 24 ?? ?? ?? ?? 48 8B 94 24 ?? ?? ?? ?? 48 89 94 24 ?? ?? ?? ?? 48 8B 54 24 ?? 48 89 94 24 ?? ?? ?? ?? 48 89 84 24 ?? ?? ?? ?? 48 89 9C 24 ?? ?? ?? ?? 48 8D 84 24 ?? ?? ?? ?? }
		$register_x64_7 = { E8 ?? ?? ?? ?? C7 40 ?? ?? ?? ?? ?? 48 8B 4C 24 ?? 48 89 48 ?? 48 8B 4C 24 ?? 48 89 48 ?? 83 3D ?? ?? ?? ?? ?? 75 ?? }
		$register_x64_8 = { 48 8D 7F ?? 0F 1F 00 48 89 6C 24 ?? 48 8D 6C 24 ?? E8 ?? ?? ?? ?? 48 8B 6D ?? 4C 8D 15 ?? ?? ?? ?? 4C 89 94 24 ?? ?? ?? ?? 48 C7 84 24 ?? ?? ?? ?? ?? ?? ?? ?? 4C 89 94 24 ?? ?? ?? ?? 48 C7 84 24 ?? ?? ?? ?? ?? ?? ?? ?? 4C 89 94 24 ?? ?? ?? ?? 48 C7 84 24 ?? ?? ?? ?? ?? ?? ?? ?? 48 8D 84 24 ?? ?? ?? ?? }
		$register_x86_1 = { E8 ?? ?? ?? ?? 8B 44 24 ?? 8B 0C 24 8B 54 24 ?? 85 C0 74 ?? 31 C9 31 D2 89 54 24 ?? 89 4C 24 ?? E8 ?? ?? ?? ?? 8B 04 24 8B 4C 24 ?? 85 C9 74 ?? 8D 7C 24 ?? }
		$register_x86_2 = { 8D 0D ?? ?? ?? ?? 89 4C 24 ?? C7 44 24 ?? ?? ?? ?? ?? 89 4C 24 ?? C7 44 24 ?? ?? ?? ?? ?? 89 4C 24 ?? C7 44 24 ?? ?? ?? ?? ?? 8D 44 24 ?? }
		$register_x86_3 = { C7 40 ?? ?? ?? ?? ?? 8D 0D ?? ?? ?? ?? 89 48 ?? 8B 4C 24 ?? 89 48 ?? 8B 4C 24 ?? 89 48 ?? 8B 0D ?? ?? ?? ?? 85 C9 75 ?? }
		$register_x86_4 = { E8 ?? ?? ?? ?? 8B 44 24 ?? 8B 0C 24 8B 54 24 ?? 85 C0 74 ?? 31 C9 31 D2 89 54 24 ?? 89 ?? 24 }
		$register_x86_5 = { 8B 04 24 89 84 24 ?? ?? ?? ?? 8B 4C 24 ?? 89 4C 24 ?? E8 ?? ?? ?? ?? 8B 04 24 8B 4C 24 ?? 8B 54 24 ?? 85 D2 74 ?? 31 C0 31 C9 89 4C 24 ?? 89 84 24 ?? ?? ?? ?? 8D 15 ?? ?? ?? ?? 89 14 24 E8 ?? ?? ?? ?? }

	condition:
		1 of ($session_start_*) and 1 of ($register_*)
}