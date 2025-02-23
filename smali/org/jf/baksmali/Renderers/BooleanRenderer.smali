.class public Lorg/jf/baksmali/Renderers/BooleanRenderer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeTo(Lorg/jf/util/IndentingWriter;Z)V
    .registers 2

    if-eqz p1, :cond_0

    const-string p1, "true"

    :goto_0
    invoke-virtual {p0, p1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "false"

    goto :goto_0
.end method
