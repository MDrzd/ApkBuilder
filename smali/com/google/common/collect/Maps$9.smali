.class final Lcom/google/common/collect/Maps$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field final synthetic val$transformer:Lcom/google/common/collect/Maps$EntryTransformer;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$EntryTransformer;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/Maps$9;->val$transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$9;->apply(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/Maps$9;->val$transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/Maps$EntryTransformer;->transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
