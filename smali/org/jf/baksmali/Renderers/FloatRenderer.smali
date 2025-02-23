.class public Lorg/jf/baksmali/Renderers/FloatRenderer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeTo(Lorg/jf/util/IndentingWriter;F)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/16 p1, 0x66

    invoke-virtual {p0, p1}, Lorg/jf/util/IndentingWriter;->write(I)V

    return-void
.end method
