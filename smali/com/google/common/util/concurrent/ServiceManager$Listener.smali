.class public abstract Lcom/google/common/util/concurrent/ServiceManager$Listener;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/google/common/util/concurrent/Service;)V
    .registers 2

    return-void
.end method

.method public healthy()V
    .registers 1

    return-void
.end method

.method public stopped()V
    .registers 1

    return-void
.end method
