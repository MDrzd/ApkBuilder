.class public Lcom/google/common/collect/ForwardingMap$StandardKeySet;
.super Lcom/google/common/collect/Maps$KeySet;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ForwardingMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingMap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/ForwardingMap$StandardKeySet;->this$0:Lcom/google/common/collect/ForwardingMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    return-void
.end method
