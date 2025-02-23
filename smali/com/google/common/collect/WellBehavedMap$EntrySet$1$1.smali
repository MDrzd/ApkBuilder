.class Lcom/google/common/collect/WellBehavedMap$EntrySet$1$1;
.super Lcom/google/common/collect/AbstractMapEntry;


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/WellBehavedMap$EntrySet$1;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/WellBehavedMap$EntrySet$1;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1$1;->this$2:Lcom/google/common/collect/WellBehavedMap$EntrySet$1;

    iput-object p2, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1$1;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1$1;->val$key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1$1;->this$2:Lcom/google/common/collect/WellBehavedMap$EntrySet$1;

    iget-object v0, v0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1;->this$1:Lcom/google/common/collect/WellBehavedMap$EntrySet;

    iget-object v0, v0, Lcom/google/common/collect/WellBehavedMap$EntrySet;->this$0:Lcom/google/common/collect/WellBehavedMap;

    iget-object v1, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1$1;->val$key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/WellBehavedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1$1;->this$2:Lcom/google/common/collect/WellBehavedMap$EntrySet$1;

    iget-object v0, v0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1;->this$1:Lcom/google/common/collect/WellBehavedMap$EntrySet;

    iget-object v0, v0, Lcom/google/common/collect/WellBehavedMap$EntrySet;->this$0:Lcom/google/common/collect/WellBehavedMap;

    iget-object v1, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1$1;->val$key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/WellBehavedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
