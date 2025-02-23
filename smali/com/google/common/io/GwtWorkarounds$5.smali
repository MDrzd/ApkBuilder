.class final Lcom/google/common/io/GwtWorkarounds$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/io/GwtWorkarounds$CharOutput;


# instance fields
.field final synthetic val$writer:Ljava/io/Writer;


# direct methods
.method constructor <init>(Ljava/io/Writer;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/io/GwtWorkarounds$5;->val$writer:Ljava/io/Writer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$5;->val$writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public final flush()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$5;->val$writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final write(C)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$5;->val$writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    return-void
.end method
