.class final Lcom/google/common/io/GwtWorkarounds$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/io/GwtWorkarounds$CharInput;


# instance fields
.field index:I

.field final synthetic val$chars:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/io/GwtWorkarounds$2;->val$chars:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/io/GwtWorkarounds$2;->index:I

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$2;->val$chars:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/google/common/io/GwtWorkarounds$2;->index:I

    return-void
.end method

.method public final read()I
    .registers 4

    iget v0, p0, Lcom/google/common/io/GwtWorkarounds$2;->index:I

    iget-object v1, p0, Lcom/google/common/io/GwtWorkarounds$2;->val$chars:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$2;->val$chars:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/google/common/io/GwtWorkarounds$2;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/io/GwtWorkarounds$2;->index:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
