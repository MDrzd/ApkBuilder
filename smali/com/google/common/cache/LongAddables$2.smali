.class final Lcom/google/common/cache/LongAddables$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/google/common/cache/LongAddable;
    .registers 3

    new-instance v0, Lcom/google/common/cache/LongAddables$PureJavaLongAddable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/cache/LongAddables$PureJavaLongAddable;-><init>(Lcom/google/common/cache/LongAddables$1;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/cache/LongAddables$2;->get()Lcom/google/common/cache/LongAddable;

    move-result-object v0

    return-object v0
.end method
