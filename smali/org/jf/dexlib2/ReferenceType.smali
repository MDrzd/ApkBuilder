.class public final Lorg/jf/dexlib2/ReferenceType;
.super Ljava/lang/Object;


# static fields
.field public static final FIELD:I = 0x2

.field public static final METHOD:I = 0x3

.field public static final METHOD_PROTO:I = 0x4

.field public static final NONE:I = 0x5

.field public static final STRING:I = 0x0

.field public static final TYPE:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReferenceType(Lorg/jf/dexlib2/iface/reference/Reference;)I
    .registers 2

    instance-of v0, p0, Lorg/jf/dexlib2/iface/reference/StringReference;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lorg/jf/dexlib2/iface/reference/TypeReference;

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    instance-of v0, p0, Lorg/jf/dexlib2/iface/reference/FieldReference;

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    instance-of v0, p0, Lorg/jf/dexlib2/iface/reference/MethodReference;

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    instance-of p0, p0, Lorg/jf/dexlib2/iface/reference/MethodProtoReference;

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid reference"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Lorg/jf/dexlib2/ReferenceType$InvalidReferenceTypeException;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/ReferenceType$InvalidReferenceTypeException;-><init>(I)V

    throw v0

    :pswitch_0
    const-string p0, "method_proto"

    return-object p0

    :pswitch_1
    const-string p0, "method"

    return-object p0

    :pswitch_2
    const-string p0, "field"

    return-object p0

    :pswitch_3
    const-string p0, "type"

    return-object p0

    :pswitch_4
    const-string p0, "string"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static validateReferenceType(I)V
    .registers 2

    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/ReferenceType$InvalidReferenceTypeException;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/ReferenceType$InvalidReferenceTypeException;-><init>(I)V

    throw v0
.end method
