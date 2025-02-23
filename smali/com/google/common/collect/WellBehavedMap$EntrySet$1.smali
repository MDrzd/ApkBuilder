.class Lcom/google/common/collect/WellBehavedMap$EntrySet$1;
.super Lcom/google/common/collect/TransformedIterator;


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/WellBehavedMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/WellBehavedMap$EntrySet;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1;->this$1:Lcom/google/common/collect/WellBehavedMap$EntrySet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/WellBehavedMap$EntrySet$1;->transform(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method transform(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3

    new-instance v0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/WellBehavedMap$EntrySet$1$1;-><init>(Lcom/google/common/collect/WellBehavedMap$EntrySet$1;Ljava/lang/Object;)V

    return-object v0
.end method
