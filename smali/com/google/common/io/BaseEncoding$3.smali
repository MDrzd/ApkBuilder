.class final Lcom/google/common/io/BaseEncoding$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/io/GwtWorkarounds$CharInput;


# instance fields
.field final synthetic val$delegate:Lcom/google/common/io/GwtWorkarounds$CharInput;

.field final synthetic val$toIgnore:Lcom/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/google/common/io/GwtWorkarounds$CharInput;Lcom/google/common/base/CharMatcher;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$3;->val$delegate:Lcom/google/common/io/GwtWorkarounds$CharInput;

    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$3;->val$toIgnore:Lcom/google/common/base/CharMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$3;->val$delegate:Lcom/google/common/io/GwtWorkarounds$CharInput;

    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$CharInput;->close()V

    return-void
.end method

.method public final read()I
    .registers 4

    :cond_0
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$3;->val$delegate:Lcom/google/common/io/GwtWorkarounds$CharInput;

    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$CharInput;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$3;->val$toIgnore:Lcom/google/common/base/CharMatcher;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return v0
.end method
