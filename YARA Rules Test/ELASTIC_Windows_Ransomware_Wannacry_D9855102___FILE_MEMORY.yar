rule ELASTIC_Windows_Ransomware_Wannacry_D9855102___FILE_MEMORY
{
	meta:
		description = "Detects Windows Ransomware Wannacry (Windows.Ransomware.WannaCry)"
		author = "Elastic Security"
		id = "d9855102-56dc-4e4c-9599-82fa52922b95"
		date = "2022-08-29"
		modified = "2022-09-29"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Windows_Ransomware_WannaCry.yar#L1-L26"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "0b7878babbaf7c63d808f3ce32c7306cb785fdfb1ceb73be07fb48fdd091fdfb"
		logic_hash = "5edf6a42c9f20de3819b46f24be243940b79e7e9004fee3d601794ea0b534cf1"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "f96f2f0eb3cdf6e882adcad06ad10e375412dec99687b3d38d4dbe9bdde52db5"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "windows"

	strings:
		$a1 = "@WanaDecryptor@.exe" wide fullword
		$a2 = ".WNCRY" wide fullword
		$a3 = "$%d worth of bitcoin" fullword
		$a4 = "%d%d.bat" fullword
		$a5 = "This folder protects against ransomware. Modifying it will reduce protection" wide fullword
		$b1 = { 53 55 56 57 FF 15 D0 70 00 10 8B E8 A1 8C DD 00 10 85 C0 75 6A 68 B8 0B 00 00 FF 15 70 70 00 10 }
		$b2 = { A1 90 DD 00 10 53 56 57 85 C0 75 3E 8B 1D 60 71 00 10 8B 3D 70 70 00 10 6A 00 FF D3 83 C4 04 A3 }
		$b3 = { 56 8B 74 24 08 57 8B 3D 70 70 00 10 56 E8 2E FF FF FF 83 C4 04 A3 8C DD 00 10 85 C0 75 09 68 88 }

	condition:
		5 of ($a*) or 1 of ($b*)
}