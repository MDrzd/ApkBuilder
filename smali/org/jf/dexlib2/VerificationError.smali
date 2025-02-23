.class public Lorg/jf/dexlib2/VerificationError;
.super Ljava/lang/Object;


# static fields
.field public static final CLASS_CHANGE_ERROR:I = 0x8

.field public static final GENERIC:I = 0x1

.field public static final ILLEGAL_CLASS_ACCESS:I = 0x5

.field public static final ILLEGAL_FIELD_ACCESS:I = 0x6

.field public static final ILLEGAL_METHOD_ACCESS:I = 0x7

.field public static final INSTANTIATION_ERROR:I = 0x9

.field public static final NO_SUCH_CLASS:I = 0x2

.field public static final NO_SUCH_FIELD:I = 0x3

.field public static final NO_SUCH_METHOD:I = 0x4

.field private static final verificationErrorNames:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/jf/dexlib2/VerificationError;->verificationErrorNames:Ljava/util/HashMap;

    const-string v1, "generic-error"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jf/dexlib2/VerificationError;->verificationErrorNames:Ljava/util/HashMap;

    const-string v1, "no-such-class"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jf/dexlib2/VerificationError;->verificationErrorNames:Ljava/util/HashMap;

    const-string v1, "no-such-field"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jf/dexlib2/VerificationError;->verificationErrorNames:Ljava/util/HashMap;

    const-string v1, "no-such-method"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jf/dexlib2/VerificationError;->verificationErrorNames:Ljava/util/HashMap;

    const-string v1, "illegal-class-access"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jf/dexlib2/VerificationError;->verificationErrorNames:Ljava/util/HashMap;

    const-string v1, "illegal-field-access"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jf/dexlib2/VerificationError;->verificationErrorNames:Ljava/util/HashMap;

    const-string v1, "illegal-method-access"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jf/dexlib2/VerificationError;->verificationErrorNames:Ljava/util/HashMap;

    const-string v1, "class-change-error"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jf/dexlib2/VerificationError;->verificationErrorNames:Ljava/util/HashMap;

    const-string v1, "instantiation-error"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVerificationError(Ljava/lang/String;)I
    .registers 4

    sget-object v0, Lorg/jf/dexlib2/VerificationError;->verificationErrorNames:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Invalid verification error: %s"

    invoke-direct {v0, p0, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static getVerificationErrorName(I)Ljava/lang/String;
    .registers 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "instantiation-error"

    return-object p0

    :pswitch_1
    const-string p0, "class-change-error"

    return-object p0

    :pswitch_2
    const-string p0, "illegal-method-access"

    return-object p0

    :pswitch_3
    const-string p0, "illegal-field-access"

    return-object p0

    :pswitch_4
    const-string p0, "illegal-class-access"

    return-object p0

    :pswitch_5
    const-string p0, "no-such-method"

    return-object p0

    :pswitch_6
    const-string p0, "no-such-field"

    return-object p0

    :pswitch_7
    const-string p0, "no-such-class"

    return-object p0

    :pswitch_8
    const-string p0, "generic-error"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static isValidVerificationError(I)Z
    .registers 2

    if-lez p0, :cond_0

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
