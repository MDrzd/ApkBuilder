.class public final enum Lorg/jf/dexlib2/AccessFlags;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lorg/jf/dexlib2/AccessFlags;

.field public static final enum ABSTRACT:Lorg/jf/dexlib2/AccessFlags;

.field public static final enum ANNOTATION:Lorg/jf/dexlib2/AccessFlags;

.field public static final enum BRIDGE:Lorg/jf/dexlib2/AccessFlags;

.field public static final enum CONSTRUCTOR:Lorg/jf/dexlib2/AccessFlags;

.field public static final enum DECLARED_SYNCHRONIZED:Lorg/jf/dexlib2/AccessFlags;

.field public static final enum ENUM:Lorg/jf/dexlib2/AccessFlags;

.field public static final enum FINAL:Lorg/jf/dexlib2/AccessFlags;

.field public static final enum INTERFACE:Lorg/jf/dexlib2/AccessFlags;

.field public static final enum NATIVE:Lorg/jf/dexlib2/AccessFlags;

.field public static final enum PRIVATE:Lorg/jf/dexlib2/AccessFlags;

.field public static final enum PROTECTED:Lorg/jf/dexlib2/AccessFlags;

.field public static final enum PUBLIC:Lorg/jf/dexlib2/AccessFlags;

.field public static final enum STATIC:Lorg/jf/dexlib2/AccessFlags;

.field public static final enum STRICTFP:Lorg/jf/dexlib2/AccessFlags;

.field public static final enum SYNCHRONIZED:Lorg/jf/dexlib2/AccessFlags;

.field public static final enum SYNTHETIC:Lorg/jf/dexlib2/AccessFlags;

.field public static final enum TRANSIENT:Lorg/jf/dexlib2/AccessFlags;

.field public static final enum VARARGS:Lorg/jf/dexlib2/AccessFlags;

.field public static final enum VOLATILE:Lorg/jf/dexlib2/AccessFlags;

.field private static accessFlagsByName:Ljava/util/HashMap;

