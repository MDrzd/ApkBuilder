.class public Lorg/jf/baksmali/Renderers/ByteRenderer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeTo(Lorg/jf/util/IndentingWriter;B)V
    .registers 5

    const/16 v0, 0x74

    if-gez p1, :cond_0

    const-string v1, "-0x"

    invoke-virtual {p0, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    neg-int p1, p1

    :goto_0
    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lorg/jf/util/IndentingWriter;->printUnsignedLongAsHex(J)V

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    return-void

    :cond_0
    const-string v1, "0x"

    invoke-virtual {p0, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeUnsignedTo(Lorg/jf/util/IndentingWriter;B)V
    .registers 4

    const-string v0, "0x"

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    and-int/lit16 p1, p1, 0xff

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/jf/util/IndentingWriter;->printUnsignedLongAsHex(J)V

    const/16 p1, 0x74

    invoke-virtual {p0, p1}, Lorg/jf/util/IndentingWriter;->write(I)V

    return-void
.end method
