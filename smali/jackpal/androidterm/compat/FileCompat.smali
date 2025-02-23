.class public final Ljackpal/androidterm/compat/FileCompat;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/File;)Z
    .registers 3

    sget v0, Ljackpal/androidterm/compat/f;->a:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    invoke-static {p0}, Ljackpal/androidterm/compat/FileCompat$Api8OrEarlier;->a(Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->canExecute()Z

    move-result p0

    return p0
.end method
