.class final Lcom/google/common/escape/Platform$1;
.super Ljava/lang/ThreadLocal;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/escape/Platform$1;->initialValue()[C

    move-result-object v0

    return-object v0
.end method

.method protected final initialValue()[C
    .registers 2

    const/16 v0, 0x400

    new-array v0, v0, [C

    return-object v0
.end method
