.class public abstract Lorg/jf/dexlib2/dexbacked/reference/DexBackedReference;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeReference(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II)Lorg/jf/dexlib2/iface/reference/Reference;
    .registers 4
    .param p0    # Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lorg/jf/util/ExceptionWithContext;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "Invalid reference type: %d"

    invoke-direct {p0, p1, p2}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    new-instance p1, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodProtoReference;

    invoke-direct {p1, p0, p2}, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodProtoReference;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object p1

    :pswitch_1
    new-instance p1, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;

    invoke-direct {p1, p0, p2}, Lorg/jf/dexlib2/dexbacked/reference/DexBackedMethodReference;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object p1

    :pswitch_2
    new-instance p1, Lorg/jf/dexlib2/dexbacked/reference/DexBackedFieldReference;

    invoke-direct {p1, p0, p2}, Lorg/jf/dexlib2/dexbacked/reference/DexBackedFieldReference;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object p1

    :pswitch_3
    new-instance p1, Lorg/jf/dexlib2/dexbacked/reference/DexBackedTypeReference;

    invoke-direct {p1, p0, p2}, Lorg/jf/dexlib2/dexbacked/reference/DexBackedTypeReference;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object p1

    :pswitch_4
    new-instance p1, Lorg/jf/dexlib2/dexbacked/reference/DexBackedStringReference;

    invoke-direct {p1, p0, p2}, Lorg/jf/dexlib2/dexbacked/reference/DexBackedStringReference;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
