rule SIGNATURE_BASE_CACTUSTORCH___FILE
{
	meta:
		description = "Detects CactusTorch Hacktool"
		author = "Florian Roth (Nextron Systems)"
		id = "75606b9e-97d5-5b8b-87f5-69b7e415b73c"
		date = "2017-07-31"
		modified = "2023-12-05"
		reference = "https://github.com/mdsecactivebreach/CACTUSTORCH"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_gen_cactustorch.yar#L11-L45"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "265287b27aa13840366dbb51ea58b2fdd10e0a57ff27d8deb52ff77dd71c26ad"
		score = 75
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE"
		hash1 = "314e6d7d863878b6dca46af165e7f08fedd42c054d7dc3828dc80b86a3a9b98c"
		hash2 = "0305aa32d5f8484ca115bb4888880729af7f33ac99594ec1aa3c65644e544aea"
		hash3 = "a52d802e34ac9d7d3539019d284b04ded3b8e197d5e3b38ed61f523c3d68baa7"

	strings:
		$x1 = "$payload = shellcode(%options[\"listener\"], \"true\", \"x86\");" fullword ascii
		$x2 = "Copy the base64 encoded payload into the code variable below." fullword ascii
		$x3 = " CACTUSTORCH Payload" ascii
		$x4 = "ms.Write transform.TransformFinalBlock(enc.GetBytes_4(b), 0, length), 0, ((length / 4) * 3)" fullword ascii
		$x5 = "' Author: Vincent Yiu (@vysecurity)" fullword ascii
		$x6 = "Dim binary : binary = \"rundll32.exe\"" fullword ascii
		$a1 = "code = code & \"" ascii
		$a2 = "serialized_obj = serialized_obj & \"" ascii
		$s1 = "binary = \"rundll32.exe\"" fullword ascii
		$s2 = "EL.DataType = \"bin.hex\"" fullword ascii
		$s3 = "Set stm = CreateObject(\"System.IO.MemoryStream\")" fullword ascii
		$s4 = "var binary = \"rundll32.exe\";" fullword ascii
		$s5 = "var serialized_obj = \"" ascii

	condition:
		( filesize <800KB and (1 of ($x*) or (1 of ($a*) and 1 of ($s*)))) or (3 of them )
}