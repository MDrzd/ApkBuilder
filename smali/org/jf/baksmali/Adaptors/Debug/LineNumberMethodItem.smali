.class public Lorg/jf/baksmali/Adaptors/Debug/LineNumberMethodItem;
.super Lorg/jf/baksmali/Adaptors/Debug/DebugMethodItem;


# instance fields
.field private final lineNumber:I


# direct methods
.method public constructor <init>(IILorg/jf/dexlib2/iface/debug/LineNumber;)V
    .registers 4
    .param p3    # Lorg/jf/dexlib2/iface/debug/LineNumber;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lorg/jf/baksmali/Adaptors/Debug/DebugMethodItem;-><init>(II)V

    invoke-interface {p3}, Lorg/jf/dexlib2/iface/debug/LineNumber;->getLineNumber()I

    move-result p1

    iput p1, p0, Lorg/jf/baksmali/Adaptors/Debug/LineNumberMethodItem;->lineNumber:I

    return-void
.end method


# virtual methods
.method public writeTo(Lorg/jf/util/IndentingWriter;)Z
    .registers 3

    const-string v0, ".line "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget v0, p0, Lorg/jf/baksmali/Adaptors/Debug/LineNumberMethodItem;->lineNumber:I

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->printUnsignedIntAsDec(I)V

    const/4 p1, 0x1

    return p1
.end method
