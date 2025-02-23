.class public Lorg/jf/baksmali/Adaptors/Debug/SetSourceFileMethodItem;
.super Lorg/jf/baksmali/Adaptors/Debug/DebugMethodItem;


# instance fields
.field private final sourceFile:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILorg/jf/dexlib2/iface/debug/SetSourceFile;)V
    .registers 4
    .param p3    # Lorg/jf/dexlib2/iface/debug/SetSourceFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lorg/jf/baksmali/Adaptors/Debug/DebugMethodItem;-><init>(II)V

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/debug/SetSourceFile;->getSourceFile()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/baksmali/Adaptors/Debug/SetSourceFileMethodItem;->sourceFile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeTo(Lorg/jf/util/IndentingWriter;)Z
    .registers 3

    const-string v0, ".source"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Debug/SetSourceFileMethodItem;->sourceFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " \""

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/Debug/SetSourceFileMethodItem;->sourceFile:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/jf/util/StringUtils;->writeEscapedString(Ljava/io/Writer;Ljava/lang/String;)V

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
