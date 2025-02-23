.class synthetic Lorg/jf/baksmali/Adaptors/ClassDefinition$1;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $SwitchMap$org$jf$dexlib2$Opcode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lorg/jf/dexlib2/Opcode;->values()[Lorg/jf/dexlib2/Opcode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jf/baksmali/Adaptors/ClassDefinition$1;->$SwitchMap$org$jf$dexlib2$Opcode:[I

    :try_start_0
    sget-object v0, Lorg/jf/baksmali/Adaptors/ClassDefinition$1;->$SwitchMap$org$jf$dexlib2$Opcode:[I

    sget-object v1, Lorg/jf/dexlib2/Opcode;->SPUT:Lorg/jf/dexlib2/Opcode;

    invoke-virtual {v1}, Lorg/jf/dexlib2/Opcode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/jf/baksmali/Adaptors/ClassDefinition$1;->$SwitchMap$org$jf$dexlib2$Opcode:[I

    sget-object v1, Lorg/jf/dexlib2/Opcode;->SPUT_BOOLEAN:Lorg/jf/dexlib2/Opcode;

    invoke-virtual {v1}, Lorg/jf/dexlib2/Opcode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/jf/baksmali/Adaptors/ClassDefinition$1;->$SwitchMap$org$jf$dexlib2$Opcode:[I

    sget-object v1, Lorg/jf/dexlib2/Opcode;->SPUT_BYTE:Lorg/jf/dexlib2/Opcode;

    invoke-virtual {v1}, Lorg/jf/dexlib2/Opcode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/jf/baksmali/Adaptors/ClassDefinition$1;->$SwitchMap$org$jf$dexlib2$Opcode:[I

    sget-object v1, Lorg/jf/dexlib2/Opcode;->SPUT_CHAR:Lorg/jf/dexlib2/Opcode;

    invoke-virtual {v1}, Lorg/jf/dexlib2/Opcode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lorg/jf/baksmali/Adaptors/ClassDefinition$1;->$SwitchMap$org$jf$dexlib2$Opcode:[I

    sget-object v1, Lorg/jf/dexlib2/Opcode;->SPUT_OBJECT:Lorg/jf/dexlib2/Opcode;

    invoke-virtual {v1}, Lorg/jf/dexlib2/Opcode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lorg/jf/baksmali/Adaptors/ClassDefinition$1;->$SwitchMap$org$jf$dexlib2$Opcode:[I

    sget-object v1, Lorg/jf/dexlib2/Opcode;->SPUT_SHORT:Lorg/jf/dexlib2/Opcode;

    invoke-virtual {v1}, Lorg/jf/dexlib2/Opcode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lorg/jf/baksmali/Adaptors/ClassDefinition$1;->$SwitchMap$org$jf$dexlib2$Opcode:[I

    sget-object v1, Lorg/jf/dexlib2/Opcode;->SPUT_WIDE:Lorg/jf/dexlib2/Opcode;

    invoke-virtual {v1}, Lorg/jf/dexlib2/Opcode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
