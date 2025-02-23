.class public final Ljackpal/androidterm/a/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(C)I
    .registers 3

    sget v0, Ljackpal/androidterm/a/a/b;->a:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/text/AndroidCharacter;->getEastAsianWidth(C)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0
.end method
