.class final Lcom/google/common/cache/LocalCache$KeyIterator;
.super Lcom/google/common/cache/LocalCache$HashIterator;


# instance fields
.field final synthetic this$0:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$KeyIterator;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache$HashIterator;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$KeyIterator;->nextEntry()Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
