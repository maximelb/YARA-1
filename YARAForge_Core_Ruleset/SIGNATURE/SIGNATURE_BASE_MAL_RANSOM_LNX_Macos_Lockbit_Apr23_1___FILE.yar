rule SIGNATURE_BASE_MAL_RANSOM_LNX_Macos_Lockbit_Apr23_1___FILE
{
	meta:
		description = "Detects LockBit ransomware samples for Linux and macOS"
		author = "Florian Roth"
		id = "c01cb907-7d30-5487-b908-51f69ddb914c"
		date = "2023-04-15"
		modified = "2023-12-05"
		reference = "https://twitter.com/malwrhunterteam/status/1647384505550876675?s=20"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/mal_lockbit_lnx_macos_apr23.yar#L2-L41"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "6d838e8b207b97d7c335dc4066de2c6dc87f7adc9cac31742677edbe85386cf7"
		score = 85
		quality = 85
		tags = "FILE"
		hash1 = "0a2bffa0a30ec609d80591eef1d0994d8b37ab1f6a6bad7260d9d435067fb48e"
		hash2 = "9ebcbaf3c9e2bbce6b2331238ab584f95f7ced326ca4aba2ddcc8aa8ee964f66"
		hash3 = "a405d034c01a357a89c9988ffe8a46a165915df18fd297469b2bcaaf97578442"
		hash4 = "c9cac06c9093e9026c169adc3650b018d29c8b209e3ec511bbe34cbe1638a0d8"
		hash5 = "dc3d08480f5e18062a0643f9c4319e5c3f55a2e7e93cd8eddd5e0c02634df7cf"
		hash6 = "e77124c2e9b691dbe41d83672d3636411aaebc0aff9a300111a90017420ff096"
		hash7 = "0be6f1e927f973df35dad6fc661048236d46879ad59f824233d757ec6e722bde"
		hash8 = "3e4bbd21756ae30c24ff7d6942656be024139f8180b7bddd4e5c62a9dfbd8c79"

	strings:
		$x1 = "restore-my-files.txt" ascii fullword
		$s1 = "ntuser.dat.log" ascii fullword
		$s2 = "bootsect.bak" ascii fullword
		$s3 = "autorun.inf" ascii fullword
		$s4 = "lockbit" ascii fullword
		$xc1 = { 33 38 36 00 63 6D 64 00 61 6E 69 00 61 64 76 00 6D 73 69 00 6D 73 70 00 63 6F 6D 00 6E 6C 73 }
		$xc2 = { 6E 74 6C 64 72 00 6E 74 75 73 65 72 2E 64 61 74 2E 6C 6F 67 00 62 6F 6F 74 73 65 63 74 2E 62 61 6B }
		$xc3 = { 76 6D 2E 73 74 61 74 73 2E 76 6D 2E 76 5F 66 72 65 65 5F 63 6F 75 6E 74 00 61 2B 00 2F 2A }
		$op1 = { 84 e5 f0 00 f0 e7 10 40 2d e9 2e 10 a0 e3 00 40 a0 e1 ?? fe ff }
		$op2 = { 00 90 a0 e3 40 20 58 e2 3f 80 08 e2 3f 30 c2 e3 09 20 98 e1 08 20 9d }
		$op3 = { 2d e9 01 70 43 e2 07 00 13 e1 01 60 a0 e1 08 d0 4d e2 02 40 }

	condition:
		( uint32be(0)==0x7f454c46 or uint16(0)==0xfeca or uint16(0)==0xfacf or uint32(0)==0xbebafeca) and (1 of ($x*) or 3 of them ) or 2 of ($x*) or 5 of them
}