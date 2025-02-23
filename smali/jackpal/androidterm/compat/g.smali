.class public final Ljackpal/androidterm/compat/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/view/MenuItem;I)V
    .registers 3

    sget p1, Ljackpal/androidterm/compat/f;->a:I

    const/16 v0, 0xb

    if-lt p1, v0, :cond_0

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method
