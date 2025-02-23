.class public Lorg/jf/baksmali/Adaptors/Debug/StartLocalMethodItem;
.super Lorg/jf/baksmali/Adaptors/Debug/DebugMethodItem;


# instance fields
.field private final registerFormatter:Lorg/jf/baksmali/Adaptors/RegisterFormatter;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final startLocal:Lorg/jf/dexlib2/iface/debug/StartLocal;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILorg/jf/baksmali/Adaptors/RegisterFormatter;Lorg/jf/dexlib2/iface/debug/StartLocal;)V
    .registers 5
    .param p3    # Lorg/jf/baksmali/Adaptors/RegisterFormatter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Lorg/jf/dexlib2/iface/debug/StartLocal;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lorg/jf/baksmali/Adaptors/Debug/DebugMethodItem;-><init>(II)V

    iput-object p4, p0, Lorg/jf/baksmali/Adaptors/Debug/StartLocalMethodItem;->startLocal:Lorg/jf/dexlib2/iface/debug/StartLocal;

    iput-object p3, p0, Lorg/jf/baksmali/Adaptors/Debug/StartLocalMethodItem;->registerFormatter:Lorg/jf/baksmali/Adaptors/RegisterFormatter;

    return-void
.end method


# virtual methods
.method public writeTo(Lorg/jf/util/IndentingWriter;)Z
    .registers 6

    const-string v0, ".local "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Debug/StartLocalMethodItem;->registerFormatter:Lorg/jf/baksmali/Adaptors/RegisterFormatter;

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/Debug/StartLocalMethodItem;->startLocal:Lorg/jf/dexlib2/iface/debug/StartLocal;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/debug/StartLocal;->getRegister()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/jf/baksmali/Adaptors/RegisterFormatter;->writeTo(Lorg/jf/util/IndentingWriter;I)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Debug/StartLocalMethodItem;->startLocal:Lorg/jf/dexlib2/iface/debug/StartLocal;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/debug/StartLocal;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/baksmali/Adaptors/Debug/StartLocalMethodItem;->startLocal:Lorg/jf/dexlib2/iface/debug/StartLocal;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/debug/StartLocal;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jf/baksmali/Adaptors/Debug/StartLocalMethodItem;->startLocal:Lorg/jf/dexlib2/iface/debug/StartLocal;

    invoke-interface {v2}, Lorg/jf/dexlib2/iface/debug/StartLocal;->getSignature()Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const-string v3, ", "

    invoke-virtual {p1, v3}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-static {p1, v0, v1, v2}, Lorg/jf/baksmali/Adaptors/Debug/LocalFormatter;->writeLocal(Lorg/jf/util/IndentingWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
