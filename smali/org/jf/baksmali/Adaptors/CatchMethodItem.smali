.class public Lorg/jf/baksmali/Adaptors/CatchMethodItem;
.super Lorg/jf/baksmali/Adaptors/MethodItem;


# instance fields
.field private final exceptionType:Ljava/lang/String;

.field private final handlerLabel:Lorg/jf/baksmali/Adaptors/LabelMethodItem;

.field private final tryEndLabel:Lorg/jf/baksmali/Adaptors/LabelMethodItem;

.field private final tryStartLabel:Lorg/jf/baksmali/Adaptors/LabelMethodItem;


# direct methods
.method public constructor <init>(Lorg/jf/baksmali/BaksmaliOptions;Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;ILjava/lang/String;III)V
    .registers 10
    .param p1    # Lorg/jf/baksmali/BaksmaliOptions;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p3}, Lorg/jf/baksmali/Adaptors/MethodItem;-><init>(I)V

    iput-object p4, p0, Lorg/jf/baksmali/Adaptors/CatchMethodItem;->exceptionType:Ljava/lang/String;

    new-instance v0, Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    const-string v1, "try_start_"

    invoke-direct {v0, p1, p5, v1}, Lorg/jf/baksmali/Adaptors/LabelMethodItem;-><init>(Lorg/jf/baksmali/BaksmaliOptions;ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;->internLabel(Lorg/jf/baksmali/Adaptors/LabelMethodItem;)Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    move-result-object p5

    iput-object p5, p0, Lorg/jf/baksmali/Adaptors/CatchMethodItem;->tryStartLabel:Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    new-instance p5, Lorg/jf/baksmali/Adaptors/EndTryLabelMethodItem;

    invoke-direct {p5, p1, p3, p6}, Lorg/jf/baksmali/Adaptors/EndTryLabelMethodItem;-><init>(Lorg/jf/baksmali/BaksmaliOptions;II)V

    invoke-virtual {p2, p5}, Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;->internLabel(Lorg/jf/baksmali/Adaptors/LabelMethodItem;)Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    move-result-object p3

    iput-object p3, p0, Lorg/jf/baksmali/Adaptors/CatchMethodItem;->tryEndLabel:Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    if-nez p4, :cond_0

    new-instance p3, Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    const-string p4, "catchall_"

    invoke-direct {p3, p1, p7, p4}, Lorg/jf/baksmali/Adaptors/LabelMethodItem;-><init>(Lorg/jf/baksmali/BaksmaliOptions;ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2, p3}, Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;->internLabel(Lorg/jf/baksmali/Adaptors/LabelMethodItem;)Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/baksmali/Adaptors/CatchMethodItem;->handlerLabel:Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    return-void

    :cond_0
    new-instance p3, Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    const-string p4, "catch_"

    invoke-direct {p3, p1, p7, p4}, Lorg/jf/baksmali/Adaptors/LabelMethodItem;-><init>(Lorg/jf/baksmali/BaksmaliOptions;ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getHandlerLabel()Lorg/jf/baksmali/Adaptors/LabelMethodItem;
    .registers 2

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/CatchMethodItem;->handlerLabel:Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    return-object v0
.end method

.method public getSortOrder()D
    .registers 3

    const-wide v0, 0x4059800000000000L    # 102.0

    return-wide v0
.end method

.method public getTryEndLabel()Lorg/jf/baksmali/Adaptors/LabelMethodItem;
    .registers 2

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/CatchMethodItem;->tryEndLabel:Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    return-object v0
.end method

.method public getTryStartLabel()Lorg/jf/baksmali/Adaptors/LabelMethodItem;
    .registers 2

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/CatchMethodItem;->tryStartLabel:Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    return-object v0
.end method

.method public writeTo(Lorg/jf/util/IndentingWriter;)Z
    .registers 3

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/CatchMethodItem;->exceptionType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ".catchall"

    :goto_0
    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, ".catch "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/CatchMethodItem;->exceptionType:Ljava/lang/String;

    goto :goto_0

    :goto_1
    const-string v0, " {"

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/CatchMethodItem;->tryStartLabel:Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    invoke-virtual {v0, p1}, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->writeTo(Lorg/jf/util/IndentingWriter;)Z

    const-string v0, " .. "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/CatchMethodItem;->tryEndLabel:Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    invoke-virtual {v0, p1}, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->writeTo(Lorg/jf/util/IndentingWriter;)Z

    const-string v0, "} "

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/CatchMethodItem;->handlerLabel:Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    invoke-virtual {v0, p1}, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->writeTo(Lorg/jf/util/IndentingWriter;)Z

    const/4 p1, 0x1

    return p1
.end method
