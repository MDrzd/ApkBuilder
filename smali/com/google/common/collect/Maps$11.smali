.class final Lcom/google/common/collect/Maps$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field final synthetic val$transformer:Lcom/google/common/collect/Maps$EntryTransformer;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$EntryTransformer;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/Maps$11;->val$transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$11;->apply(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Maps$11;->val$transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->transformEntry(Lcom/google/common/collect/Maps$EntryTransformer;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
