.class public final Lorg/codehaus/plexus/util/TypeFormat;
.super Ljava/lang/Object;


# static fields
.field private static final DIGITS:[C

.field private static final DOUBLE_POW_10:[D

.field private static final DOUBLE_RELATIVE_ERROR:D

.field private static final FLOAT_RELATIVE_ERROR:F

.field private static final INT_POW_10:[I

.field private static LEADING_ZEROS:[Ljava/lang/String;

.field private static final LOG_10:D

.field private static final LONG_POW_10:[J


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/codehaus/plexus/util/TypeFormat;->DIGITS:[C

    const/16 v0, 0xa

    new-array v1, v0, [I

    sput-object v1, Lorg/codehaus/plexus/util/TypeFormat;->INT_POW_10:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v0, :cond_0

    sget-object v5, Lorg/codehaus/plexus/util/TypeFormat;->INT_POW_10:[I

    aput v4, v5, v3

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x13

    new-array v3, v0, [J

    sput-object v3, Lorg/codehaus/plexus/util/TypeFormat;->LONG_POW_10:[J

    const-wide/16 v3, 0x1

    move-wide v4, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    sget-object v6, Lorg/codehaus/plexus/util/TypeFormat;->LONG_POW_10:[J

    aput-wide v4, v6, v3

    const-wide/16 v6, 0xa

    mul-long v4, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    sput-wide v3, Lorg/codehaus/plexus/util/TypeFormat;->LOG_10:D

    const-wide/high16 v3, -0x3fc8000000000000L    # -24.0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v0, v3

    sput v0, Lorg/codehaus/plexus/util/TypeFormat;->FLOAT_RELATIVE_ERROR:F

    const-wide v3, -0x3fb5800000000000L    # -53.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sput-wide v3, Lorg/codehaus/plexus/util/TypeFormat;->DOUBLE_RELATIVE_ERROR:D

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "0."

    aput-object v3, v0, v1

    const-string v1, "0.0"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "0.00"

    aput-object v2, v0, v1

    sput-object v0, Lorg/codehaus/plexus/util/TypeFormat;->LEADING_ZEROS:[Ljava/lang/String;

    const/16 v0, 0x135

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    sput-object v0, Lorg/codehaus/plexus/util/TypeFormat;->DOUBLE_POW_10:[D

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_1
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
        0x4480f0cf064dd592L    # 1.0E22
        0x44b52d02c7e14af6L    # 9.999999999999999E22
        0x44ea784379d99db4L    # 1.0E24
        0x45208b2a2c280291L    # 1.0E25
        0x4554adf4b7320335L    # 1.0E26
        0x4589d971e4fe8402L    # 1.0E27
        0x45c027e72f1f1281L    # 1.0E28
        0x45f431e0fae6d721L    # 1.0E29
        0x46293e5939a08ceaL    # 1.0E30
        0x465f8def8808b024L    # 1.0E31
        0x4693b8b5b5056e17L    # 1.0E32
        0x46c8a6e32246c99cL    # 1.0E33
        0x46fed09bead87c03L    # 1.0E34
        0x4733426172c74d82L    # 1.0E35
        0x476812f9cf7920e3L    # 1.0E36
        0x479e17b84357691bL    # 1.0E37
        0x47d2ced32a16a1b1L    # 1.0E38
        0x48078287f49c4a1dL    # 1.0E39
        0x483d6329f1c35ca5L    # 1.0E40
        0x48725dfa371a19e7L    # 1.0E41
        0x48a6f578c4e0a061L    # 1.0E42
        0x48dcb2d6f618c879L    # 1.0E43
        0x4911efc659cf7d4cL    # 1.0E44
        0x49466bb7f0435c9eL    # 1.0E45
        0x497c06a5ec5433c6L    # 1.0E46
        0x49b18427b3b4a05cL    # 1.0E47
        0x49e5e531a0a1c873L    # 1.0E48
        0x4a1b5e7e08ca3a8fL    # 1.0E49
        0x4a511b0ec57e649aL    # 1.0E50
        0x4a8561d276ddfdc0L    # 1.0E51
        0x4ababa4714957d30L    # 1.0E52
        0x4af0b46c6cdd6e3eL    # 1.0E53
        0x4b24e1878814c9ceL    # 1.0E54
        0x4b5a19e96a19fc41L    # 1.0E55
        0x4b905031e2503da9L    # 1.0E56
        0x4bc4643e5ae44d13L    # 1.0E57
        0x4bf97d4df19d6057L    # 1.0E58
        0x4c2fdca16e04b86dL    # 1.0E59
        0x4c63e9e4e4c2f344L    # 1.0E60
        0x4c98e45e1df3b015L    # 1.0E61
        0x4ccf1d75a5709c1bL    # 1.0E62
        0x4d03726987666191L    # 1.0E63
        0x4d384f03e93ff9f5L    # 1.0E64
        0x4d6e62c4e38ff872L    # 1.0E65
        0x4da2fdbb0e39fb47L    # 1.0E66
        0x4dd7bd29d1c87a19L    # 1.0E67
        0x4e0dac74463a989fL    # 1.0E68
        0x4e428bc8abe49f64L    # 1.0E69
        0x4e772ebad6ddc73dL    # 1.0E70
        0x4eacfa698c95390cL    # 1.0E71
        0x4ee21c81f7dd43a7L    # 1.0E72
        0x4f16a3a275d49491L    # 1.0E73
        0x4f4c4c8b1349b9b5L    # 1.0E74
        0x4f81afd6ec0e1411L    # 1.0E75
        0x4fb61bcca7119916L    # 1.0E76
        0x4feba2bfd0d5ff5bL    # 1.0E77
        0x502145b7e285bf99L    # 1.0E78
        0x50559725db272f7fL    # 1.0E79
        0x508afcef51f0fb5fL    # 1.0E80
        0x50c0de1593369d1bL    # 1.0E81
        0x50f5159af8044462L    # 1.0E82
        0x512a5b01b605557bL    # 1.0E83
        0x516078e111c3556dL    # 1.0E84
        0x5194971956342ac8L    # 1.0E85
        0x51c9bcdfabc1357aL    # 1.0E86
        0x5200160bcb58c16cL    # 1.0E87
        0x52341b8ebe2ef1c7L    # 1.0E88
        0x526922726dbaae39L    # 1.0E89
        0x529f6b0f092959c7L    # 1.0E90
        0x52d3a2e965b9d81dL    # 1.0E91
        0x53088ba3bf284e24L    # 1.0E92
        0x533eae8caef261adL    # 1.0E93
        0x53732d17ed577d0cL    # 1.0E94
        0x53a7f85de8ad5c4fL    # 1.0E95
        0x53ddf67562d8b363L    # 1.0E96
        0x5412ba095dc7701eL    # 1.0E97
        0x5447688bb5394c25L    # 1.0E98
        0x547d42aea2879f2eL    # 1.0E99
        0x54b249ad2594c37dL    # 1.0E100
        0x54e6dc186ef9f45cL    # 1.0E101
        0x551c931e8ab87173L    # 1.0E102
        0x5551dbf316b346e8L    # 1.0E103
        0x558652efdc6018a2L    # 1.0E104
        0x55bbe7abd3781ecaL    # 1.0E105
        0x55f170cb642b133fL    # 1.0E106
        0x5625ccfe3d35d80eL    # 1.0E107
        0x565b403dcc834e12L    # 1.0E108
        0x569108269fd210cbL    # 1.0E109
        0x56c54a3047c694feL    # 1.0E110
        0x56fa9cbc59b83a3dL    # 1.0E111
        0x5730a1f5b8132466L    # 1.0E112
        0x5764ca732617ed80L    # 1.0E113
        0x5799fd0fef9de8e0L    # 1.0E114
        0x57d03e29f5c2b18cL    # 1.0E115
        0x58044db473335defL    # 1.0E116
        0x583961219000356bL    # 1.0E117
        0x586fb969f40042c5L    # 1.0E118
        0x58a3d3e2388029bbL    # 1.0E119
        0x58d8c8dac6a0342aL    # 1.0E120
        0x590efb1178484135L    # 1.0E121
        0x59435ceaeb2d28c1L    # 1.0E122
        0x59783425a5f872f1L    # 1.0E123
        0x59ae412f0f768fadL    # 1.0E124
        0x59e2e8bd69aa19ccL    # 1.0E125
        0x5a17a2ecc414a03fL    # 1.0E126
        0x5a4d8ba7f519c84fL    # 1.0E127
        0x5a827748f9301d32L    # 1.0E128
        0x5ab7151b377c247eL    # 1.0E129
        0x5aecda62055b2d9eL    # 1.0E130
        0x5b22087d4358fc82L    # 1.0E131
        0x5b568a9c942f3ba3L    # 1.0E132
        0x5b8c2d43b93b0a8cL    # 1.0E133
        0x5bc19c4a53c4e697L    # 1.0E134
        0x5bf6035ce8b6203dL    # 1.0E135
        0x5c2b843422e3a84dL    # 1.0E136
        0x5c6132a095ce4930L    # 1.0E137
        0x5c957f48bb41db7cL    # 1.0E138
        0x5ccadf1aea12525bL    # 1.0E139
        0x5d00cb70d24b7379L    # 1.0E140
        0x5d34fe4d06de5057L    # 1.0E141
        0x5d6a3de04895e46dL    # 1.0E142
        0x5da066ac2d5daec4L    # 1.0E143
        0x5dd4805738b51a75L    # 1.0E144
        0x5e09a06d06e26112L    # 1.0E145
        0x5e400444244d7cabL    # 1.0E146
        0x5e7405552d60dbd6L    # 1.0E147
        0x5ea906aa78b912ccL    # 1.0E148
        0x5edf485516e7577fL    # 1.0E149
        0x5f138d352e5096afL    # 1.0E150
        0x5f48708279e4bc5bL    # 1.0E151
        0x5f7e8ca3185deb72L    # 1.0E152
        0x5fb317e5ef3ab327L    # 1.0E153
        0x5fe7dddf6b095ff1L    # 1.0E154
        0x601dd55745cbb7edL    # 1.0E155
        0x6052a5568b9f52f4L    # 1.0E156
        0x60874eac2e8727b1L    # 1.0E157
        0x60bd22573a28f19dL    # 1.0E158
        0x60f2357684599702L    # 1.0E159
        0x6126c2d4256ffcc3L    # 1.0E160
        0x615c73892ecbfbf4L    # 1.0E161
        0x6191c835bd3f7d78L    # 1.0E162
        0x61c63a432c8f5cd6L    # 1.0E163
        0x61fbc8d3f7b3340cL    # 1.0E164
        0x62315d847ad00087L    # 1.0E165
        0x6265b4e5998400a9L    # 1.0E166
        0x629b221effe500d4L    # 1.0E167
        0x62d0f5535fef2084L    # 1.0E168
        0x630532a837eae8a5L    # 1.0E169
        0x633a7f5245e5a2cfL    # 1.0E170
        0x63708f936baf85c1L    # 1.0E171
        0x63a4b378469b6732L    # 1.0E172
        0x63d9e056584240feL    # 1.0E173
        0x64102c35f729689fL    # 1.0E174
        0x6444374374f3c2c6L    # 1.0E175
        0x647945145230b378L    # 1.0E176
        0x64af965966bce056L    # 1.0E177
        0x64e3bdf7e0360c36L    # 1.0E178
        0x6518ad75d8438f43L    # 1.0E179
        0x654ed8d34e547314L    # 1.0E180
        0x6583478410f4c7ecL    # 1.0E181
        0x65b819651531f9e8L    # 1.0E182
        0x65ee1fbe5a7e7861L    # 1.0E183
        0x6622d3d6f88f0b3dL    # 1.0E184
        0x665788ccb6b2ce0cL    # 1.0E185
        0x668d6affe45f818fL    # 1.0E186
        0x66c262dfeebbb0f9L    # 1.0E187
        0x66f6fb97ea6a9d38L    # 1.0E188
        0x672cba7de5054486L    # 1.0E189
        0x6761f48eaf234ad4L    # 1.0E190
        0x679671b25aec1d89L    # 1.0E191
        0x67cc0e1ef1a724ebL    # 1.0E192
        0x680188d357087713L    # 1.0E193
        0x6835eb082cca94d7L    # 1.0E194
        0x686b65ca37fd3a0dL    # 1.0E195
        0x68a11f9e62fe4448L    # 1.0E196
        0x68d56785fbbdd55aL    # 1.0E197
        0x690ac1677aad4ab1L    # 1.0E198
        0x6940b8e0acac4eafL    # 1.0E199
        0x6974e718d7d7625aL    # 1.0E200
        0x69aa20df0dcd3af1L    # 1.0E201
        0x69e0548b68a044d6L    # 1.0E202
        0x6a1469ae42c8560cL    # 1.0E203
        0x6a498419d37a6b8fL    # 1.0E204
        0x6a7fe52048590673L    # 1.0E205
        0x6ab3ef342d37a408L    # 1.0E206
        0x6ae8eb0138858d0aL    # 1.0E207
        0x6b1f25c186a6f04cL    # 1.0E208
        0x6b537798f4285630L    # 1.0E209
        0x6b88557f31326bbbL    # 1.0E210
        0x6bbe6adefd7f06aaL    # 1.0E211
        0x6bf302cb5e6f642aL    # 1.0E212
        0x6c27c37e360b3d35L    # 1.0E213
        0x6c5db45dc38e0c82L    # 1.0E214
        0x6c9290ba9a38c7d1L    # 1.0E215
        0x6cc734e940c6f9c6L    # 1.0E216
        0x6cfd022390f8b837L    # 1.0E217
        0x6d3221563a9b7323L    # 1.0E218
        0x6d66a9abc9424febL    # 1.0E219
        0x6d9c5416bb92e3e6L    # 1.0E220
        0x6dd1b48e353bce70L    # 1.0E221
        0x6e0621b1c28ac20cL    # 1.0E222
        0x6e3baa1e332d728fL    # 1.0E223
        0x6e714a52dffc6799L    # 1.0E224
        0x6ea59ce797fb817fL    # 1.0E225
        0x6edb04217dfa61dfL    # 1.0E226
        0x6f10e294eebc7d2cL    # 1.0E227
        0x6f451b3a2a6b9c76L    # 1.0E228
        0x6f7a6208b5068394L    # 1.0E229
        0x6fb07d457124123dL    # 1.0E230
        0x6fe49c96cd6d16ccL    # 1.0E231
        0x7019c3bc80c85c7fL    # 1.0E232
        0x70501a55d07d39cfL    # 1.0E233
        0x708420eb449c8843L    # 1.0E234
        0x70b9292615c3aa54L    # 1.0E235
        0x70ef736f9b3494e9L    # 1.0E236
        0x7123a825c100dd11L    # 1.0E237
        0x7158922f31411456L    # 1.0E238
        0x718eb6bafd91596bL    # 1.0E239
        0x71c33234de7ad7e3L    # 1.0E240
        0x71f7fec216198ddcL    # 1.0E241
        0x722dfe729b9ff153L    # 1.0E242
        0x7262bf07a143f6d4L    # 1.0E243
        0x72976ec98994f489L    # 1.0E244
        0x72cd4a7bebfa31abL    # 1.0E245
        0x73024e8d737c5f0bL    # 1.0E246
        0x7336e230d05b76cdL    # 1.0E247
        0x736c9abd04725481L    # 1.0E248
        0x73a1e0b622c774d0L    # 1.0E249
        0x73d658e3ab795204L    # 1.0E250
        0x740bef1c9657a686L    # 1.0E251
        0x74417571ddf6c814L    # 1.0E252
        0x7475d2ce55747a18L    # 1.0E253
        0x74ab4781ead1989eL    # 1.0E254
        0x74e10cb132c2ff63L    # 1.0E255
        0x75154fdd7f73bf3cL    # 1.0E256
        0x754aa3d4df50af0bL    # 1.0E257
        0x7580a6650b926d67L    # 1.0E258
        0x75b4cffe4e7708c0L    # 1.0E259
        0x75ea03fde214caf1L    # 1.0E260
        0x7620427ead4cfed6L    # 1.0E261
        0x7654531e58a03e8cL    # 1.0E262
        0x768967e5eec84e2fL    # 1.0E263
        0x76bfc1df6a7a61bbL    # 1.0E264
        0x76f3d92ba28c7d15L    # 1.0E265
        0x7728cf768b2f9c5aL    # 1.0E266
        0x775f03542dfb8370L    # 1.0E267
        0x779362149cbd3226L    # 1.0E268
        0x77c83a99c3ec7eb0L    # 1.0E269
        0x77fe494034e79e5cL    # 1.0E270
        0x7832edc82110c2f9L    # 1.0E271
        0x7867a93a2954f3b8L    # 1.0E272
        0x789d9388b3aa30a5L    # 1.0E273
        0x78d27c35704a5e67L    # 1.0E274
        0x79071b42cc5cf601L    # 1.0E275
        0x793ce2137f743382L    # 1.0E276
        0x79720d4c2fa8a031L    # 1.0E277
        0x79a6909f3b92c83dL    # 1.0E278
        0x79dc34c70a777a4dL    # 1.0E279
        0x7a11a0fc668aac70L    # 1.0E280
        0x7a46093b802d578cL    # 1.0E281
        0x7a7b8b8a6038ad6fL    # 1.0E282
        0x7ab137367c236c65L    # 1.0E283
        0x7ae585041b2c477fL    # 1.0E284
        0x7b1ae64521f7595eL    # 1.0E285
        0x7b50cfeb353a97dbL    # 1.0E286
        0x7b8503e602893dd2L    # 1.0E287
        0x7bba44df832b8d46L    # 1.0E288
        0x7bf06b0bb1fb384cL    # 1.0E289
        0x7c2485ce9e7a065fL    # 1.0E290
        0x7c59a742461887f6L    # 1.0E291
        0x7c9008896bcf54faL    # 1.0E292
        0x7cc40aabc6c32a38L    # 1.0E293
        0x7cf90d56b873f4c7L    # 1.0E294
        0x7d2f50ac6690f1f8L    # 1.0E295
        0x7d63926bc01a973bL    # 1.0E296
        0x7d987706b0213d0aL    # 1.0E297
        0x7dce94c85c298c4cL    # 1.0E298
        0x7e031cfd3999f7b0L    # 1.0E299
        0x7e37e43c8800759cL    # 1.0E300
        0x7e6ddd4baa009303L    # 1.0E301
        0x7ea2aa4f4a405be2L    # 1.0E302
        0x7ed754e31cd072daL    # 1.0E303
        0x7f0d2a1be4048f90L    # 1.0E304
        0x7f423a516e82d9baL    # 1.0E305
        0x7f76c8e5ca239029L    # 1.0E306
        0x7fac7b1f3cac7433L    # 1.0E307
        0x7fe1ccf385ebc8a0L    # 1.0E308
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(DDLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 15

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    const/4 v3, 0x0

    if-lez v2, :cond_0

    const/4 v3, 0x1

    move-wide v6, p2

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    cmpl-double v2, p2, v0

    if-nez v2, :cond_2

    cmpl-double p2, p0, v0

    if-eqz p2, :cond_1

    sget-wide p2, Lorg/codehaus/plexus/util/TypeFormat;->DOUBLE_RELATIVE_ERROR:D

    mul-double p2, p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    const-wide/16 v0, 0x1

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    goto :goto_0

    :cond_1
    const-string p0, "0.0"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p4

    :cond_2
    cmpg-double v2, p2, v0

    if-ltz v2, :cond_3

    :goto_0
    move-wide v6, p2

    const/4 v8, 0x0

    :goto_1
    move-wide v4, p0

    move-object v9, p4

    invoke-static/range {v4 .. v9}, Lorg/codehaus/plexus/util/TypeFormat;->format(DDZLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "precision: Negative values not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static format(DDZLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 9

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "NaN"

    :goto_0
    invoke-virtual {p5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p5

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    cmpl-double p2, p0, v1

    if-ltz p2, :cond_1

    const-string p0, "Infinity"

    goto :goto_0

    :cond_1
    const-string p0, "-Infinity"

    goto :goto_0

    :cond_2
    cmpg-double v0, p0, v1

    if-gez v0, :cond_3

    neg-double p0, p0

    const/16 v0, 0x2d

    invoke-virtual {p5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    sget-wide v0, Lorg/codehaus/plexus/util/TypeFormat;->LOG_10:D

    div-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-int p2, p2

    neg-int p3, p2

    invoke-static {p0, p1, p3}, Lorg/codehaus/plexus/util/TypeFormat;->multE(DI)D

    move-result-wide p0

    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double p3, p0, v0

    if-gez p3, :cond_c

    invoke-virtual {p5}, Ljava/lang/StringBuffer;->length()I

    move-result p3

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-static {p0, p1, p5}, Lorg/codehaus/plexus/util/TypeFormat;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, p3

    add-int/2addr p2, p0

    const/4 p1, 0x0

    sget-object v0, Lorg/codehaus/plexus/util/TypeFormat;->LEADING_ZEROS:[Ljava/lang/String;

    array-length v0, v0

    neg-int v0, v0

    const/16 v1, 0x2e

    const/4 v2, 0x1

    if-le p2, v0, :cond_6

    if-le p2, p0, :cond_4

    goto :goto_1

    :cond_4
    if-lez p2, :cond_5

    add-int/2addr p3, p2

    invoke-virtual {p5, p3, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    sget-object p0, Lorg/codehaus/plexus/util/TypeFormat;->LEADING_ZEROS:[Ljava/lang/String;

    neg-int v0, p2

    aget-object p0, p0, v0

    invoke-virtual {p5, p3, p0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    :goto_1
    add-int/2addr p3, v2

    invoke-virtual {p5, p3, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    const/4 p1, 0x1

    :goto_2
    const/16 p0, 0x30

    if-nez p4, :cond_8

    invoke-virtual {p5}, Ljava/lang/StringBuffer;->length()I

    move-result p3

    :cond_7
    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p5, p3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-eq v0, p0, :cond_7

    add-int/2addr p3, v2

    invoke-virtual {p5, p3}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_8
    invoke-virtual {p5}, Ljava/lang/StringBuffer;->length()I

    move-result p3

    sub-int/2addr p3, v2

    invoke-virtual {p5, p3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p3

    if-ne p3, v1, :cond_a

    if-eqz p4, :cond_9

    invoke-virtual {p5}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {p5, p0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_3

    :cond_9
    invoke-virtual {p5, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_a
    :goto_3
    if-eqz p1, :cond_b

    const/16 p0, 0x45

    invoke-virtual {p5, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sub-int/2addr p2, v2

    invoke-static {p2, p5}, Lorg/codehaus/plexus/util/TypeFormat;->format(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_b
    return-object p5

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Specified precision would result in too many digits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static format(DILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 7

    if-lez p2, :cond_0

    const/16 v0, 0x13

    if-gt p2, v0, :cond_0

    sget-object v0, Lorg/codehaus/plexus/util/TypeFormat;->DOUBLE_POW_10:[D

    add-int/lit8 p2, p2, -0x1

    aget-wide v1, v0, p2

    div-double v0, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1, p3}, Lorg/codehaus/plexus/util/TypeFormat;->format(DDLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "digits: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not in range [1 .. 19]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static format(DLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/codehaus/plexus/util/TypeFormat;->format(DDLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static format(FFLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 9

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    cmpl-float p1, p0, v0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    sget p1, Lorg/codehaus/plexus/util/TypeFormat;->FLOAT_RELATIVE_ERROR:F

    mul-float p1, p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/4 v4, 0x0

    :goto_0
    float-to-double v0, p0

    float-to-double v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/codehaus/plexus/util/TypeFormat;->format(DDZLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "0.0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "precision: Negative values not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static format(FLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/codehaus/plexus/util/TypeFormat;->format(FFLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static format(IILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    invoke-static {p0, p2}, Lorg/codehaus/plexus/util/TypeFormat;->format(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    const/16 v0, 0x24

    if-gt p1, v0, :cond_2

    if-gez p0, :cond_1

    const/16 v0, 0x2d

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    neg-int p0, p0

    :goto_0
    invoke-static {p0, p1, p2}, Lorg/codehaus/plexus/util/TypeFormat;->format2(IILjava/lang/StringBuffer;)V

    return-object p2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "radix: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static format(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5

    if-gtz p0, :cond_2

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    const-string p0, "-2147483648"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1

    :cond_0
    if-nez p0, :cond_1

    const/16 p0, 0x30

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p1

    :cond_1
    neg-int p0, p0

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    sget-object v1, Lorg/codehaus/plexus/util/TypeFormat;->INT_POW_10:[I

    aget v1, v1, v0

    if-lt p0, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    sget-object v1, Lorg/codehaus/plexus/util/TypeFormat;->INT_POW_10:[I

    aget v1, v1, v0

    div-int v2, p0, v1

    mul-int v1, v1, v2

    sub-int/2addr p0, v1

    sget-object v1, Lorg/codehaus/plexus/util/TypeFormat;->DIGITS:[C

    aget-char v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public static format(JILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 7

    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    invoke-static {p0, p1, p3}, Lorg/codehaus/plexus/util/TypeFormat;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-lt p2, v0, :cond_2

    const/16 v0, 0x24

    if-gt p2, v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const/16 v0, 0x2d

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    neg-long p0, p0

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lorg/codehaus/plexus/util/TypeFormat;->format2(JILjava/lang/StringBuffer;)V

    return-object p3

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "radix: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_2

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, p0, v2

    if-nez v4, :cond_0

    const-string p0, "-9223372036854775808"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2

    :cond_0
    cmp-long v2, p0, v0

    if-nez v2, :cond_1

    const/16 p0, 0x30

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2

    :cond_1
    neg-long p0, p0

    const/16 v0, 0x2d

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x13

    if-ge v0, v1, :cond_3

    sget-object v1, Lorg/codehaus/plexus/util/TypeFormat;->LONG_POW_10:[J

    aget-wide v2, v1, v0

    cmp-long v1, p0, v2

    if-ltz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    sget-object v1, Lorg/codehaus/plexus/util/TypeFormat;->LONG_POW_10:[J

    aget-wide v2, v1, v0

    div-long v4, p0, v2

    long-to-int v1, v4

    int-to-long v4, v1

    mul-long v4, v4, v2

    sub-long/2addr p0, v4

    sget-object v2, Lorg/codehaus/plexus/util/TypeFormat;->DIGITS:[C

    aget-char v1, v2, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    return-object p2
.end method

.method public static format(SILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/codehaus/plexus/util/TypeFormat;->format(IILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static format(SLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 2

    invoke-static {p0, p1}, Lorg/codehaus/plexus/util/TypeFormat;->format(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static format(ZLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 2

    if-eqz p0, :cond_0

    const-string p0, "true"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1

    :cond_0
    const-string p0, "false"

    goto :goto_0
.end method

.method private static format2(IILjava/lang/StringBuffer;)V
    .registers 4

    neg-int v0, p1

    if-gt p0, v0, :cond_0

    div-int v0, p0, p1

    invoke-static {v0, p1, p2}, Lorg/codehaus/plexus/util/TypeFormat;->format2(IILjava/lang/StringBuffer;)V

    sget-object v0, Lorg/codehaus/plexus/util/TypeFormat;->DIGITS:[C

    rem-int/2addr p0, p1

    neg-int p0, p0

    aget-char p0, v0, p0

    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    sget-object p1, Lorg/codehaus/plexus/util/TypeFormat;->DIGITS:[C

    neg-int p0, p0

    aget-char p0, p1, p0

    goto :goto_0
.end method

.method private static format2(JILjava/lang/StringBuffer;)V
    .registers 8

    neg-int v0, p2

    int-to-long v0, v0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    int-to-long v0, p2

    div-long v2, p0, v0

    invoke-static {v2, v3, p2, p3}, Lorg/codehaus/plexus/util/TypeFormat;->format2(JILjava/lang/StringBuffer;)V

    sget-object p2, Lorg/codehaus/plexus/util/TypeFormat;->DIGITS:[C

    rem-long/2addr p0, v0

    neg-long p0, p0

    long-to-int p0, p0

    aget-char p0, p2, p0

    :goto_0
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    sget-object p2, Lorg/codehaus/plexus/util/TypeFormat;->DIGITS:[C

    neg-long p0, p0

    long-to-int p0, p0

    aget-char p0, p2, p0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 11

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-eqz v0, :cond_4

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_0
    if-gt p2, v3, :cond_3

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_2

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_1
    if-ge v5, v0, :cond_1

    add-int v6, p2, v5

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static final multE(DI)D
    .registers 6

    const-wide v0, 0x444b1ae4d6e2ef50L    # 1.0E21

    if-ltz p2, :cond_1

    const/16 v2, 0x134

    if-gt p2, v2, :cond_0

    sget-object v0, Lorg/codehaus/plexus/util/TypeFormat;->DOUBLE_POW_10:[D

    aget-wide v1, v0, p2

    mul-double p0, p0, v1

    return-wide p0

    :cond_0
    mul-double p0, p0, v0

    add-int/lit8 p2, p2, -0x15

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sget-object v0, Lorg/codehaus/plexus/util/TypeFormat;->DOUBLE_POW_10:[D

    aget-wide v1, v0, p2

    mul-double p0, p0, v1

    return-wide p0

    :cond_1
    const/16 v2, -0x134

    if-lt p2, v2, :cond_2

    sget-object v0, Lorg/codehaus/plexus/util/TypeFormat;->DOUBLE_POW_10:[D

    neg-int p2, p2

    aget-wide v1, v0, p2

    div-double/2addr p0, v1

    return-wide p0

    :cond_2
    div-double/2addr p0, v0

    add-int/lit8 p2, p2, 0x15

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sget-object v0, Lorg/codehaus/plexus/util/TypeFormat;->DOUBLE_POW_10:[D

    neg-int p2, p2

    aget-wide v1, v0, p2

    div-double/2addr p0, v1

    return-wide p0
.end method

.method public static parseBoolean(Ljava/lang/CharSequence;)Z
    .registers 6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x74

    if-eq v0, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x54

    if-ne v0, v2, :cond_4

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x72

    if-eq v2, v3, :cond_1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_4

    :cond_1
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x75

    if-eq v3, v4, :cond_2

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x55

    if-ne v2, v3, :cond_4

    :cond_2
    const/4 v2, 0x3

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x65

    if-eq v3, v4, :cond_3

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 v2, 0x45

    if-ne p0, v2, :cond_4

    :cond_3
    return v0

    :cond_4
    return v1
.end method

.method public static parseDouble(Ljava/lang/CharSequence;)D
    .registers 19

    move-object/from16 v0, p0

    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/16 v8, 0x2b

    if-nez v5, :cond_2

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, 0x1

    :goto_2
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x4e

    if-eq v10, v11, :cond_3

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x49

    if-ne v10, v11, :cond_6

    :cond_3
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "NaN"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_4
    invoke-interface {v0, v9, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Infinity"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v5, :cond_5

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0

    :cond_5
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    :cond_6
    move-wide v10, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v13, 0x2e

    const/16 v14, 0x39

    const/16 v15, 0x30

    if-ne v12, v13, :cond_7

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    const/16 v13, 0x65

    if-eq v12, v13, :cond_a

    const/16 v13, 0x45

    if-eq v12, v13, :cond_a

    if-lt v12, v15, :cond_9

    if-gt v12, v14, :cond_9

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    mul-double v10, v10, v16

    add-int/lit8 v12, v12, -0x30

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v12

    if-eqz v2, :cond_8

    add-int/lit8 v3, v3, -0x1

    :cond_8
    :goto_4
    add-int/lit8 v9, v9, 0x1

    if-ge v9, v1, :cond_a

    goto :goto_3

    :cond_9
    :try_start_1
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "For input characters: \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    if-eqz v5, :cond_b

    neg-double v10, v10

    :cond_b
    if-ge v9, v1, :cond_13

    add-int/2addr v9, v7

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_c

    goto :goto_5

    :cond_c
    const/4 v7, 0x0

    :goto_5
    if-nez v7, :cond_d

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_e

    :cond_d
    add-int/lit8 v9, v9, 0x1

    :cond_e
    :goto_6
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-lt v2, v15, :cond_12

    if-gt v2, v14, :cond_12

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v4, v2

    const v2, 0x989680

    if-le v4, v2, :cond_f

    const v4, 0x989680

    :cond_f
    add-int/lit8 v9, v9, 0x1

    if-ge v9, v1, :cond_10

    goto :goto_6

    :cond_10
    if-eqz v7, :cond_11

    neg-int v4, v4

    :cond_11
    add-int/2addr v3, v4

    goto :goto_7

    :cond_12
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "For input characters: \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    :goto_7
    invoke-static {v10, v11, v3}, Lorg/codehaus/plexus/util/TypeFormat;->multE(DI)D

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-wide v1

    :catch_0
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "For input characters: \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseFloat(Ljava/lang/CharSequence;)F
    .registers 6

    invoke-static {p0}, Lorg/codehaus/plexus/util/TypeFormat;->parseDouble(Ljava/lang/CharSequence;)D

    move-result-wide v0

    const-wide/high16 v2, 0x36a0000000000000L    # 1.401298464324817E-45

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    const-wide v2, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    double-to-float p0, v0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Float overflow for input characters: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseInt(Ljava/lang/CharSequence;)I
    .registers 2

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lorg/codehaus/plexus/util/TypeFormat;->parseInt(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public static parseInt(Ljava/lang/CharSequence;I)I
    .registers 10

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/high16 v2, -0x80000000

    goto :goto_1

    :cond_1
    const v2, -0x7fffffff

    :goto_1
    div-int v4, v2, p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v1, :cond_3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_2
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    mul-int v7, v0, p1

    if-ltz v6, :cond_6

    if-lt v0, v4, :cond_6

    add-int v0, v2, v6

    if-lt v7, v0, :cond_6

    sub-int v0, v7, v6

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v5, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    return v0

    :cond_5
    neg-int p0, v0

    return p0

    :cond_6
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "For input characters: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "For input characters: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parseLong(Ljava/lang/CharSequence;)J
    .registers 3

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lorg/codehaus/plexus/util/TypeFormat;->parseLong(Ljava/lang/CharSequence;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLong(Ljava/lang/CharSequence;I)J
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-wide/16 v6, 0x0

    if-eqz v3, :cond_1

    const-wide/high16 v8, -0x8000000000000000L

    goto :goto_1

    :cond_1
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    int-to-long v10, v1

    div-long v12, v8, v10

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    const/16 v15, 0x2b

    if-ne v14, v15, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    :goto_2
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    mul-long v14, v6, v10

    if-ltz v5, :cond_6

    cmp-long v16, v6, v12

    if-ltz v16, :cond_6

    int-to-long v5, v5

    add-long v16, v8, v5

    cmp-long v7, v14, v16

    if-ltz v7, :cond_6

    sub-long v5, v14, v5

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v4, :cond_4

    move-wide v6, v5

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    return-wide v5

    :cond_5
    neg-long v0, v5

    return-wide v0

    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "For input characters: \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "For input characters: \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseShort(Ljava/lang/CharSequence;)S
    .registers 2

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lorg/codehaus/plexus/util/TypeFormat;->parseShort(Ljava/lang/CharSequence;I)S

    move-result p0

    return p0
.end method

.method public static parseShort(Ljava/lang/CharSequence;I)S
    .registers 10

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/16 v2, -0x8000

    goto :goto_1

    :cond_1
    const/16 v2, -0x7fff

    :goto_1
    div-int v4, v2, p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v1, :cond_3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_2
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    mul-int v7, v0, p1

    if-ltz v6, :cond_6

    if-lt v0, v4, :cond_6

    add-int v0, v2, v6

    if-lt v7, v0, :cond_6

    sub-int v0, v7, v6

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v5, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    neg-int v0, v0

    :goto_3
    int-to-short p0, v0

    return p0

    :cond_6
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "For input characters: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "For input characters: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
