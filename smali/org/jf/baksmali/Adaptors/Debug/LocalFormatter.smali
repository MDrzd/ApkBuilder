.class public Lorg/jf/baksmali/Adaptors/Debug/LocalFormatter;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeLocal(Lorg/jf/util/IndentingWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0    # Lorg/jf/util/IndentingWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lorg/jf/baksmali/Adaptors/ReferenceFormatter;->writeStringReference(Lorg/jf/util/IndentingWriter;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "null"

    invoke-virtual {p0, p1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    :goto_0
    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Lorg/jf/util/IndentingWriter;->write(I)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "V"

    invoke-virtual {p0, p1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    :goto_1
    if-eqz p3, :cond_2

    const-string p1, ", "

    invoke-virtual {p0, p1}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    invoke-static {p0, p3}, Lorg/jf/baksmali/Adaptors/ReferenceFormatter;->writeStringReference(Lorg/jf/util/IndentingWriter;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
