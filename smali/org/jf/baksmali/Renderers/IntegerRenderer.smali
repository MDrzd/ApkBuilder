.class public Lorg/jf/baksmali/Renderers/IntegerRenderer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeTo(Lorg/jf/util/IndentingWriter;I)V
    .registers 4

    if-gez p1, :cond_0

    const-string v0, "-0x"

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    int-to-long v0, p1

    neg-long v0, v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/jf/util/IndentingWriter;->printUnsignedLongAsHex(J)V

    return-void

    :cond_0
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    int-to-long v0, p1

    goto :goto_0
.end method

.method public static writeUnsignedTo(Lorg/jf/util/IndentingWriter;I)V
    .registers 6

    const-string v0, "0x"

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/jf/util/IndentingWriter;->printUnsignedLongAsHex(J)V

    return-void
.end method
