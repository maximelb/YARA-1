rule SIGNATURE_BASE_Webshell_C99_Generic
{
	meta:
		description = "Semi-Auto-generated "
		author = "Neo23x0 Yara BRG + customization by Stefan -dfate- Molls"
		id = "393e738a-b4c2-5630-a55f-c3caee4ff75e"
		date = "2023-12-05"
		modified = "2023-12-05"
		reference = "https://github.com/Neo23x0/signature-base"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/thor-webshells.yar#L5068-L5088"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		logic_hash = "422bc3a0d9b04b1e37ad954faacb1ec7841fe529c1eb19634bdbfe83da374c73"
		score = 75
		quality = 85
		tags = ""
		super_rule = 1
		hash0 = "38a3f9f2aa47c2e940695f3dba6a7bb2"
		hash1 = "3ca5886cd54d495dc95793579611f59a"
		hash2 = "9c5bb5e3a46ec28039e8986324e42792"
		hash3 = "d8ae5819a0a2349ec552cbcf3a62c975"
		hash4 = "9e9ae0332ada9c3797d6cee92c2ede62"
		hash5 = "09609851caa129e40b0d56e90dfc476c"
		hash6 = "671cad517edd254352fe7e0c7c981c39"

	strings:
		$s0 = "  if ($copy_unset) {foreach($sess_data[\"copy\"] as $k=>$v) {unset($sess_data[\""
		$s1 = "  if (file_exists($mkfile)) {echo \"<b>Make File \\\"\".htmlspecialchars($mkfile"
		$s2 = "  echo \"<center><b>MySQL \".mysql_get_server_info().\" (proto v.\".mysql_get_pr"
		$s3 = "  elseif (!fopen($mkfile,\"w\")) {echo \"<b>Make File \\\"\".htmlspecialchars($m"

	condition:
		all of them
}