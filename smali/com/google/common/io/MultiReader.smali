.class Lcom/google/common/io/MultiReader;
.super Ljava/io/Reader;


# instance fields
.field private current:Ljava/io/Reader;

.field private final it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .registers 2

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lcom/google/common/io/MultiReader;->it:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/io/MultiReader;->advance()V

    return-void
.end method

.method private advance()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/io/MultiReader;->close()V

    iget-object v0, p0, Lcom/google/common/io/MultiReader;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/MultiReader;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/CharSource;

    invoke-virtual {v0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    throw v1

    :cond_0
    return-void
.end method

.method public read([CII)I
    .registers 6
    .param p1    # [C
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/common/io/MultiReader;->advance()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/io/MultiReader;->read([CII)I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public ready()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public skip(J)J
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "n is negative"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    :goto_1
    iget-object v2, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    invoke-virtual {v2, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    return-wide v2

    :cond_1
    invoke-direct {p0}, Lcom/google/common/io/MultiReader;->advance()V

    goto :goto_1

    :cond_2
    return-wide v0
.end method
