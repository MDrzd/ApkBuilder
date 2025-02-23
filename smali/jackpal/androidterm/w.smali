.class final Ljackpal/androidterm/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:I

.field private synthetic b:Ljackpal/androidterm/TermViewFlipper;


# direct methods
.method constructor <init>(Ljackpal/androidterm/TermViewFlipper;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/w;->b:Ljackpal/androidterm/TermViewFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Ljackpal/androidterm/w;->a:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    iget v0, p0, Ljackpal/androidterm/w;->a:I

    iget-object v1, p0, Ljackpal/androidterm/w;->b:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v1}, Ljackpal/androidterm/TermViewFlipper;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/w;->b:Ljackpal/androidterm/TermViewFlipper;

    iget v1, p0, Ljackpal/androidterm/w;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljackpal/androidterm/w;->a:I

    invoke-virtual {v0, v1}, Ljackpal/androidterm/TermViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
