.class public abstract Lorg/jf/baksmali/Adaptors/Debug/DebugMethodItem;
.super Lorg/jf/baksmali/Adaptors/MethodItem;


# instance fields
.field private final sortOrder:I


# direct methods
.method protected constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/jf/baksmali/Adaptors/MethodItem;-><init>(I)V

    iput p2, p0, Lorg/jf/baksmali/Adaptors/Debug/DebugMethodItem;->sortOrder:I

    return-void
.end method

.method public static build(Lorg/jf/baksmali/Adaptors/RegisterFormatter;Lorg/jf/dexlib2/iface/debug/DebugItem;)Lorg/jf/baksmali/Adaptors/Debug/DebugMethodItem;
    .registers 6

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/debug/DebugItem;->getCodeAddress()I

    move-result v0

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/debug/DebugItem;->getDebugItemType()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, -0x4

    packed-switch v1, :pswitch_data_0

    new-instance p0, Lorg/jf/util/ExceptionWithContext;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/debug/DebugItem;->getDebugItemType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Invalid debug item type: %d"

    invoke-direct {p0, p1, v0}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    new-instance p0, Lorg/jf/baksmali/Adaptors/Debug/LineNumberMethodItem;

    const/4 v1, -0x2

    check-cast p1, Lorg/jf/dexlib2/iface/debug/LineNumber;

    invoke-direct {p0, v0, v1, p1}, Lorg/jf/baksmali/Adaptors/Debug/LineNumberMethodItem;-><init>(IILorg/jf/dexlib2/iface/debug/LineNumber;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/jf/baksmali/Adaptors/Debug/SetSourceFileMethodItem;

    const/4 v1, -0x3

    check-cast p1, Lorg/jf/dexlib2/iface/debug/SetSourceFile;

    invoke-direct {p0, v0, v1, p1}, Lorg/jf/baksmali/Adaptors/Debug/SetSourceFileMethodItem;-><init>(IILorg/jf/dexlib2/iface/debug/SetSourceFile;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/jf/baksmali/Adaptors/Debug/BeginEpilogueMethodItem;

    invoke-direct {p0, v0, v2}, Lorg/jf/baksmali/Adaptors/Debug/BeginEpilogueMethodItem;-><init>(II)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/jf/baksmali/Adaptors/Debug/EndPrologueMethodItem;

    invoke-direct {p0, v0, v2}, Lorg/jf/baksmali/Adaptors/Debug/EndPrologueMethodItem;-><init>(II)V

    return-object p0

    :pswitch_4
    new-instance v1, Lorg/jf/baksmali/Adaptors/Debug/RestartLocalMethodItem;

    check-cast p1, Lorg/jf/dexlib2/iface/debug/RestartLocal;

    invoke-direct {v1, v0, v3, p0, p1}, Lorg/jf/baksmali/Adaptors/Debug/RestartLocalMethodItem;-><init>(IILorg/jf/baksmali/Adaptors/RegisterFormatter;Lorg/jf/dexlib2/iface/debug/RestartLocal;)V

    return-object v1

    :pswitch_5
    new-instance v1, Lorg/jf/baksmali/Adaptors/Debug/EndLocalMethodItem;

    check-cast p1, Lorg/jf/dexlib2/iface/debug/EndLocal;

    invoke-direct {v1, v0, v3, p0, p1}, Lorg/jf/baksmali/Adaptors/Debug/EndLocalMethodItem;-><init>(IILorg/jf/baksmali/Adaptors/RegisterFormatter;Lorg/jf/dexlib2/iface/debug/EndLocal;)V

    return-object v1

    :cond_0
    new-instance v1, Lorg/jf/baksmali/Adaptors/Debug/StartLocalMethodItem;

    check-cast p1, Lorg/jf/dexlib2/iface/debug/StartLocal;

    invoke-direct {v1, v0, v3, p0, p1}, Lorg/jf/baksmali/Adaptors/Debug/StartLocalMethodItem;-><init>(IILorg/jf/baksmali/Adaptors/RegisterFormatter;Lorg/jf/dexlib2/iface/debug/StartLocal;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getSortOrder()D
    .registers 3

    iget v0, p0, Lorg/jf/baksmali/Adaptors/Debug/DebugMethodItem;->sortOrder:I

    int-to-double v0, v0

    return-wide v0
.end method
