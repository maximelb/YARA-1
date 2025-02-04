rule SIGNATURE_BASE_SUSP_Imphash_Mar23_2___HIGHVOL_FILE
{
	meta:
		description = "Detects imphash often found in malware samples (Zero hits with with search for 'imphash:x p:0' on Virustotal)"
		author = "Arnim Rupp (https://github.com/ruppde)"
		id = "b739d540-5d9f-53b3-9e42-a514dc972e8d"
		date = "2023-03-23"
		modified = "2023-11-25"
		reference = "Internal Research"
		source_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/yara/gen_imphash_detection.yar#L194-L295"
		license_url = "https://github.com/Neo23x0/signature-base/blob/1985dee16d61c60c9970e213ad2ef57039eaa1d5/LICENSE"
		hash = "12bf2795f4a140adbaa0af6ad4b2508d398d8ba69e9dadb155f800b10f7458c4"
		hash = "14ec56489fbcc3c7f1ef9a4d4a80ff302a5e233cdc4429a29c635a88fb1278d6"
		hash = "13731912823d6ce01c28a8d7d7f961505f461620bb35adbb409d4954ba1f4b8e"
		hash = "15e59cc5d7b83e63d40dbfd8406701cb4decd31353f68fda47238d073c87e4ea"
		hash = "13e5bb40be20b1a0bc28081ce7798f339c28c9652cb37b538c29872dfd0cd51d"
		hash = "16f963afdb30b38ba4b8b98ce56a37626e9fd87de9eba5f9903d2ba7f8a77788"
		hash = "168f22d02304ce66be88d2370c8fa7c7d9aa2ccf80f8e376edfeabfc9b96c73d"
		hash = "9e7701450dbcbd35083e34df935bd77a95735c4b441e0fc8eacd543a621f2fa5"
		hash = "51205c100702b21cce600692d69f3b108f49228e53f36678dd8b39434406526b"
		hash = "c9b48e8b0e7c6fa75886554659bc0529e454d84b29daa07bd4323aca9a33f607"
		hash = "ba5c06703bd3c093afa89e45d86aaf6c151fbaef44ebf3b65c97f3b376a88c72"
		hash = "7281afc138e8e898aee16d415cd02a29dc5dedda5b11c23934aac0ebd208373b"
		hash = "10a091b2468a8286f7b1a580d8923aef48856b43014e849035f05c4dbdc0a413"
		hash = "56c04e76427bd982be83799d0a435732193d7bf5a70cdeba5eb63eaf0d4ebb77"
		hash = "0aa8b7eddc4792a82f247702442c04e50173bd7712a4b596545916480942853b"
		hash = "627f043ad875c182682149653363b7f856dd618d169821b18df7bc9cdf6269d8"
		hash = "e1df460fd99c4f901859f3a8ec23b041ba9f4b79897dec349a96d6a27fb3e335"
		hash = "f10ecbd8031ce85b782c59682ff32301a65e0975687977688771f1057fb063d1"
		hash = "1bc7b8932b5b077b359c79e7ca664938b7a487a4e7e6b99d6647d6803bc677c5"
		hash = "01f81029a5e93cbfecfbc81cbd4a2ffd1bb1b6159e2a144a21e58caf8dab9661"
		hash = "cd33a71f71e2971667bacb0da71f2d36073777993b9581ec90bbf042162c3530"
		hash = "4aab991149cb2dc8c0c0a323af3acbbd73d6a22177910ef3af92b05ae7c9ae7b"
		hash = "df05fa3983c9e623388231d366dba4e435575ca53421d3f0bcb0fb346dd971d4"
		hash = "14de3584fe7108386f7637c2bd343f30341c0fa2102d52bb35ee772b5b7672f0"
		hash = "c4d9ad5cffd9aa13dfe3acbf0905810e28ff96d231541d7e209327ca5b0b24fe"
		hash = "5e0bed2269dc34c6cc2db30b0a53282e6debb85b3c90a857d1be4cfd06312211"
		hash = "3aa13e72382a2d7da592273b8c18a42106b65db528e16b6066646812e81555c4"
		hash = "244c4a930e3644ffb96bf3ab33e8c8c0f94ed9fe6a8b2fc45fc8e9b6471ef3a8"
		hash = "f00848b8edeeb5a668bf7e89e3f33f438b2f5d5cf130596a8ed2531e21be6d81"
		hash = "5b9348c24ff604e78d70464654e645b90dc695c7e0415959c443fe29cebc3c4e"
		logic_hash = "c6482cbc01a880ffd3056d28a2fde8f87402b1f85d36075c1f0b50788d469ca3"
		score = 65
		quality = 85
		tags = "FILE"
		license = "Detection Rule License 1.1 https://github.com/SigmaHQ/Detection-Rule-License"

	condition:
		uint16(0)==0x5A4D and (pe.imphash()=="e4290fa6afc89d56616f34ebbd0b1f2c" or pe.imphash()=="8abecba2211e61763c4c9ffcaa13369e" or pe.imphash()=="a64e048b98d051ae6e6b6334f77c95d3" or pe.imphash()=="359d89624a26d1e756c3e9d6782d6eb0" or pe.imphash()=="c2a87fabf96470db507b2e6b43bd92eb" or pe.imphash()=="62ec3dce1eba1b68f6a4511bb09f8c2c" or pe.imphash()=="5662cfcdfd9da29cb429e7528d5af81e" or pe.imphash()=="406c785a6e2c6970c1e8ed62877e197b" or pe.imphash()=="dbf687d6aa2a6cafe4349f7b0821a792" or pe.imphash()=="6dca3e9fb3928bbdb54dbce669943ec8" or pe.imphash()=="f1a539a5b71ad53ac586f053145f08ec" or pe.imphash()=="3a2003ea545fe942681da9e7683ebb58" or pe.imphash()=="a8286b574ff850cd002ea6282d15aa40" or pe.imphash()=="3c8577ca4bab2f95cc6fc73ef1895288" or pe.imphash()=="84706849fa809feaa385711a628be029" or pe.imphash()=="ba23a556ac1d6444f7f76feafd6c8867" or pe.imphash()=="95e6f8741083e0c7d9a63d45e2472360" or pe.imphash()=="774d797db707398fd2ef1979d02634d5" or pe.imphash()=="8c16c795b57934183422be5f6df7d891" or pe.imphash()=="98f67c550a7da65513e63ffd998f6b2e" or pe.imphash()=="e836076a09dba03e4d6faa46dda0fefc" or pe.imphash()=="ff63dc9c65eb25911a9bc535c8f06ad0" or pe.imphash()=="08b67a9663d3a8c9505f3b2561bbdd1c" or pe.imphash()=="135e92fc9902f3140f2e5a51458efdf0" or pe.imphash()=="4753904c40d638a1bc745c65b88291d5" or pe.imphash()=="0f44bf2b3b0b8d5ecae5689ff1d0e90d" or pe.imphash()=="c4c9ecfc26ca516a80b8f6f5b2bdb7e6" or pe.imphash()=="46ad3d954e527f769e37017b3e128039" or pe.imphash()=="802dcac7aab948c19738ba3df9f356d9" or pe.imphash()=="b36a21279375c40e6f4c1ea347f906de" or pe.imphash()=="77a185e903c5527243ef219b003bfd38" or pe.imphash()=="12a30b523ac71a3cbe9145c89400dd7f" or pe.imphash()=="cc40fefa3af5cd00cc28dbd874038a4d" or pe.imphash()=="3d8c26f4cb1782a87c3bb42796fb6b85" or pe.imphash()=="2f4ddcfebbcad3bacadc879747151f6f" or pe.imphash()=="76812f441b0ed9d3cc0748af25d689a3" or pe.imphash()=="9a06f0024c1694774ae97311608bab5b" or pe.imphash()=="481f47bbb2c9c21e108d65f52b04c448" or pe.imphash()=="286870a926664a5129b8b68ed0d4a8eb" or pe.imphash()=="a0db151d55761167d93eba72d3d94b32" or pe.imphash()=="663243fe4d94e1304b265ce4011cd01b" or pe.imphash()=="f24e64014af9015dc25262e5076fe61f" or pe.imphash()=="b7d08302c927428e16a2ad8d18b9d2b7" or pe.imphash()=="352063077f27a851dc2b08e15f08105e" or pe.imphash()=="b0b97d1a91a2730b3daa8bbb2e86b402" or pe.imphash()=="bc96f1c981700752dc2cf9553da99eb6" or pe.imphash()=="f68ddef5f29b66bbd543e947c8743bb0" or pe.imphash()=="6dfbc160505aa2f7205766eaa6fe72a1" or pe.imphash()=="a202429ffe8d8c8b722572cffd5681a7" or pe.imphash()=="342a3708d93b6b819b7b1a768201a747" or pe.imphash()=="cdc00badc7162acde9bb032e793ac137" or pe.imphash()=="be19e18d6a8b41631d40059031a928bb" or pe.imphash()=="0c54f96a844b02689687407de9b6663e" or pe.imphash()=="fa5f28e70130a452b7c0a51db5544ef9" or pe.imphash()=="2e5708ae5fed0403e8117c645fb23e5b" or pe.imphash()=="8d92fa1956a6a631c642190121740197" or pe.imphash()=="dc73a9bd8de0fd640549c85ac4089b87")
}