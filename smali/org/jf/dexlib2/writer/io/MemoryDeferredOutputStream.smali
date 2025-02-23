.class public Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;
.super Lorg/jf/dexlib2/writer/io/DeferredOutputStream;


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x4000


# instance fields
.field private final buffers:Ljava/util/List;

.field private currentBuffer:[B

.field private currentPosition:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lorg/jf/dexlib2/writer/io/DeferredOutputStream;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->buffers:Ljava/util/List;

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    return-void
.end method

.method public static getFactory()Lorg/jf/dexlib2/writer/io/DeferredOutputStreamFactory;
    .registers 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/16 v0, 0x4000

    invoke-static {v0}, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->getFactory(I)Lorg/jf/dexlib2/writer/io/DeferredOutputStreamFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getFactory(I)Lorg/jf/dexlib2/writer/io/DeferredOutputStreamFactory;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream$1;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream$1;-><init>(I)V

    return-object v0
.end method

.method private remaining()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    array-length v0, v0

    iget v1, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentPosition:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public write(I)V
    .registers 5

    invoke-direct {p0}, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->buffers:Ljava/util/List;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentPosition:I

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    iget v1, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentPosition:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public write([B)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 10

    invoke-direct {p0}, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->remaining()I

    move-result v0

    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    sub-int v3, p3, v0

    if-lez v3, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v3, p2, v0

    iget-object v4, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    iget v5, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentPosition:I

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    iget v3, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentPosition:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentPosition:I

    invoke-direct {p0}, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->remaining()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->buffers:Ljava/util/List;

    iget-object v3, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    iput v1, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentPosition:I

    iget-object v2, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    array-length v2, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 5

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentPosition:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentBuffer:[B

    iget v2, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentPosition:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    :cond_1
    iget-object p1, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->buffers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iput v1, p0, Lorg/jf/dexlib2/writer/io/MemoryDeferredOutputStream;->currentPosition:I

    return-void
.end method
