.class public final Ljackpal/androidterm/compat/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/app/Activity;)V
    .registers 3

    sget v0, Ljackpal/androidterm/compat/f;->a:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public static b(Landroid/app/Activity;)Ljackpal/androidterm/compat/c;
    .registers 4

    sget v0, Ljackpal/androidterm/compat/f;->a:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_1

    sget v0, Ljackpal/androidterm/compat/f;->a:I

    if-lt v0, v2, :cond_1

    new-instance v0, Ljackpal/androidterm/compat/a;

    invoke-direct {v0, p0}, Ljackpal/androidterm/compat/a;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    return-object v1
.end method
