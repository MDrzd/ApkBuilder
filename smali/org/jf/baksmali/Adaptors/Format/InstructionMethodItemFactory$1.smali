.class synthetic Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItemFactory$1;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $SwitchMap$org$jf$dexlib2$Format:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lorg/jf/dexlib2/Format;->values()[Lorg/jf/dexlib2/Format;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItemFactory$1;->$SwitchMap$org$jf$dexlib2$Format:[I

    :try_start_0
    sget-object v0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItemFactory$1;->$SwitchMap$org$jf$dexlib2$Format:[I

    sget-object v1, Lorg/jf/dexlib2/Format;->ArrayPayload:Lorg/jf/dexlib2/Format;

    invoke-virtual {v1}, Lorg/jf/dexlib2/Format;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItemFactory$1;->$SwitchMap$org$jf$dexlib2$Format:[I

    sget-object v1, Lorg/jf/dexlib2/Format;->PackedSwitchPayload:Lorg/jf/dexlib2/Format;

    invoke-virtual {v1}, Lorg/jf/dexlib2/Format;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/jf/baksmali/Adaptors/Format/InstructionMethodItemFactory$1;->$SwitchMap$org$jf$dexlib2$Format:[I

    sget-object v1, Lorg/jf/dexlib2/Format;->SparseSwitchPayload:Lorg/jf/dexlib2/Format;

    invoke-virtual {v1}, Lorg/jf/dexlib2/Format;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
