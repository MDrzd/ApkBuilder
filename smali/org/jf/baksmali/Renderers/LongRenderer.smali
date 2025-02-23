.class public Lorg/jf/baksmali/Renderers/LongRenderer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeSignedIntOrLongTo(Lorg/jf/util/IndentingWriter;J)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/16 v0, 0x4c

    if-gez v2, :cond_0

    const-string v1, "-0x"

    invoke-virtual {p0, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    neg-long v1, p1

    invoke-virtual {p0, v1, v2}, Lorg/jf/util/IndentingWriter;->printUnsignedLongAsHex(J)V

    const-wide/32 v1, -0x80000000

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    return-void

    :cond_0
    const-string v1, "0x"

    invoke-virtual {p0, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lorg/jf/util/IndentingWriter;->printUnsignedLongAsHex(J)V

    const-wide/32 v1, 0x7fffffff

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    :cond_1
    return-void
.end method

.method public static writeTo(Lorg/jf/util/IndentingWriter;J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/16 v0, 0x4c

    if-gez v2, :cond_0

    const-string v1, "-0x"

    invoke-virtual {p0, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    neg-long p1, p1

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/jf/util/IndentingWriter;->printUnsignedLongAsHex(J)V

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    return-void

    :cond_0
    const-string v1, "0x"

    invoke-virtual {p0, v1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
