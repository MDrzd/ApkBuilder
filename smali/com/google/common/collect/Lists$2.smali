.class final Lcom/google/common/collect/Lists$2;
.super Lcom/google/common/collect/Lists$AbstractListWrapper;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$AbstractListWrapper;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final listIterator(I)Ljava/util/ListIterator;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Lists$2;->backingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method
