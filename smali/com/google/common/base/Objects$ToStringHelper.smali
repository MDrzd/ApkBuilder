.class public final Lcom/google/common/base/Objects$ToStringHelper;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private holderHead:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

.field private holderTail:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

.field private omitNullValues:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;-><init>(Lcom/google/common/base/Objects$1;)V

    iput-object v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->holderHead:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    iget-object v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->holderHead:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->holderTail:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->omitNullValues:Z

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/base/Objects$ToStringHelper;->className:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/common/base/Objects$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    .registers 3

    new-instance v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;-><init>(Lcom/google/common/base/Objects$1;)V

    iget-object v1, p0, Lcom/google/common/base/Objects$ToStringHelper;->holderTail:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    iput-object v0, v1, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->next:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->holderTail:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    return-object v0
.end method

.method private addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    iput-object p1, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    return-object p0
.end method

.method private addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    iput-object p2, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final add(Ljava/lang/String;C)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 3

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/String;D)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 4

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/String;F)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 3

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 4

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final addValue(C)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final addValue(D)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final addValue(F)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final addValue(I)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final addValue(J)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final addValue(Z)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object p1

    return-object p1
.end method

.method public final omitNullValues()Lcom/google/common/base/Objects$ToStringHelper;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->omitNullValues:Z

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    iget-boolean v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->omitNullValues:Z

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lcom/google/common/base/Objects$ToStringHelper;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/common/base/Objects$ToStringHelper;->holderHead:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    :cond_0
    :goto_0
    iget-object v3, v3, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->next:Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_1

    iget-object v4, v3, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    if-eqz v4, :cond_0

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    iget-object v4, v3, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v4, v3, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
