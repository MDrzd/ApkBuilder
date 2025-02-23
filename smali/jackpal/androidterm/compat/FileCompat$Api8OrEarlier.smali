.class Ljackpal/androidterm/compat/FileCompat$Api8OrEarlier;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "jackpal-androidterm5"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .registers 1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljackpal/androidterm/compat/FileCompat$Api8OrEarlier;->testExecute(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static native testExecute(Ljava/lang/String;)Z
.end method
