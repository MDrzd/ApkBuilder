.class final Lcom/google/common/io/ByteSource$ConcatenatedByteSource;
.super Lcom/google/common/io/ByteSource;


# instance fields
.field private final sources:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/io/ByteSource;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iput-object p1, p0, Lcom/google/common/io/ByteSource$ConcatenatedByteSource;->sources:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final isEmpty()Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/io/ByteSource$ConcatenatedByteSource;->sources:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/io/ByteSource;

    invoke-virtual {v1}, Lcom/google/common/io/ByteSource;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final openStream()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Lcom/google/common/io/MultiInputStream;

    iget-object v1, p0, Lcom/google/common/io/ByteSource$ConcatenatedByteSource;->sources:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/io/MultiInputStream;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final size()J
    .registers 6

    iget-object v0, p0, Lcom/google/common/io/ByteSource$ConcatenatedByteSource;->sources:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/io/ByteSource;

    invoke-virtual {v3}, Lcom/google/common/io/ByteSource;->size()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/common/io/ByteSource$ConcatenatedByteSource;->sources:Ljava/lang/Iterable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ByteSource.concat("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
