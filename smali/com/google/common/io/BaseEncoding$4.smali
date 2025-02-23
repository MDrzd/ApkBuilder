.class final Lcom/google/common/io/BaseEncoding$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/io/GwtWorkarounds$CharOutput;


# instance fields
.field charsUntilSeparator:I

.field final synthetic val$afterEveryChars:I

.field final synthetic val$delegate:Lcom/google/common/io/GwtWorkarounds$CharOutput;

.field final synthetic val$separator:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/google/common/io/GwtWorkarounds$CharOutput;)V
    .registers 4

    iput p1, p0, Lcom/google/common/io/BaseEncoding$4;->val$afterEveryChars:I

    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$4;->val$separator:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/common/io/BaseEncoding$4;->val$delegate:Lcom/google/common/io/GwtWorkarounds$CharOutput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p1, p0, Lcom/google/common/io/BaseEncoding$4;->val$afterEveryChars:I

    iput p1, p0, Lcom/google/common/io/BaseEncoding$4;->charsUntilSeparator:I

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$4;->val$delegate:Lcom/google/common/io/GwtWorkarounds$CharOutput;

    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$CharOutput;->close()V

    return-void
.end method

.method public final flush()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$4;->val$delegate:Lcom/google/common/io/GwtWorkarounds$CharOutput;

    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$CharOutput;->flush()V

    return-void
.end method

.method public final write(C)V
    .registers 5

    iget v0, p0, Lcom/google/common/io/BaseEncoding$4;->charsUntilSeparator:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$4;->val$separator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$4;->val$delegate:Lcom/google/common/io/GwtWorkarounds$CharOutput;

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$4;->val$separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/common/io/GwtWorkarounds$CharOutput;->write(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/common/io/BaseEncoding$4;->val$afterEveryChars:I

    iput v0, p0, Lcom/google/common/io/BaseEncoding$4;->charsUntilSeparator:I

    :cond_1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$4;->val$delegate:Lcom/google/common/io/GwtWorkarounds$CharOutput;

    invoke-interface {v0, p1}, Lcom/google/common/io/GwtWorkarounds$CharOutput;->write(C)V

    iget p1, p0, Lcom/google/common/io/BaseEncoding$4;->charsUntilSeparator:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/io/BaseEncoding$4;->charsUntilSeparator:I

    return-void
.end method