.field private static final allFlags:[Lorg/jf/dexlib2/AccessFlags;


# instance fields
.field private accessFlagName:Ljava/lang/String;

.field private validForClass:Z

.field private validForField:Z

.field private validForMethod:Z

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 17

    new-instance v8, Lorg/jf/dexlib2/AccessFlags;

    const-string v1, "PUBLIC"

    const-string v4, "public"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/jf/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v8, Lorg/jf/dexlib2/AccessFlags;->PUBLIC:Lorg/jf/dexlib2/AccessFlags;

    new-instance v0, Lorg/jf/dexlib2/AccessFlags;

    const-string v10, "PRIVATE"

    const-string v13, "private"

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/jf/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v0, Lorg/jf/dexlib2/AccessFlags;->PRIVATE:Lorg/jf/dexlib2/AccessFlags;

    new-instance v0, Lorg/jf/dexlib2/AccessFlags;

    const-string v2, "PROTECTED"

    const-string v5, "protected"

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/jf/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v0, Lorg/jf/dexlib2/AccessFlags;->PROTECTED:Lorg/jf/dexlib2/AccessFlags;

    new-instance v0, Lorg/jf/dexlib2/AccessFlags;

    const-string v10, "STATIC"

    const-string v13, "static"

    const/4 v11, 0x3

    const/16 v12, 0x8

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/jf/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v0, Lorg/jf/dexlib2/AccessFlags;->STATIC:Lorg/jf/dexlib2/AccessFlags;

    new-instance v0, Lorg/jf/dexlib2/AccessFlags;

    const-string v2, "FINAL"

    const-string v5, "final"

    const/4 v3, 0x4

    const/16 v4, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/jf/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v0, Lorg/jf/dexlib2/AccessFlags;->FINAL:Lorg/jf/dexlib2/AccessFlags;

    new-instance v0, Lorg/jf/dexlib2/AccessFlags;

    const-string v10, "SYNCHRONIZED"

    const-string v13, "synchronized"

    const/4 v11, 0x5

    const/16 v12, 0x20

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/jf/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v0, Lorg/jf/dexlib2/AccessFlags;->SYNCHRONIZED:Lorg/jf/dexlib2/AccessFlags;

    new-instance v0, Lorg/jf/dexlib2/AccessFlags;

    const-string v2, "VOLATILE"

    const-string v5, "volatile"

    const/4 v3, 0x6

    const/16 v4, 0x40

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/jf/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v0, Lorg/jf/dexlib2/AccessFlags;->VOLATILE:Lorg/jf/dexlib2/AccessFlags;

    new-instance v0, Lorg/jf/dexlib2/AccessFlags;

    const-string v10, "BRIDGE"

    const-string v13, "bridge"

    const/4 v11, 0x7

    const/16 v12, 0x40

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/jf/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v0, Lorg/jf/dexlib2/AccessFlags;->BRIDGE:Lorg/jf/dexlib2/AccessFlags;

    new-instance v0, Lorg/jf/dexlib2/AccessFlags;

    const-string v2, "TRANSIENT"

    const-string v5, "transient"

    const/16 v3, 0x8

    const/16 v4, 0x80

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/jf/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v0, Lorg/jf/dexlib2/AccessFlags;->TRANSIENT:Lorg/jf/dexlib2/AccessFlags;

    new-instance v0, Lorg/jf/dexlib2/AccessFlags;

    const-string v10, "VARARGS"

    const-string v13, "varargs"

    const/16 v11, 0x9

    const/16 v12, 0x80

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/jf/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v0, Lorg/jf/dexlib2/AccessFlags;->VARARGS:Lorg/jf/dexlib2/AccessFlags;

    new-instance v0, Lorg/jf/dexlib2/AccessFlags;

    const-string v2, "NATIVE"

    const-string v5, "native"

    const/16 v3, 0xa

    const/16 v4, 0x100

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/jf/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v0, Lorg/jf/dexlib2/AccessFlags;->NATIVE:Lorg/jf/dexlib2/AccessFlags;

    new-instance v0, Lorg/jf/dexlib2/AccessFlags;

    const-string v10, "INTERFACE"

    const-string v13, "interface"

    const/16 v11, 0xb

    const/16 v12, 0x200

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/jf/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v0, Lorg/jf/dexlib2/AccessFlags;->INTERFACE:Lorg/jf/dexlib2/AccessFlags;

    new-instance v0, Lorg/jf/dexlib2/AccessFlags;

    const-string v2, "ABSTRACT"

    const-string v5, "abstract"

    const/16 v3, 0xc

    const/16 v4, 0x400

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/jf/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v0, Lorg/jf/dexlib2/AccessFlags;->ABSTRACT:Lorg/jf/dexlib2/AccessFlags;

    new-instance v0, Lorg/jf/dexlib2/AccessFlags;

    const-string v10, "STRICTFP"

    const-string v13, "strictfp"

    const/16 v11, 0xd

    const/16 v12, 0x800

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/jf/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v0, Lorg/jf/dexlib2/AccessFlags;->STRICTFP:Lorg/jf/dexlib2/AccessFlags;

    new-instance v0, Lorg/jf/dexlib2/AccessFlags;

    const-string v2, "SYNTHETIC"

    const-string v5, "synthetic"

    const/16 v3, 0xe

    const/16 v4, 0x1000

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/jf/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v0, Lorg/jf/dexlib2/AccessFlags;->SYNTHETIC:Lorg/jf/dexlib2/AccessFlags;

    new-instance v0, Lorg/jf/dexlib2/AccessFlags;

    const-string v10, "ANNOTATION"

    const-string v13, "annotation"

    const/16 v11, 0xf

    const/16 v12, 0x2000

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/jf/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v0, Lorg/jf/dexlib2/AccessFlags;->ANNOTATION:Lorg/jf/dexlib2/AccessFlags;

    new-instance v0, Lorg/jf/dexlib2/AccessFlags;

    const-string v2, "ENUM"

    const-string v5, "enum"

    const/16 v3, 0x10

    const/16 v4, 0x4000

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/jf/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v0, Lorg/jf/dexlib2/AccessFlags;->ENUM:Lorg/jf/dexlib2/AccessFlags;

    new-instance v0, Lorg/jf/dexlib2/AccessFlags;

    const-string v10, "CONSTRUCTOR"

    const-string v13, "constructor"

    const/16 v11, 0x11

    const/high16 v12, 0x10000

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/jf/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v0, Lorg/jf/dexlib2/AccessFlags;->CONSTRUCTOR:Lorg/jf/dexlib2/AccessFlags;

    new-instance v0, Lorg/jf/dexlib2/AccessFlags;

    const-string v2, "DECLARED_SYNCHRONIZED"

    const-string v5, "declared-synchronized"

    const/16 v3, 0x12

    const/high16 v4, 0x20000

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/jf/dexlib2/AccessFlags;-><init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V

    sput-object v0, Lorg/jf/dexlib2/AccessFlags;->DECLARED_SYNCHRONIZED:Lorg/jf/dexlib2/AccessFlags;

    const/16 v0, 0x13

    new-array v0, v0, [Lorg/jf/dexlib2/AccessFlags;

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->PUBLIC:Lorg/jf/dexlib2/AccessFlags;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->PRIVATE:Lorg/jf/dexlib2/AccessFlags;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->PROTECTED:Lorg/jf/dexlib2/AccessFlags;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->STATIC:Lorg/jf/dexlib2/AccessFlags;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->FINAL:Lorg/jf/dexlib2/AccessFlags;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->SYNCHRONIZED:Lorg/jf/dexlib2/AccessFlags;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->VOLATILE:Lorg/jf/dexlib2/AccessFlags;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->BRIDGE:Lorg/jf/dexlib2/AccessFlags;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->TRANSIENT:Lorg/jf/dexlib2/AccessFlags;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->VARARGS:Lorg/jf/dexlib2/AccessFlags;

    const/16 v3, 0x9

    aput-object v1, v0, v3

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->NATIVE:Lorg/jf/dexlib2/AccessFlags;

    const/16 v3, 0xa

    aput-object v1, v0, v3

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->INTERFACE:Lorg/jf/dexlib2/AccessFlags;

    const/16 v3, 0xb

    aput-object v1, v0, v3

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->ABSTRACT:Lorg/jf/dexlib2/AccessFlags;

    const/16 v3, 0xc

    aput-object v1, v0, v3

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->STRICTFP:Lorg/jf/dexlib2/AccessFlags;

    const/16 v3, 0xd

    aput-object v1, v0, v3

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->SYNTHETIC:Lorg/jf/dexlib2/AccessFlags;

    const/16 v3, 0xe

    aput-object v1, v0, v3

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->ANNOTATION:Lorg/jf/dexlib2/AccessFlags;

    const/16 v3, 0xf

    aput-object v1, v0, v3

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->ENUM:Lorg/jf/dexlib2/AccessFlags;

    const/16 v3, 0x10

    aput-object v1, v0, v3

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->CONSTRUCTOR:Lorg/jf/dexlib2/AccessFlags;

    const/16 v3, 0x11

    aput-object v1, v0, v3

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->DECLARED_SYNCHRONIZED:Lorg/jf/dexlib2/AccessFlags;

    const/16 v3, 0x12

    aput-object v1, v0, v3

    sput-object v0, Lorg/jf/dexlib2/AccessFlags;->$VALUES:[Lorg/jf/dexlib2/AccessFlags;

    invoke-static {}, Lorg/jf/dexlib2/AccessFlags;->values()[Lorg/jf/dexlib2/AccessFlags;

    move-result-object v0

    sput-object v0, Lorg/jf/dexlib2/AccessFlags;->allFlags:[Lorg/jf/dexlib2/AccessFlags;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/AccessFlags;->accessFlagsByName:Ljava/util/HashMap;

    sget-object v0, Lorg/jf/dexlib2/AccessFlags;->allFlags:[Lorg/jf/dexlib2/AccessFlags;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lorg/jf/dexlib2/AccessFlags;->accessFlagsByName:Ljava/util/HashMap;

    iget-object v5, v3, Lorg/jf/dexlib2/AccessFlags;->accessFlagName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V
    .registers 8

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/jf/dexlib2/AccessFlags;->value:I

    iput-object p4, p0, Lorg/jf/dexlib2/AccessFlags;->accessFlagName:Ljava/lang/String;

    iput-boolean p5, p0, Lorg/jf/dexlib2/AccessFlags;->validForClass:Z

    iput-boolean p6, p0, Lorg/jf/dexlib2/AccessFlags;->validForMethod:Z

    iput-boolean p7, p0, Lorg/jf/dexlib2/AccessFlags;->validForField:Z

    return-void
.end method

.method private static formatAccessFlags([Lorg/jf/dexlib2/AccessFlags;)Ljava/lang/String;
    .registers 6

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p0, v2

    invoke-virtual {v4}, Lorg/jf/dexlib2/AccessFlags;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, p0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lorg/jf/dexlib2/AccessFlags;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    array-length p0, p0

    if-lez p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatAccessFlagsForClass(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lorg/jf/dexlib2/AccessFlags;->getAccessFlagsForClass(I)[Lorg/jf/dexlib2/AccessFlags;

    move-result-object p0

    invoke-static {p0}, Lorg/jf/dexlib2/AccessFlags;->formatAccessFlags([Lorg/jf/dexlib2/AccessFlags;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatAccessFlagsForField(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lorg/jf/dexlib2/AccessFlags;->getAccessFlagsForField(I)[Lorg/jf/dexlib2/AccessFlags;

    move-result-object p0

    invoke-static {p0}, Lorg/jf/dexlib2/AccessFlags;->formatAccessFlags([Lorg/jf/dexlib2/AccessFlags;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatAccessFlagsForMethod(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lorg/jf/dexlib2/AccessFlags;->getAccessFlagsForMethod(I)[Lorg/jf/dexlib2/AccessFlags;

    move-result-object p0

    invoke-static {p0}, Lorg/jf/dexlib2/AccessFlags;->formatAccessFlags([Lorg/jf/dexlib2/AccessFlags;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAccessFlag(Ljava/lang/String;)Lorg/jf/dexlib2/AccessFlags;
    .registers 2

    sget-object v0, Lorg/jf/dexlib2/AccessFlags;->accessFlagsByName:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jf/dexlib2/AccessFlags;

    return-object p0
.end method

.method public static getAccessFlagsForClass(I)[Lorg/jf/dexlib2/AccessFlags;
    .registers 8

    sget-object v0, Lorg/jf/dexlib2/AccessFlags;->allFlags:[Lorg/jf/dexlib2/AccessFlags;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    iget-boolean v6, v5, Lorg/jf/dexlib2/AccessFlags;->validForClass:Z

    if-eqz v6, :cond_0

    iget v5, v5, Lorg/jf/dexlib2/AccessFlags;->value:I

    and-int/2addr v5, p0

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v4, [Lorg/jf/dexlib2/AccessFlags;

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->allFlags:[Lorg/jf/dexlib2/AccessFlags;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v1, v2

    iget-boolean v6, v5, Lorg/jf/dexlib2/AccessFlags;->validForClass:Z

    if-eqz v6, :cond_2

    iget v6, v5, Lorg/jf/dexlib2/AccessFlags;->value:I

    and-int/2addr v6, p0

    if-eqz v6, :cond_2

    add-int/lit8 v6, v4, 0x1

    aput-object v5, v0, v4

    move v4, v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static getAccessFlagsForField(I)[Lorg/jf/dexlib2/AccessFlags;
    .registers 8

    sget-object v0, Lorg/jf/dexlib2/AccessFlags;->allFlags:[Lorg/jf/dexlib2/AccessFlags;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    iget-boolean v6, v5, Lorg/jf/dexlib2/AccessFlags;->validForField:Z

    if-eqz v6, :cond_0

    iget v5, v5, Lorg/jf/dexlib2/AccessFlags;->value:I

    and-int/2addr v5, p0

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v4, [Lorg/jf/dexlib2/AccessFlags;

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->allFlags:[Lorg/jf/dexlib2/AccessFlags;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v1, v2

    iget-boolean v6, v5, Lorg/jf/dexlib2/AccessFlags;->validForField:Z

    if-eqz v6, :cond_2

    iget v6, v5, Lorg/jf/dexlib2/AccessFlags;->value:I

    and-int/2addr v6, p0

    if-eqz v6, :cond_2

    add-int/lit8 v6, v4, 0x1

    aput-object v5, v0, v4

    move v4, v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static getAccessFlagsForMethod(I)[Lorg/jf/dexlib2/AccessFlags;
    .registers 8

    sget-object v0, Lorg/jf/dexlib2/AccessFlags;->allFlags:[Lorg/jf/dexlib2/AccessFlags;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    iget-boolean v6, v5, Lorg/jf/dexlib2/AccessFlags;->validForMethod:Z

    if-eqz v6, :cond_0

    iget v5, v5, Lorg/jf/dexlib2/AccessFlags;->value:I

    and-int/2addr v5, p0

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v4, [Lorg/jf/dexlib2/AccessFlags;

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->allFlags:[Lorg/jf/dexlib2/AccessFlags;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v1, v2

    iget-boolean v6, v5, Lorg/jf/dexlib2/AccessFlags;->validForMethod:Z

    if-eqz v6, :cond_2

    iget v6, v5, Lorg/jf/dexlib2/AccessFlags;->value:I

    and-int/2addr v6, p0

    if-eqz v6, :cond_2

    add-int/lit8 v6, v4, 0x1

    aput-object v5, v0, v4

    move v4, v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jf/dexlib2/AccessFlags;
    .registers 2

    const-class v0, Lorg/jf/dexlib2/AccessFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jf/dexlib2/AccessFlags;

    return-object p0
.end method

.method public static values()[Lorg/jf/dexlib2/AccessFlags;
    .registers 1

    sget-object v0, Lorg/jf/dexlib2/AccessFlags;->$VALUES:[Lorg/jf/dexlib2/AccessFlags;

    invoke-virtual {v0}, [Lorg/jf/dexlib2/AccessFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jf/dexlib2/AccessFlags;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/AccessFlags;->value:I

    return v0
.end method

.method public final isSet(I)Z
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/AccessFlags;->value:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/AccessFlags;->accessFlagName:Ljava/lang/String;

    return-object v0
.end method
