.class public abstract Lcom/google/common/util/concurrent/Service$Listener;
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
.method public failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method

.method public running()V
    .registers 1

    return-void
.end method

.method public starting()V
    .registers 1

    return-void
.end method

.method public stopping(Lcom/google/common/util/concurrent/Service$State;)V
    .registers 2

    return-void
.end method

.method public terminated(Lcom/google/common/util/concurrent/Service$State;)V
    .registers 2

    return-void
.end method
