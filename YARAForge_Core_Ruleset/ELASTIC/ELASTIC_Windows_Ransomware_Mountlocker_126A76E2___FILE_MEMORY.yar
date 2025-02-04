rule ELASTIC_Windows_Ransomware_Mountlocker_126A76E2___FILE_MEMORY
{
	meta:
		description = "Detects Windows Ransomware Mountlocker (Windows.Ransomware.Mountlocker)"
		author = "Elastic Security"
		id = "126a76e2-8a97-4347-ac36-9437a512e16c"
		date = "2021-06-10"
		modified = "2021-08-23"
		reference = "https://github.com/elastic/protections-artifacts/"
		source_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/yara/rules/Windows_Ransomware_Mountlocker.yar#L1-L23"
		license_url = "https://github.com/elastic/protections-artifacts//blob/8b6b3b3977b462ae1c68ae8756c095b6bcba2da6/LICENSE.txt"
		hash = "4a5ac3c6f8383cc33c795804ba5f7f5553c029bbb4a6d28f1e4d8fb5107902c1"
		logic_hash = "5a5e157a245a75033abbe6bc7aa66fe6af6d91dc30abe1fdadce85f8f3905b1e"
		score = 75
		quality = 75
		tags = "FILE, MEMORY"
		fingerprint = "08213f4474c7c8fd7a6e59c9ff139fb45f224109ad4e6162c12cff5ac85cb10c"
		severity = 100
		arch_context = "x86"
		scan_context = "file, memory"
		license = "Elastic License v2"
		os = "windows"

	strings:
		$a1 = "[SKIP] locker.dir.check > black_list name=%s" wide fullword
		$a2 = "[OK] locker.dir.check > name=%s" wide fullword
		$a3 = "[ERROR] locker.worm > execute pcname=%s" wide fullword
		$a4 = "[INFO] locker.work.enum.net_drive > enum finish name=%s" wide fullword
		$a5 = "[WARN] locker.work.enum.server_shares > logon on server error=%u pcname=%s" wide fullword

	condition:
		any of them
}