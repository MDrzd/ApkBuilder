.class public Lorg/jf/baksmali/Adaptors/LabelMethodItem;
.super Lorg/jf/baksmali/Adaptors/MethodItem;


# instance fields
.field private final labelPrefix:Ljava/lang/String;

.field private labelSequence:I

.field private final options:Lorg/jf/baksmali/BaksmaliOptions;


# direct methods
.method public constructor <init>(Lorg/jf/baksmali/BaksmaliOptions;ILjava/lang/String;)V
    .registers 4
    .param p1    # Lorg/jf/baksmali/BaksmaliOptions;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lorg/jf/baksmali/Adaptors/MethodItem;-><init>(I)V

    iput-object p1, p0, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iput-object p3, p0, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->labelPrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lorg/jf/baksmali/Adaptors/MethodItem;

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->compareTo(Lorg/jf/baksmali/Adaptors/MethodItem;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/jf/baksmali/Adaptors/MethodItem;)I
    .registers 4

    invoke-super {p0, p1}, Lorg/jf/baksmali/Adaptors/MethodItem;->compareTo(Lorg/jf/baksmali/Adaptors/MethodItem;)I

    move-result v0

    if-nez v0, :cond_0

    instance-of v1, p1, Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->labelPrefix:Ljava/lang/String;

    check-cast p1, Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    iget-object p1, p1, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->labelPrefix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/jf/baksmali/Adaptors/MethodItem;

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->compareTo(Lorg/jf/baksmali/Adaptors/MethodItem;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getLabelAddress()I
    .registers 2

    invoke-virtual {p0}, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->getCodeAddress()I

    move-result v0

    return v0
.end method

.method public getLabelPrefix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->labelPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelSequence()I
    .registers 2

    iget v0, p0, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->labelSequence:I

    return v0
.end method

.method public getSortOrder()D
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->getCodeAddress()I

    move-result v0

    return v0
.end method

.method public setLabelSequence(I)V
    .registers 2

    iput p1, p0, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->labelSequence:I

    return-void
.end method

.method public writeTo(Lorg/jf/util/IndentingWriter;)Z
    .registers 4

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(I)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->labelPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/jf/util/IndentingWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->options:Lorg/jf/baksmali/BaksmaliOptions;

    iget-boolean v0, v0, Lorg/jf/baksmali/BaksmaliOptions;->sequentialLabels:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->labelSequence:I

    :goto_0
    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/jf/util/IndentingWriter;->printUnsignedLongAsHex(J)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/jf/baksmali/Adaptors/LabelMethodItem;->getLabelAddress()I

    move-result v0

    goto :goto_0

    :goto_1
    const/4 p1, 0x1

    return p1
.end method
