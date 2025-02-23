.class public Lcom/google/common/collect/ForwardingNavigableMap$StandardNavigableKeySet;
.super Lcom/google/common/collect/Maps$NavigableKeySet;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ForwardingNavigableMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingNavigableMap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardNavigableKeySet;->this$0:Lcom/google/common/collect/ForwardingNavigableMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$NavigableKeySet;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method
