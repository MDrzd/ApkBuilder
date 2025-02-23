.class public Lorg/jf/dexlib2/analysis/RegisterType;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final BOOLEAN:B = 0x4t

.field public static final BOOLEAN_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

.field public static final BYTE:B = 0x5t

.field public static final BYTE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

.field public static final CATEGORY_NAMES:[Ljava/lang/String;

.field public static final CHAR:B = 0x9t

.field public static final CHAR_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

.field public static final CONFLICTED:B = 0x13t

.field public static final CONFLICTED_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

.field public static final DOUBLE_HI:B = 0xft

.field public static final DOUBLE_HI_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

.field public static final DOUBLE_LO:B = 0xet

.field public static final DOUBLE_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

.field public static final FLOAT:B = 0xbt

.field public static final FLOAT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

.field public static final INTEGER:B = 0xat

.field public static final INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

.field public static final LONG_HI:B = 0xdt

.field public static final LONG_HI_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

.field public static final LONG_LO:B = 0xct

.field public static final LONG_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

.field public static final NULL:B = 0x2t

.field public static final NULL_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

.field public static final ONE:B = 0x3t

.field public static final ONE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

.field public static final POS_BYTE:B = 0x6t

.field public static final POS_BYTE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

.field public static final POS_SHORT:B = 0x8t

.field public static final POS_SHORT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

.field public static final REFERENCE:B = 0x12t

.field public static final SHORT:B = 0x7t

.field public static final SHORT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

.field public static final UNINIT:B = 0x1t

.field public static final UNINIT_REF:B = 0x10t

.field public static final UNINIT_THIS:B = 0x11t

.field public static final UNINIT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

.field public static final UNKNOWN:B

.field public static final UNKNOWN_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

.field protected static mergeTable:[[B


# instance fields
.field public final category:B

.field public final type:Lorg/jf/dexlib2/analysis/TypeProto;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 17

    const/16 v0, 0x14

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Unknown"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Uninit"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Null"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "One"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "Boolean"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "Byte"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "PosByte"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "Short"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "PosShort"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "Char"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "Integer"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "Float"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "LongLo"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const/16 v2, 0xd

    const-string v16, "LongHi"

    aput-object v16, v1, v2

    const/16 v2, 0xe

    const-string v16, "DoubleLo"

    aput-object v16, v1, v2

    const/16 v2, 0xf

    const-string v16, "DoubleHi"

    aput-object v16, v1, v2

    const/16 v2, 0x10

    const-string v16, "UninitRef"

    aput-object v16, v1, v2

    const/16 v2, 0x11

    const-string v16, "UninitThis"

    aput-object v16, v1, v2

    const/16 v2, 0x12

    const-string v16, "Reference"

    aput-object v16, v1, v2

    const/16 v2, 0x13

    const-string v16, "Conflicted"

    aput-object v16, v1, v2

    sput-object v1, Lorg/jf/dexlib2/analysis/RegisterType;->CATEGORY_NAMES:[Ljava/lang/String;

    new-array v1, v0, [[B

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    aput-object v2, v1, v3

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    aput-object v2, v1, v4

    new-array v2, v0, [B

    fill-array-data v2, :array_2

    aput-object v2, v1, v5

    new-array v2, v0, [B

    fill-array-data v2, :array_3

    aput-object v2, v1, v6

    new-array v2, v0, [B

    fill-array-data v2, :array_4

    aput-object v2, v1, v7

    new-array v2, v0, [B

    fill-array-data v2, :array_5

    aput-object v2, v1, v8

    new-array v2, v0, [B

    fill-array-data v2, :array_6

    aput-object v2, v1, v9

    new-array v2, v0, [B

    fill-array-data v2, :array_7

    aput-object v2, v1, v10

    new-array v2, v0, [B

    fill-array-data v2, :array_8

    aput-object v2, v1, v11

    new-array v2, v0, [B

    fill-array-data v2, :array_9

    aput-object v2, v1, v12

    new-array v2, v0, [B

    fill-array-data v2, :array_a

    aput-object v2, v1, v13

    new-array v2, v0, [B

    fill-array-data v2, :array_b

    aput-object v2, v1, v14

    new-array v2, v0, [B

    fill-array-data v2, :array_c

    aput-object v2, v1, v15

    const/16 v2, 0xd

    new-array v15, v0, [B

    fill-array-data v15, :array_d

    aput-object v15, v1, v2

    const/16 v2, 0xe

    new-array v15, v0, [B

    fill-array-data v15, :array_e

    aput-object v15, v1, v2

    const/16 v2, 0xf

    new-array v15, v0, [B

    fill-array-data v15, :array_f

    aput-object v15, v1, v2

    const/16 v2, 0x10

    new-array v15, v0, [B

    fill-array-data v15, :array_10

    aput-object v15, v1, v2

    const/16 v2, 0x11

    new-array v15, v0, [B

    fill-array-data v15, :array_11

    aput-object v15, v1, v2

    const/16 v2, 0x12

    new-array v15, v0, [B

    fill-array-data v15, :array_12

    aput-object v15, v1, v2

    const/16 v2, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_13

    aput-object v0, v1, v2

    sput-object v1, Lorg/jf/dexlib2/analysis/RegisterType;->mergeTable:[[B

    new-instance v0, Lorg/jf/dexlib2/analysis/RegisterType;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lorg/jf/dexlib2/analysis/RegisterType;-><init>(BLorg/jf/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->UNKNOWN_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    new-instance v0, Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v4, v1}, Lorg/jf/dexlib2/analysis/RegisterType;-><init>(BLorg/jf/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->UNINIT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    new-instance v0, Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v5, v1}, Lorg/jf/dexlib2/analysis/RegisterType;-><init>(BLorg/jf/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->NULL_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    new-instance v0, Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v6, v1}, Lorg/jf/dexlib2/analysis/RegisterType;-><init>(BLorg/jf/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->ONE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    new-instance v0, Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v7, v1}, Lorg/jf/dexlib2/analysis/RegisterType;-><init>(BLorg/jf/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->BOOLEAN_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    new-instance v0, Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v8, v1}, Lorg/jf/dexlib2/analysis/RegisterType;-><init>(BLorg/jf/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    new-instance v0, Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v9, v1}, Lorg/jf/dexlib2/analysis/RegisterType;-><init>(BLorg/jf/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->POS_BYTE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    new-instance v0, Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v10, v1}, Lorg/jf/dexlib2/analysis/RegisterType;-><init>(BLorg/jf/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->SHORT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    new-instance v0, Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v11, v1}, Lorg/jf/dexlib2/analysis/RegisterType;-><init>(BLorg/jf/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->POS_SHORT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    new-instance v0, Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v12, v1}, Lorg/jf/dexlib2/analysis/RegisterType;-><init>(BLorg/jf/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->CHAR_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    new-instance v0, Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v13, v1}, Lorg/jf/dexlib2/analysis/RegisterType;-><init>(BLorg/jf/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    new-instance v0, Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {v0, v14, v1}, Lorg/jf/dexlib2/analysis/RegisterType;-><init>(BLorg/jf/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->FLOAT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    new-instance v0, Lorg/jf/dexlib2/analysis/RegisterType;

    const/16 v2, 0xc

    invoke-direct {v0, v2, v1}, Lorg/jf/dexlib2/analysis/RegisterType;-><init>(BLorg/jf/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    new-instance v0, Lorg/jf/dexlib2/analysis/RegisterType;

    const/16 v2, 0xd

    invoke-direct {v0, v2, v1}, Lorg/jf/dexlib2/analysis/RegisterType;-><init>(BLorg/jf/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->LONG_HI_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    new-instance v0, Lorg/jf/dexlib2/analysis/RegisterType;

    const/16 v2, 0xe

    invoke-direct {v0, v2, v1}, Lorg/jf/dexlib2/analysis/RegisterType;-><init>(BLorg/jf/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->DOUBLE_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    new-instance v0, Lorg/jf/dexlib2/analysis/RegisterType;

    const/16 v2, 0xf

    invoke-direct {v0, v2, v1}, Lorg/jf/dexlib2/analysis/RegisterType;-><init>(BLorg/jf/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->DOUBLE_HI_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    new-instance v0, Lorg/jf/dexlib2/analysis/RegisterType;

    const/16 v2, 0x13

    invoke-direct {v0, v2, v1}, Lorg/jf/dexlib2/analysis/RegisterType;-><init>(BLorg/jf/dexlib2/analysis/TypeProto;)V

    sput-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->CONFLICTED_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_2
    .array-data 1
        0x2t
        0x13t
        0x2t
        0x4t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x12t
        0x13t
    .end array-data

    :array_3
    .array-data 1
        0x3t
        0x13t
        0x4t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_4
    .array-data 1
        0x4t
        0x13t
        0x4t
        0x4t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_5
    .array-data 1
        0x5t
        0x13t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x7t
        0x7t
        0xat
        0xat
        0xbt
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_6
    .array-data 1
        0x6t
        0x13t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_7
    .array-data 1
        0x7t
        0x13t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0xat
        0xat
        0xbt
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_8
    .array-data 1
        0x8t
        0x13t
        0x8t
        0x8t
        0x8t
        0x7t
        0x8t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_9
    .array-data 1
        0x9t
        0x13t
        0x9t
        0x9t
        0x9t
        0xat
        0x9t
        0xat
        0x9t
        0x9t
        0xat
        0xbt
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_a
    .array-data 1
        0xat
        0x13t
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_b
    .array-data 1
        0xbt
        0x13t
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xat
        0xbt
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_c
    .array-data 1
        0xct
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0xct
        0x13t
        0xct
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_d
    .array-data 1
        0xdt
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0xdt
        0x13t
        0xdt
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_e
    .array-data 1
        0xet
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0xct
        0x13t
        0xet
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_f
    .array-data 1
        0xft
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0xdt
        0x13t
        0xft
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_10
    .array-data 1
        0x10t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data

    :array_11
    .array-data 1
        0x11t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x11t
        0x13t
        0x13t
    .end array-data

    :array_12
    .array-data 1
        0x12t
        0x13t
        0x12t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x12t
        0x13t
    .end array-data

    :array_13
    .array-data 1
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
    .end array-data
.end method

.method private constructor <init>(BLorg/jf/dexlib2/analysis/TypeProto;)V
    .registers 3
    .param p2    # Lorg/jf/dexlib2/analysis/TypeProto;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    iput-object p2, p0, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    return-void
.end method

.method public static getRegisterType(BLorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/RegisterType;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/analysis/TypeProto;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Lorg/jf/dexlib2/analysis/RegisterType;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/analysis/RegisterType;-><init>(BLorg/jf/dexlib2/analysis/TypeProto;)V

    return-object v0

    :pswitch_0
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->DOUBLE_HI_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->DOUBLE_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->LONG_HI_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->FLOAT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->CHAR_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->POS_SHORT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :pswitch_8
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->SHORT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :pswitch_9
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->POS_BYTE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :pswitch_a
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :pswitch_b
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->BOOLEAN_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :pswitch_c
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->ONE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :pswitch_d
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->NULL_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :pswitch_e
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->UNINIT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :pswitch_f
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->UNKNOWN_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :cond_0
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->CONFLICTED_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRegisterType(Lorg/jf/dexlib2/analysis/ClassPath;Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/RegisterType;
    .registers 5
    .param p0    # Lorg/jf/dexlib2/analysis/ClassPath;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance p0, Lorg/jf/dexlib2/analysis/AnalysisException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/jf/dexlib2/analysis/AnalysisException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :sswitch_0
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->BOOLEAN_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :sswitch_1
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->SHORT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :sswitch_2
    const/16 v0, 0x12

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(BLorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object p0

    return-object p0

    :sswitch_3
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->LONG_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :sswitch_4
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :sswitch_5
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->FLOAT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :sswitch_6
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->DOUBLE_LO_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :sswitch_7
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->CHAR_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :sswitch_8
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_8
        0x43 -> :sswitch_7
        0x44 -> :sswitch_6
        0x46 -> :sswitch_5
        0x49 -> :sswitch_4
        0x4a -> :sswitch_3
        0x4c -> :sswitch_2
        0x53 -> :sswitch_1
        0x5a -> :sswitch_0
        0x5b -> :sswitch_2
    .end sparse-switch
.end method

.method public static getRegisterTypeForLiteral(I)Lorg/jf/dexlib2/analysis/RegisterType;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/16 v0, -0x8000

    if-ge p0, v0, :cond_0

    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :cond_0
    const/16 v0, -0x80

    if-ge p0, v0, :cond_1

    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->SHORT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :cond_1
    if-gez p0, :cond_2

    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->BYTE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :cond_2
    if-nez p0, :cond_3

    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->NULL_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :cond_3
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->ONE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :cond_4
    const/16 v0, 0x80

    if-ge p0, v0, :cond_5

    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->POS_BYTE_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :cond_5
    const v0, 0x8000

    if-ge p0, v0, :cond_6

    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->POS_SHORT_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :cond_6
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_7

    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->CHAR_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0

    :cond_7
    sget-object p0, Lorg/jf/dexlib2/analysis/RegisterType;->INTEGER_TYPE:Lorg/jf/dexlib2/analysis/RegisterType;

    return-object p0
.end method

.method public static getWideRegisterType(Ljava/lang/CharSequence;Z)Lorg/jf/dexlib2/analysis/RegisterType;
    .registers 6
    .param p0    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x44

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/16 v2, 0x4a

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_0

    const/16 p0, 0xc

    :goto_0
    invoke-static {p0, v3}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(BLorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0xd

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/jf/util/ExceptionWithContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "Cannot use this method for narrow register type: %s"

    invoke-direct {p1, p0, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    if-eqz p1, :cond_3

    const/16 p0, 0xe

    goto :goto_0

    :cond_3
    const/16 p0, 0xf

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/jf/dexlib2/analysis/RegisterType;

    iget-byte v2, p0, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    iget-byte v3, p1, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-byte v2, p0, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    const/16 v3, 0x10

    if-eq v2, v3, :cond_5

    iget-byte v2, p0, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    const/16 v3, 0x11

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    iget-object p1, p1, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    iget-object p1, p1, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    if-nez p1, :cond_5

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget-byte v0, p0, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public merge(Lorg/jf/dexlib2/analysis/RegisterType;)Lorg/jf/dexlib2/analysis/RegisterType;
    .registers 5
    .param p1    # Lorg/jf/dexlib2/analysis/RegisterType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p1, p0}, Lorg/jf/dexlib2/analysis/RegisterType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->mergeTable:[[B

    iget-byte v1, p0, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    aget-object v0, v0, v1

    iget-byte v1, p1, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    aget-byte v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_2

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    if-eqz v1, :cond_1

    iget-object v2, p1, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-interface {v1, v2}, Lorg/jf/dexlib2/analysis/TypeProto;->getCommonSuperclass(Lorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    goto :goto_0

    :cond_2
    const/16 v2, 0x10

    if-eq v0, v2, :cond_6

    const/16 v2, 0x11

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object p0

    :cond_4
    iget-object v2, p1, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object p1

    :cond_5
    invoke-static {v0, v1}, Lorg/jf/dexlib2/analysis/RegisterType;->getRegisterType(BLorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/RegisterType;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    iget-byte v0, p0, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    if-nez v0, :cond_7

    return-object p1

    :cond_7
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/jf/dexlib2/analysis/RegisterType;->CATEGORY_NAMES:[Ljava/lang/String;

    iget-byte v2, p0, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/Writer;)V
    .registers 4

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    sget-object v0, Lorg/jf/dexlib2/analysis/RegisterType;->CATEGORY_NAMES:[Ljava/lang/String;

    iget-byte v1, p0, Lorg/jf/dexlib2/analysis/RegisterType;->category:B

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/RegisterType;->type:Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-interface {v0}, Lorg/jf/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-void
.end method
