.class public final enum Lorg/jf/dexlib2/Format;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lorg/jf/dexlib2/Format;

.field public static final enum ArrayPayload:Lorg/jf/dexlib2/Format;

.field public static final enum Format10t:Lorg/jf/dexlib2/Format;

.field public static final enum Format10x:Lorg/jf/dexlib2/Format;

.field public static final enum Format11n:Lorg/jf/dexlib2/Format;

.field public static final enum Format11x:Lorg/jf/dexlib2/Format;

.field public static final enum Format12x:Lorg/jf/dexlib2/Format;

.field public static final enum Format20bc:Lorg/jf/dexlib2/Format;

.field public static final enum Format20t:Lorg/jf/dexlib2/Format;

.field public static final enum Format21c:Lorg/jf/dexlib2/Format;

.field public static final enum Format21ih:Lorg/jf/dexlib2/Format;

.field public static final enum Format21lh:Lorg/jf/dexlib2/Format;

.field public static final enum Format21s:Lorg/jf/dexlib2/Format;

.field public static final enum Format21t:Lorg/jf/dexlib2/Format;

.field public static final enum Format22b:Lorg/jf/dexlib2/Format;

.field public static final enum Format22c:Lorg/jf/dexlib2/Format;

.field public static final enum Format22cs:Lorg/jf/dexlib2/Format;

.field public static final enum Format22s:Lorg/jf/dexlib2/Format;

.field public static final enum Format22t:Lorg/jf/dexlib2/Format;

.field public static final enum Format22x:Lorg/jf/dexlib2/Format;

.field public static final enum Format23x:Lorg/jf/dexlib2/Format;

.field public static final enum Format30t:Lorg/jf/dexlib2/Format;

.field public static final enum Format31c:Lorg/jf/dexlib2/Format;

.field public static final enum Format31i:Lorg/jf/dexlib2/Format;

.field public static final enum Format31t:Lorg/jf/dexlib2/Format;

.field public static final enum Format32x:Lorg/jf/dexlib2/Format;

.field public static final enum Format35c:Lorg/jf/dexlib2/Format;

.field public static final enum Format35mi:Lorg/jf/dexlib2/Format;

.field public static final enum Format35ms:Lorg/jf/dexlib2/Format;

.field public static final enum Format3rc:Lorg/jf/dexlib2/Format;

.field public static final enum Format3rmi:Lorg/jf/dexlib2/Format;

.field public static final enum Format3rms:Lorg/jf/dexlib2/Format;

.field public static final enum Format45cc:Lorg/jf/dexlib2/Format;

.field public static final enum Format4rcc:Lorg/jf/dexlib2/Format;

.field public static final enum Format51l:Lorg/jf/dexlib2/Format;

.field public static final enum PackedSwitchPayload:Lorg/jf/dexlib2/Format;

.field public static final enum SparseSwitchPayload:Lorg/jf/dexlib2/Format;

.field public static final enum UnresolvedOdexInstruction:Lorg/jf/dexlib2/Format;


# instance fields
.field public final isPayloadFormat:Z

