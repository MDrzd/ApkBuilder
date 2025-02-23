.class public Lcom/google/common/collect/ForwardingMultiset$StandardElementSet;
.super Lcom/google/common/collect/Multisets$ElementSet;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ForwardingMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingMultiset;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/ForwardingMultiset$StandardElementSet;->this$0:Lcom/google/common/collect/ForwardingMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$ElementSet;-><init>()V

    return-void
.end method


# virtual methods
.method multiset()Lcom/google/common/collect/Multiset;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/ForwardingMultiset$StandardElementSet;->this$0:Lcom/google/common/collect/ForwardingMultiset;

    return-object v0
.end method
