.class final Lcom/google/common/io/CharStreams$1;
.super Ljava/io/Reader;


# instance fields
.field final synthetic val$readable:Ljava/lang/Readable;


# direct methods
.method constructor <init>(Ljava/lang/Readable;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/io/CharStreams$1;->val$readable:Ljava/lang/Readable;

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/io/CharStreams$1;->val$readable:Ljava/lang/Readable;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/CharStreams$1;->val$readable:Ljava/lang/Readable;

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :cond_0
    return-void
.end method

.method public final read(Ljava/nio/CharBuffer;)I
    .registers 3

    iget-object v0, p0, Lcom/google/common/io/CharStreams$1;->val$readable:Ljava/lang/Readable;

    invoke-interface {v0, p1}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result p1

    return p1
.end method

.method public final read([CII)I
    .registers 4

    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/io/CharStreams$1;->read(Ljava/nio/CharBuffer;)I

    move-result p1

    return p1
.end method
