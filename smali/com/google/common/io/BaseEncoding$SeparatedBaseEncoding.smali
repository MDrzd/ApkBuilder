.class final Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;
.super Lcom/google/common/io/BaseEncoding;


# instance fields
.field private final afterEveryChars:I

.field private final delegate:Lcom/google/common/io/BaseEncoding;

.field private final separator:Ljava/lang/String;

.field private final separatorChars:Lcom/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/google/common/io/BaseEncoding;Ljava/lang/String;I)V
    .registers 7

    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/io/BaseEncoding;

    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separator:Ljava/lang/String;

    iput p3, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->afterEveryChars:I

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-lez p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Cannot add a separator after every %s chars"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p1

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/base/CharMatcher;->precomputed()Lcom/google/common/base/CharMatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separatorChars:Lcom/google/common/base/CharMatcher;

    return-void
.end method


# virtual methods
.method final decodingStream(Lcom/google/common/io/GwtWorkarounds$CharInput;)Lcom/google/common/io/GwtWorkarounds$ByteInput;
    .registers 4

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separatorChars:Lcom/google/common/base/CharMatcher;

    invoke-static {p1, v1}, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->ignoringInput(Lcom/google/common/io/GwtWorkarounds$CharInput;Lcom/google/common/base/CharMatcher;)Lcom/google/common/io/GwtWorkarounds$CharInput;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/io/BaseEncoding;->decodingStream(Lcom/google/common/io/GwtWorkarounds$CharInput;)Lcom/google/common/io/GwtWorkarounds$ByteInput;

    move-result-object p1

    return-object p1
.end method

.method final encodingStream(Lcom/google/common/io/GwtWorkarounds$CharOutput;)Lcom/google/common/io/GwtWorkarounds$ByteOutput;
    .registers 5

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separator:Ljava/lang/String;

    iget v2, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->afterEveryChars:I

    invoke-static {p1, v1, v2}, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separatingOutput(Lcom/google/common/io/GwtWorkarounds$CharOutput;Ljava/lang/String;I)Lcom/google/common/io/GwtWorkarounds$CharOutput;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/io/BaseEncoding;->encodingStream(Lcom/google/common/io/GwtWorkarounds$CharOutput;)Lcom/google/common/io/GwtWorkarounds$ByteOutput;

    move-result-object p1

    return-object p1
.end method

.method public final lowerCase()Lcom/google/common/io/BaseEncoding;
    .registers 4

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->lowerCase()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separator:Ljava/lang/String;

    iget v2, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->afterEveryChars:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/BaseEncoding;->withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    return-object v0
.end method

.method final maxDecodedSize(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0, p1}, Lcom/google/common/io/BaseEncoding;->maxDecodedSize(I)I

    move-result p1

    return p1
.end method

.method final maxEncodedSize(I)I
    .registers 6

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0, p1}, Lcom/google/common/io/BaseEncoding;->maxEncodedSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->afterEveryChars:I

    sget-object v3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {v1, v2, v3}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result v1

    mul-int v0, v0, v1

    add-int/2addr p1, v0

    return p1
.end method

.method public final omitPadding()Lcom/google/common/io/BaseEncoding;
    .registers 4

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->omitPadding()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separator:Ljava/lang/String;

    iget v2, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->afterEveryChars:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/BaseEncoding;->withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    return-object v0
.end method

.method final padding()Lcom/google/common/base/CharMatcher;
    .registers 2

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->padding()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separator:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->afterEveryChars:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".withSeparator(\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final upperCase()Lcom/google/common/io/BaseEncoding;
    .registers 4

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->upperCase()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separator:Ljava/lang/String;

    iget v2, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->afterEveryChars:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/BaseEncoding;->withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    return-object v0
.end method

.method public final withPadChar(C)Lcom/google/common/io/BaseEncoding;
    .registers 4

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->delegate:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0, p1}, Lcom/google/common/io/BaseEncoding;->withPadChar(C)Lcom/google/common/io/BaseEncoding;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->separator:Ljava/lang/String;

    iget v1, p0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;->afterEveryChars:I

    invoke-virtual {p1, v0, v1}, Lcom/google/common/io/BaseEncoding;->withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;

    move-result-object p1

    return-object p1
.end method

.method public final withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Already have a separator"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
