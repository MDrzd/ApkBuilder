.class final Lcom/google/common/io/GwtWorkarounds$3;
.super Ljava/io/InputStream;


# instance fields
.field final synthetic val$input:Lcom/google/common/io/GwtWorkarounds$ByteInput;


# direct methods
.method constructor <init>(Lcom/google/common/io/GwtWorkarounds$ByteInput;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/io/GwtWorkarounds$3;->val$input:Lcom/google/common/io/GwtWorkarounds$ByteInput;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$3;->val$input:Lcom/google/common/io/GwtWorkarounds$ByteInput;

    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$ByteInput;->close()V

    return-void
.end method

.method public final read()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$3;->val$input:Lcom/google/common/io/GwtWorkarounds$ByteInput;

    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$ByteInput;->read()I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .registers 8

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/io/GwtWorkarounds$3;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    int-to-byte v0, v0

    aput-byte v0, p1, p2

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p3, :cond_3

    invoke-virtual {p0}, Lcom/google/common/io/GwtWorkarounds$3;->read()I

    move-result v2

    if-ne v2, v1, :cond_2

    return v0

    :cond_2
    add-int v3, p2, v0

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p3
.end method
