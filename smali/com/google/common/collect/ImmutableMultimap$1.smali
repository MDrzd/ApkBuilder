.class Lcom/google/common/collect/ImmutableMultimap$1;
.super Lcom/google/common/collect/ImmutableMultimap$Itr;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultimap;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$1;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ImmutableMultimap$Itr;-><init>(Lcom/google/common/collect/ImmutableMultimap;Lcom/google/common/collect/ImmutableMultimap$1;)V

    return-void
.end method


# virtual methods
.method bridge synthetic output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$1;->output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
