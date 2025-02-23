.class Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulFuture;
.super Lcom/google/common/util/concurrent/Futures$ImmediateFuture;


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Futures$ImmediateFuture;-><init>(Lcom/google/common/util/concurrent/Futures$1;)V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulFuture;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulFuture;->value:Ljava/lang/Object;

    return-object v0
.end method
