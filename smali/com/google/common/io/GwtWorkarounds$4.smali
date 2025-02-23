.class final Lcom/google/common/io/GwtWorkarounds$4;
.super Ljava/io/OutputStream;


# instance fields
.field final synthetic val$output:Lcom/google/common/io/GwtWorkarounds$ByteOutput;


# direct methods
.method constructor <init>(Lcom/google/common/io/GwtWorkarounds$ByteOutput;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/io/GwtWorkarounds$4;->val$output:Lcom/google/common/io/GwtWorkarounds$ByteOutput;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$4;->val$output:Lcom/google/common/io/GwtWorkarounds$ByteOutput;

    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$ByteOutput;->close()V

    return-void
.end method

.method public final flush()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$4;->val$output:Lcom/google/common/io/GwtWorkarounds$ByteOutput;

    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$ByteOutput;->flush()V

    return-void
.end method

.method public final write(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$4;->val$output:Lcom/google/common/io/GwtWorkarounds$ByteOutput;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lcom/google/common/io/GwtWorkarounds$ByteOutput;->write(B)V

    return-void
.end method