.field public final size:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format10t"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format10t:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format10x"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format10x:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format11n"

    invoke-direct {v0, v1, v3, v3}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format11n:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format11x"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format11x:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format12x"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v3}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format12x:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format20bc"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v6}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format20bc:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format20t"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v6}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format20t:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format21c"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v6}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format21c:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format21ih"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v6}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format21ih:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format21lh"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v6}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format21lh:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format21s"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v6}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format21s:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format21t"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v6}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format21t:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format22b"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v6}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format22b:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format22c"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v6}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format22c:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format22cs"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v6}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format22cs:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format22s"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v6}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format22s:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format22t"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v6}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format22t:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format22x"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v6}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format22x:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format23x"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v6}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format23x:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format30t"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v8}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format30t:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format31c"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v8}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format31c:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format31i"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v8}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format31i:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format31t"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15, v8}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format31t:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format32x"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15, v8}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format32x:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format35c"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15, v8}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format35c:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format35mi"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15, v8}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format35mi:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format35ms"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15, v8}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format35ms:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format3rc"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15, v8}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format3rc:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format3rmi"

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v15, v8}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format3rmi:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format3rms"

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v15, v8}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format3rms:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format45cc"

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v15, v10}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format45cc:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format4rcc"

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v15, v10}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format4rcc:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "Format51l"

    const/16 v15, 0x20

    invoke-direct {v0, v1, v15, v12}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->Format51l:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "ArrayPayload"

    const/4 v15, -0x1

    const/16 v14, 0x21

    invoke-direct {v0, v1, v14, v15, v4}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/jf/dexlib2/Format;->ArrayPayload:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "PackedSwitchPayload"

    const/16 v14, 0x22

    invoke-direct {v0, v1, v14, v15, v4}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/jf/dexlib2/Format;->PackedSwitchPayload:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "SparseSwitchPayload"

    const/16 v14, 0x23

    invoke-direct {v0, v1, v14, v15, v4}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/jf/dexlib2/Format;->SparseSwitchPayload:Lorg/jf/dexlib2/Format;

    new-instance v0, Lorg/jf/dexlib2/Format;

    const-string v1, "UnresolvedOdexInstruction"

    const/16 v14, 0x24

    invoke-direct {v0, v1, v14, v15}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jf/dexlib2/Format;->UnresolvedOdexInstruction:Lorg/jf/dexlib2/Format;

    const/16 v0, 0x25

    new-array v0, v0, [Lorg/jf/dexlib2/Format;

    sget-object v1, Lorg/jf/dexlib2/Format;->Format10t:Lorg/jf/dexlib2/Format;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->Format10x:Lorg/jf/dexlib2/Format;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jf/dexlib2/Format;->Format11n:Lorg/jf/dexlib2/Format;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jf/dexlib2/Format;->Format11x:Lorg/jf/dexlib2/Format;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jf/dexlib2/Format;->Format12x:Lorg/jf/dexlib2/Format;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jf/dexlib2/Format;->Format20bc:Lorg/jf/dexlib2/Format;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jf/dexlib2/Format;->Format20t:Lorg/jf/dexlib2/Format;

    aput-object v1, v0, v8

    sget-object v1, Lorg/jf/dexlib2/Format;->Format21c:Lorg/jf/dexlib2/Format;

    aput-object v1, v0, v9

    sget-object v1, Lorg/jf/dexlib2/Format;->Format21ih:Lorg/jf/dexlib2/Format;

    aput-object v1, v0, v10

    sget-object v1, Lorg/jf/dexlib2/Format;->Format21lh:Lorg/jf/dexlib2/Format;

    aput-object v1, v0, v11

    sget-object v1, Lorg/jf/dexlib2/Format;->Format21s:Lorg/jf/dexlib2/Format;

    aput-object v1, v0, v12

    sget-object v1, Lorg/jf/dexlib2/Format;->Format21t:Lorg/jf/dexlib2/Format;

    aput-object v1, v0, v13

    sget-object v1, Lorg/jf/dexlib2/Format;->Format22b:Lorg/jf/dexlib2/Format;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->Format22c:Lorg/jf/dexlib2/Format;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->Format22cs:Lorg/jf/dexlib2/Format;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->Format22s:Lorg/jf/dexlib2/Format;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->Format22t:Lorg/jf/dexlib2/Format;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->Format22x:Lorg/jf/dexlib2/Format;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->Format23x:Lorg/jf/dexlib2/Format;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->Format30t:Lorg/jf/dexlib2/Format;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->Format31c:Lorg/jf/dexlib2/Format;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->Format31i:Lorg/jf/dexlib2/Format;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->Format31t:Lorg/jf/dexlib2/Format;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->Format32x:Lorg/jf/dexlib2/Format;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->Format35c:Lorg/jf/dexlib2/Format;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->Format35mi:Lorg/jf/dexlib2/Format;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->Format35ms:Lorg/jf/dexlib2/Format;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->Format3rc:Lorg/jf/dexlib2/Format;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->Format3rmi:Lorg/jf/dexlib2/Format;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->Format3rms:Lorg/jf/dexlib2/Format;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->Format45cc:Lorg/jf/dexlib2/Format;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->Format4rcc:Lorg/jf/dexlib2/Format;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->Format51l:Lorg/jf/dexlib2/Format;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->ArrayPayload:Lorg/jf/dexlib2/Format;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->PackedSwitchPayload:Lorg/jf/dexlib2/Format;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->SparseSwitchPayload:Lorg/jf/dexlib2/Format;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/Format;->UnresolvedOdexInstruction:Lorg/jf/dexlib2/Format;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sput-object v0, Lorg/jf/dexlib2/Format;->$VALUES:[Lorg/jf/dexlib2/Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jf/dexlib2/Format;-><init>(Ljava/lang/String;IIZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/jf/dexlib2/Format;->size:I

    iput-boolean p4, p0, Lorg/jf/dexlib2/Format;->isPayloadFormat:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jf/dexlib2/Format;
    .registers 2

    const-class v0, Lorg/jf/dexlib2/Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jf/dexlib2/Format;

    return-object p0
.end method

.method public static values()[Lorg/jf/dexlib2/Format;
    .registers 1

    sget-object v0, Lorg/jf/dexlib2/Format;->$VALUES:[Lorg/jf/dexlib2/Format;

    invoke-virtual {v0}, [Lorg/jf/dexlib2/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jf/dexlib2/Format;

    return-object v0
.end method
