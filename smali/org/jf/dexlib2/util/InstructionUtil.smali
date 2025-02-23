.class public final Lorg/jf/dexlib2/util/InstructionUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInvokeStatic(Lorg/jf/dexlib2/Opcode;)Z
    .registers 2

    sget-object v0, Lorg/jf/dexlib2/Opcode;->INVOKE_STATIC:Lorg/jf/dexlib2/Opcode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/jf/dexlib2/Opcode;->INVOKE_STATIC_RANGE:Lorg/jf/dexlib2/Opcode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
