; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [121 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [242 x i32] [
	i32 42639949, ; 0: System.Threading.Thread => 0x28aa24d => 113
	i32 67008169, ; 1: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 2: Microsoft.Maui.Graphics.dll => 0x44bb714 => 48
	i32 117431740, ; 3: System.Runtime.InteropServices => 0x6ffddbc => 104
	i32 165246403, ; 4: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 53
	i32 182336117, ; 5: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 71
	i32 195452805, ; 6: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 7: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 8: System.ComponentModel => 0xc38ff48 => 85
	i32 230752869, ; 9: Microsoft.CSharp.dll => 0xdc10265 => 78
	i32 280992041, ; 10: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 11: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 12: Xamarin.AndroidX.Activity.dll => 0x13031348 => 49
	i32 336156722, ; 13: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 14: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 60
	i32 356025578, ; 15: Report => 0x153884ea => 77
	i32 356389973, ; 16: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 379916513, ; 17: System.Threading.Thread.dll => 0x16a510e1 => 113
	i32 385762202, ; 18: System.Memory.dll => 0x16fe439a => 96
	i32 395744057, ; 19: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 20: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 21: System.Collections => 0x1a61054f => 82
	i32 450948140, ; 22: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 59
	i32 469710990, ; 23: System.dll => 0x1bff388e => 116
	i32 498788369, ; 24: System.ObjectModel => 0x1dbae811 => 101
	i32 500358224, ; 25: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 26: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 27: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 43
	i32 539058512, ; 28: Microsoft.Extensions.Logging => 0x20216150 => 40
	i32 592146354, ; 29: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 627609679, ; 30: Xamarin.AndroidX.CustomView => 0x2568904f => 57
	i32 627931235, ; 31: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 32: System.Text.Encodings.Web.dll => 0x27787397 => 110
	i32 672442732, ; 33: System.Collections.Concurrent => 0x2814a96c => 79
	i32 688181140, ; 34: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 706645707, ; 35: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 36: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 37: System.Runtime.Loader.dll => 0x2b15ed29 => 105
	i32 759454413, ; 38: System.Net.Requests => 0x2d445acd => 99
	i32 775507847, ; 39: System.IO.Compression => 0x2e394f87 => 93
	i32 777317022, ; 40: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 41: Microsoft.Extensions.Options => 0x2f0980eb => 42
	i32 804715423, ; 42: System.Data.Common => 0x2ff6fb9f => 87
	i32 823281589, ; 43: System.Private.Uri.dll => 0x311247b5 => 102
	i32 830298997, ; 44: System.IO.Compression.Brotli => 0x317d5b75 => 92
	i32 898440345, ; 45: CsvHelper => 0x358d1c99 => 35
	i32 904024072, ; 46: System.ComponentModel.Primitives.dll => 0x35e25008 => 83
	i32 926902833, ; 47: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 967690846, ; 48: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 60
	i32 992768348, ; 49: System.Collections.dll => 0x3b2c715c => 82
	i32 1012816738, ; 50: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 70
	i32 1019214401, ; 51: System.Drawing => 0x3cbffa41 => 91
	i32 1028951442, ; 52: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 39
	i32 1029334545, ; 53: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 54: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 50
	i32 1036536393, ; 55: System.Drawing.Primitives.dll => 0x3dc84a49 => 90
	i32 1044663988, ; 56: System.Linq.Expressions.dll => 0x3e444eb4 => 94
	i32 1052210849, ; 57: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 62
	i32 1082857460, ; 58: System.ComponentModel.TypeConverter => 0x408b17f4 => 84
	i32 1084122840, ; 59: Xamarin.Kotlin.StdLib => 0x409e66d8 => 75
	i32 1098259244, ; 60: System => 0x41761b2c => 116
	i32 1118262833, ; 61: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 62: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 63: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 67
	i32 1203215381, ; 64: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1234928153, ; 65: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1260983243, ; 66: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 67: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 58
	i32 1295070778, ; 68: Report.dll => 0x4d31363a => 77
	i32 1324164729, ; 69: System.Linq => 0x4eed2679 => 95
	i32 1373134921, ; 70: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 71: Xamarin.AndroidX.SavedState => 0x52114ed3 => 70
	i32 1406073936, ; 72: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 54
	i32 1408764838, ; 73: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 107
	i32 1430672901, ; 74: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1461004990, ; 75: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 76: System.IO.Compression.dll => 0x57261233 => 93
	i32 1469204771, ; 77: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 51
	i32 1470490898, ; 78: Microsoft.Extensions.Primitives => 0x57a5e912 => 43
	i32 1480492111, ; 79: System.IO.Compression.Brotli.dll => 0x583e844f => 92
	i32 1493001747, ; 80: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 81: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 82: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 112
	i32 1551623176, ; 83: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1622152042, ; 84: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 64
	i32 1624863272, ; 85: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 73
	i32 1636350590, ; 86: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 56
	i32 1639515021, ; 87: System.Net.Http.dll => 0x61b9038d => 97
	i32 1639986890, ; 88: System.Text.RegularExpressions => 0x61c036ca => 112
	i32 1657153582, ; 89: System.Runtime => 0x62c6282e => 108
	i32 1658251792, ; 90: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 74
	i32 1677501392, ; 91: System.Net.Primitives.dll => 0x63fca3d0 => 98
	i32 1679769178, ; 92: System.Security.Cryptography => 0x641f3e5a => 109
	i32 1729485958, ; 93: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 52
	i32 1736233607, ; 94: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 95: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1763938596, ; 96: System.Diagnostics.TraceSource.dll => 0x69239124 => 89
	i32 1766324549, ; 97: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 71
	i32 1770582343, ; 98: Microsoft.Extensions.Logging.dll => 0x6988f147 => 40
	i32 1780572499, ; 99: Mono.Android.Runtime.dll => 0x6a216153 => 119
	i32 1782862114, ; 100: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 101: Xamarin.AndroidX.Fragment => 0x6a96652d => 59
	i32 1793755602, ; 102: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 103: Xamarin.AndroidX.Loader => 0x6bcd3296 => 64
	i32 1813058853, ; 104: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 75
	i32 1813201214, ; 105: Xamarin.Google.Android.Material => 0x6c13413e => 74
	i32 1818569960, ; 106: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 68
	i32 1824722060, ; 107: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 107
	i32 1828688058, ; 108: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 41
	i32 1842015223, ; 109: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 110: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 111: System.Linq.Expressions => 0x6ec71a65 => 94
	i32 1875935024, ; 112: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1910275211, ; 113: System.Collections.NonGeneric.dll => 0x71dc7c8b => 80
	i32 1968388702, ; 114: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 36
	i32 2003115576, ; 115: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 116: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 62
	i32 2025202353, ; 117: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 118: System.Private.Xml => 0x79eb68ee => 103
	i32 2055257422, ; 119: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 61
	i32 2066184531, ; 120: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 121: System.Diagnostics.TraceSource => 0x7b6f419e => 89
	i32 2079903147, ; 122: System.Runtime.dll => 0x7bf8cdab => 108
	i32 2090596640, ; 123: System.Numerics.Vectors => 0x7c9bf920 => 100
	i32 2127167465, ; 124: System.Console => 0x7ec9ffe9 => 86
	i32 2142473426, ; 125: System.Collections.Specialized => 0x7fb38cd2 => 81
	i32 2159891885, ; 126: Microsoft.Maui => 0x80bd55ad => 46
	i32 2169148018, ; 127: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 128: Microsoft.Extensions.Options.dll => 0x820d22b3 => 42
	i32 2192057212, ; 129: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 41
	i32 2193016926, ; 130: System.ObjectModel.dll => 0x82b6c85e => 101
	i32 2201107256, ; 131: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 76
	i32 2201231467, ; 132: System.Net.Http => 0x8334206b => 97
	i32 2207618523, ; 133: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 134: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 37
	i32 2270573516, ; 135: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 136: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 69
	i32 2303942373, ; 137: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 138: System.Private.CoreLib.dll => 0x896b7878 => 117
	i32 2353062107, ; 139: System.Net.Primitives => 0x8c40e0db => 98
	i32 2368005991, ; 140: System.Xml.ReaderWriter.dll => 0x8d24e767 => 115
	i32 2371007202, ; 141: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 36
	i32 2395872292, ; 142: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2427813419, ; 143: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 144: System.Console.dll => 0x912896e5 => 86
	i32 2475788418, ; 145: Java.Interop.dll => 0x93918882 => 118
	i32 2480646305, ; 146: Microsoft.Maui.Controls => 0x93dba8a1 => 44
	i32 2550873716, ; 147: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 148: Microsoft.CSharp => 0x98ba5a04 => 78
	i32 2570120770, ; 149: System.Text.Encodings.Web => 0x9930ee42 => 110
	i32 2593496499, ; 150: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 151: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 76
	i32 2617129537, ; 152: System.Private.Xml.dll => 0x9bfe3a41 => 103
	i32 2620871830, ; 153: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 56
	i32 2626831493, ; 154: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 155: System.Runtime.Loader => 0x9ec4cf01 => 105
	i32 2665622720, ; 156: System.Drawing.Primitives => 0x9ee22cc0 => 90
	i32 2676780864, ; 157: System.Data.Common.dll => 0x9f8c6f40 => 87
	i32 2724373263, ; 158: System.Runtime.Numerics.dll => 0xa262a30f => 106
	i32 2732626843, ; 159: Xamarin.AndroidX.Activity => 0xa2e0939b => 49
	i32 2737747696, ; 160: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 51
	i32 2752995522, ; 161: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 162: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 45
	i32 2764765095, ; 163: Microsoft.Maui.dll => 0xa4caf7a7 => 46
	i32 2778768386, ; 164: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 72
	i32 2785988530, ; 165: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 166: Microsoft.Maui.Graphics => 0xa7008e0b => 48
	i32 2806116107, ; 167: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 168: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 54
	i32 2831556043, ; 169: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2853208004, ; 170: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 72
	i32 2861189240, ; 171: Microsoft.Maui.Essentials => 0xaa8a4878 => 47
	i32 2909740682, ; 172: System.Private.CoreLib => 0xad6f1e8a => 117
	i32 2916838712, ; 173: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 73
	i32 2919462931, ; 174: System.Numerics.Vectors.dll => 0xae037813 => 100
	i32 2959614098, ; 175: System.ComponentModel.dll => 0xb0682092 => 85
	i32 2978675010, ; 176: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 58
	i32 3038032645, ; 177: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 178: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 65
	i32 3059408633, ; 179: Mono.Android.Runtime => 0xb65adef9 => 119
	i32 3059793426, ; 180: System.ComponentModel.Primitives => 0xb660be12 => 83
	i32 3077302341, ; 181: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3178803400, ; 182: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 66
	i32 3220365878, ; 183: System.Threading => 0xbff2e236 => 114
	i32 3258312781, ; 184: Xamarin.AndroidX.CardView => 0xc235e84d => 52
	i32 3305363605, ; 185: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 186: System.Net.Requests.dll => 0xc5b097e4 => 99
	i32 3317135071, ; 187: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 57
	i32 3346324047, ; 188: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 67
	i32 3357674450, ; 189: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 190: System.Text.Json => 0xc82afec1 => 111
	i32 3362522851, ; 191: Xamarin.AndroidX.Core => 0xc86c06e3 => 55
	i32 3366347497, ; 192: Java.Interop => 0xc8a662e9 => 118
	i32 3374999561, ; 193: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 69
	i32 3381016424, ; 194: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 195: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 38
	i32 3463511458, ; 196: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 197: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 84
	i32 3476120550, ; 198: Mono.Android => 0xcf3163e6 => 120
	i32 3479583265, ; 199: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 200: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 201: System.Text.Json.dll => 0xcfbaacae => 111
	i32 3580758918, ; 202: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 203: System.Linq.dll => 0xd715a361 => 95
	i32 3641597786, ; 204: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 61
	i32 3643446276, ; 205: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 206: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 66
	i32 3657292374, ; 207: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 37
	i32 3672681054, ; 208: Mono.Android.dll => 0xdae8aa5e => 120
	i32 3697841164, ; 209: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 210: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 65
	i32 3748608112, ; 211: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 88
	i32 3786282454, ; 212: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 53
	i32 3792276235, ; 213: System.Collections.NonGeneric => 0xe2098b0b => 80
	i32 3802395368, ; 214: System.Collections.Specialized.dll => 0xe2a3f2e8 => 81
	i32 3818918118, ; 215: CsvHelper.dll => 0xe3a010e6 => 35
	i32 3823082795, ; 216: System.Security.Cryptography.dll => 0xe3df9d2b => 109
	i32 3841636137, ; 217: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 39
	i32 3849253459, ; 218: System.Runtime.InteropServices.dll => 0xe56ef253 => 104
	i32 3889960447, ; 219: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 220: System.Collections.Concurrent.dll => 0xe839deed => 79
	i32 3896760992, ; 221: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 55
	i32 3928044579, ; 222: System.Xml.ReaderWriter => 0xea213423 => 115
	i32 3931092270, ; 223: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 68
	i32 3955647286, ; 224: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 50
	i32 3980434154, ; 225: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 226: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4025784931, ; 227: System.Memory => 0xeff49a63 => 96
	i32 4046471985, ; 228: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 45
	i32 4073602200, ; 229: System.Threading.dll => 0xf2ce3c98 => 114
	i32 4094352644, ; 230: Microsoft.Maui.Essentials.dll => 0xf40add04 => 47
	i32 4099507663, ; 231: System.Drawing.dll => 0xf45985cf => 91
	i32 4100113165, ; 232: System.Private.Uri => 0xf462c30d => 102
	i32 4102112229, ; 233: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 234: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 235: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 38
	i32 4150914736, ; 236: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4182413190, ; 237: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 63
	i32 4213026141, ; 238: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 88
	i32 4271975918, ; 239: Microsoft.Maui.Controls.dll => 0xfea12dee => 44
	i32 4274976490, ; 240: System.Runtime.Numerics => 0xfecef6ea => 106
	i32 4292120959 ; 241: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 63
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [242 x i32] [
	i32 113, ; 0
	i32 33, ; 1
	i32 48, ; 2
	i32 104, ; 3
	i32 53, ; 4
	i32 71, ; 5
	i32 30, ; 6
	i32 31, ; 7
	i32 85, ; 8
	i32 78, ; 9
	i32 2, ; 10
	i32 30, ; 11
	i32 49, ; 12
	i32 15, ; 13
	i32 60, ; 14
	i32 77, ; 15
	i32 14, ; 16
	i32 113, ; 17
	i32 96, ; 18
	i32 34, ; 19
	i32 26, ; 20
	i32 82, ; 21
	i32 59, ; 22
	i32 116, ; 23
	i32 101, ; 24
	i32 13, ; 25
	i32 7, ; 26
	i32 43, ; 27
	i32 40, ; 28
	i32 21, ; 29
	i32 57, ; 30
	i32 19, ; 31
	i32 110, ; 32
	i32 79, ; 33
	i32 1, ; 34
	i32 16, ; 35
	i32 4, ; 36
	i32 105, ; 37
	i32 99, ; 38
	i32 93, ; 39
	i32 25, ; 40
	i32 42, ; 41
	i32 87, ; 42
	i32 102, ; 43
	i32 92, ; 44
	i32 35, ; 45
	i32 83, ; 46
	i32 28, ; 47
	i32 60, ; 48
	i32 82, ; 49
	i32 70, ; 50
	i32 91, ; 51
	i32 39, ; 52
	i32 3, ; 53
	i32 50, ; 54
	i32 90, ; 55
	i32 94, ; 56
	i32 62, ; 57
	i32 84, ; 58
	i32 75, ; 59
	i32 116, ; 60
	i32 16, ; 61
	i32 22, ; 62
	i32 67, ; 63
	i32 20, ; 64
	i32 18, ; 65
	i32 2, ; 66
	i32 58, ; 67
	i32 77, ; 68
	i32 95, ; 69
	i32 32, ; 70
	i32 70, ; 71
	i32 54, ; 72
	i32 107, ; 73
	i32 0, ; 74
	i32 6, ; 75
	i32 93, ; 76
	i32 51, ; 77
	i32 43, ; 78
	i32 92, ; 79
	i32 10, ; 80
	i32 5, ; 81
	i32 112, ; 82
	i32 25, ; 83
	i32 64, ; 84
	i32 73, ; 85
	i32 56, ; 86
	i32 97, ; 87
	i32 112, ; 88
	i32 108, ; 89
	i32 74, ; 90
	i32 98, ; 91
	i32 109, ; 92
	i32 52, ; 93
	i32 23, ; 94
	i32 1, ; 95
	i32 89, ; 96
	i32 71, ; 97
	i32 40, ; 98
	i32 119, ; 99
	i32 17, ; 100
	i32 59, ; 101
	i32 9, ; 102
	i32 64, ; 103
	i32 75, ; 104
	i32 74, ; 105
	i32 68, ; 106
	i32 107, ; 107
	i32 41, ; 108
	i32 29, ; 109
	i32 26, ; 110
	i32 94, ; 111
	i32 8, ; 112
	i32 80, ; 113
	i32 36, ; 114
	i32 5, ; 115
	i32 62, ; 116
	i32 0, ; 117
	i32 103, ; 118
	i32 61, ; 119
	i32 4, ; 120
	i32 89, ; 121
	i32 108, ; 122
	i32 100, ; 123
	i32 86, ; 124
	i32 81, ; 125
	i32 46, ; 126
	i32 12, ; 127
	i32 42, ; 128
	i32 41, ; 129
	i32 101, ; 130
	i32 76, ; 131
	i32 97, ; 132
	i32 14, ; 133
	i32 37, ; 134
	i32 8, ; 135
	i32 69, ; 136
	i32 18, ; 137
	i32 117, ; 138
	i32 98, ; 139
	i32 115, ; 140
	i32 36, ; 141
	i32 13, ; 142
	i32 10, ; 143
	i32 86, ; 144
	i32 118, ; 145
	i32 44, ; 146
	i32 11, ; 147
	i32 78, ; 148
	i32 110, ; 149
	i32 20, ; 150
	i32 76, ; 151
	i32 103, ; 152
	i32 56, ; 153
	i32 15, ; 154
	i32 105, ; 155
	i32 90, ; 156
	i32 87, ; 157
	i32 106, ; 158
	i32 49, ; 159
	i32 51, ; 160
	i32 21, ; 161
	i32 45, ; 162
	i32 46, ; 163
	i32 72, ; 164
	i32 27, ; 165
	i32 48, ; 166
	i32 6, ; 167
	i32 54, ; 168
	i32 19, ; 169
	i32 72, ; 170
	i32 47, ; 171
	i32 117, ; 172
	i32 73, ; 173
	i32 100, ; 174
	i32 85, ; 175
	i32 58, ; 176
	i32 34, ; 177
	i32 65, ; 178
	i32 119, ; 179
	i32 83, ; 180
	i32 12, ; 181
	i32 66, ; 182
	i32 114, ; 183
	i32 52, ; 184
	i32 7, ; 185
	i32 99, ; 186
	i32 57, ; 187
	i32 67, ; 188
	i32 24, ; 189
	i32 111, ; 190
	i32 55, ; 191
	i32 118, ; 192
	i32 69, ; 193
	i32 3, ; 194
	i32 38, ; 195
	i32 11, ; 196
	i32 84, ; 197
	i32 120, ; 198
	i32 24, ; 199
	i32 23, ; 200
	i32 111, ; 201
	i32 31, ; 202
	i32 95, ; 203
	i32 61, ; 204
	i32 28, ; 205
	i32 66, ; 206
	i32 37, ; 207
	i32 120, ; 208
	i32 33, ; 209
	i32 65, ; 210
	i32 88, ; 211
	i32 53, ; 212
	i32 80, ; 213
	i32 81, ; 214
	i32 35, ; 215
	i32 109, ; 216
	i32 39, ; 217
	i32 104, ; 218
	i32 32, ; 219
	i32 79, ; 220
	i32 55, ; 221
	i32 115, ; 222
	i32 68, ; 223
	i32 50, ; 224
	i32 27, ; 225
	i32 9, ; 226
	i32 96, ; 227
	i32 45, ; 228
	i32 114, ; 229
	i32 47, ; 230
	i32 91, ; 231
	i32 102, ; 232
	i32 22, ; 233
	i32 17, ; 234
	i32 38, ; 235
	i32 29, ; 236
	i32 63, ; 237
	i32 88, ; 238
	i32 44, ; 239
	i32 106, ; 240
	i32 63 ; 241
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
