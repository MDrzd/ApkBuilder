.class Lcom/google/common/cache/CacheBuilderSpec$InitialCapacityParser;
.super Lcom/google/common/cache/CacheBuilderSpec$IntegerParser;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$IntegerParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseInteger(Lcom/google/common/cache/CacheBuilderSpec;I)V
    .registers 8

    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->initialCapacity:Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "initial capacity was already set to "

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/google/common/cache/CacheBuilderSpec;->initialCapacity:Ljava/lang/Integer;

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->initialCapacity:Ljava/lang/Integer;

    return-void
.end method
