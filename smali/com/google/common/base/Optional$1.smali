.class final Lcom/google/common/base/Optional$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic val$optionals:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/base/Optional$1;->val$optionals:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lcom/google/common/base/Optional$1$1;

    invoke-direct {v0, p0}, Lcom/google/common/base/Optional$1$1;-><init>(Lcom/google/common/base/Optional$1;)V

    return-object v0
.end method
