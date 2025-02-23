.class public Ljackpal/androidterm/TermExec;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "jackpal-termexec2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method static a(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v0, Ljackpal/androidterm/TermExec;->a:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    const-class v0, Ljava/io/FileDescriptor;

    const-string v1, "descriptor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ljackpal/androidterm/TermExec;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_1
    sget-object v0, Ljackpal/androidterm/TermExec;->a:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1, p2, p3, p0}, Ljackpal/androidterm/TermExec;->createSubprocessInternal(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unable to obtain file descriptor on this OS version: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native createSubprocessInternal(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)I
.end method

.method public static native sendSignal(II)V
.end method

.method public static native waitFor(I)I
.end method
