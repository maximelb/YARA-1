rule ELASTIC_Windows_Trojan_Powerseal_2E50F393___FILE_MEMORY
{
	meta:
		description = "Detects Windows Trojan Powerseal (Windows.Trojan.PowerSeal)"
		author = "Elastic Security"
		id = "2e50f393-40c0-49f7-882e-33f914eff32d"
		date = "2023-05-10"
		modified = "2023-06-13"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Windows_Trojan_PowerSeal.yar#L23-L42"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		logic_hash = "3ca1d4568fea7b2e4e9d30ba03662a2c28ee8623d887a0336e27989b5c98b55f"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "9b7beb5af64bc57d78cfb8f5bf8134461d8f2fbe7c935a0fa2b44fb51160a28d"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "windows"

	strings:
		$a1 = "[+] Loading PowerSeal"
		$a2 = "[!] Failed to exec PowerSeal"
		$a3 = "AppDomain: unable to get the name!"

	condition:
		2 of them
}