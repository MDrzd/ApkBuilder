.class final Lcom/google/common/io/GwtWorkarounds$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/io/GwtWorkarounds$CharOutput;


# instance fields
.field final synthetic val$builder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/io/GwtWorkarounds$6;->val$builder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 1

    return-void
.end method

.method public final flush()V
    .registers 1

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$6;->val$builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(C)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$6;->val$builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method
