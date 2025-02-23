.class final Lcom/google/common/io/Files$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/io/LineProcessor;


# instance fields
.field final result:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/Files$1;->result:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final bridge synthetic getResult()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/io/Files$1;->getResult()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getResult()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/common/io/Files$1;->result:Ljava/util/List;

    return-object v0
.end method

.method public final processLine(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/io/Files$1;->result:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
