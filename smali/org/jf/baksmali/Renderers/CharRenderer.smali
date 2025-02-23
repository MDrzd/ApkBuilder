.class public Lorg/jf/baksmali/Renderers/CharRenderer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeTo(Lorg/jf/util/IndentingWriter;C)V
    .registers 3

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    invoke-static {p0, p1}, Lorg/jf/util/StringUtils;->writeEscapedChar(Ljava/io/Writer;C)V

    invoke-virtual {p0, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    return-void
.end method
