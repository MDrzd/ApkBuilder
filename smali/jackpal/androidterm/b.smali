.class Ljackpal/androidterm/b;
.super Ljackpal/androidterm/a/q;


# static fields
.field private static c:Ljava/lang/reflect/Field;


# instance fields
.field final a:Landroid/os/ParcelFileDescriptor;

.field b:Ljackpal/androidterm/c/c;

.field private final d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljackpal/androidterm/a/ac;


# direct methods
.method constructor <init>(Landroid/os/ParcelFileDescriptor;Ljackpal/androidterm/c/c;Z)V
    .registers 6

    invoke-direct {p0, p3}, Ljackpal/androidterm/a/q;-><init>(Z)V

    new-instance p3, Ljackpal/androidterm/c;

    invoke-direct {p3, p0}, Ljackpal/androidterm/c;-><init>(Ljackpal/androidterm/b;)V

    iput-object p3, p0, Ljackpal/androidterm/b;->g:Ljackpal/androidterm/a/ac;

    iput-object p1, p0, Ljackpal/androidterm/b;->a:Landroid/os/ParcelFileDescriptor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljackpal/androidterm/b;->d:J

    invoke-virtual {p0, p2}, Ljackpal/androidterm/b;->a(Ljackpal/androidterm/c/c;)V

    return-void
.end method

.method private static a(Landroid/os/ParcelFileDescriptor;)I
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p0

    return p0

    :cond_0
    :try_start_0
    sget-object v0, Ljackpal/androidterm/b;->c:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    const-class v0, Ljava/io/FileDescriptor;

    const-string v1, "descriptor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ljackpal/androidterm/b;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_1
    sget-object v0, Ljackpal/androidterm/b;->c:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to obtain file descriptor on this OS version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Ljackpal/androidterm/a/q;->a(II)V

    invoke-virtual {p0}, Ljackpal/androidterm/b;->i()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljackpal/androidterm/b;->a(Z)V

    iget-object p1, p0, Ljackpal/androidterm/b;->g:Ljackpal/androidterm/a/ac;

    invoke-virtual {p0, p1}, Ljackpal/androidterm/b;->c(Ljackpal/androidterm/a/ac;)V

    return-void
.end method

.method public a(Ljackpal/androidterm/c/c;)V
    .registers 4

    iput-object p1, p0, Ljackpal/androidterm/b;->b:Ljackpal/androidterm/c/c;

    new-instance v0, Lb/b/c/a/b;

    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->e()[I

    move-result-object v1

    invoke-direct {v0, v1}, Lb/b/c/a/b;-><init>([I)V

    invoke-virtual {p0, v0}, Ljackpal/androidterm/b;->a(Lb/b/c/a/b;)V

    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->f()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljackpal/androidterm/b;->b(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/b;->f:Ljava/lang/String;

    return-void
.end method

.method final a(Z)V
    .registers 5

    iget-object v0, p0, Ljackpal/androidterm/b;->a:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Ljackpal/androidterm/b;->a:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Ljackpal/androidterm/b;->a(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    invoke-static {v0, p1}, Ljackpal/androidterm/Exec;->setPtyUTF8ModeInternal(IZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "exec"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to set UTF mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljackpal/androidterm/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljackpal/androidterm/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method

.method public b(II)V
    .registers 7

    iget-object v0, p0, Ljackpal/androidterm/b;->a:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Ljackpal/androidterm/b;->a:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Ljackpal/androidterm/b;->a(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1, v1}, Ljackpal/androidterm/Exec;->setPtyWindowSizeInternal(IIIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "exec"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to set window size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljackpal/androidterm/b;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Ljackpal/androidterm/a/q;->b(II)V

    return-void
.end method

.method b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final c()V
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/b;->b:Ljackpal/androidterm/c/c;

    invoke-virtual {v0}, Ljackpal/androidterm/c/c;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljackpal/androidterm/b;->d()V

    return-void

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\r\n["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljackpal/androidterm/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljackpal/androidterm/b;->b([BII)V

    invoke-virtual {p0}, Ljackpal/androidterm/b;->g()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/b;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Ljackpal/androidterm/b;->e:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change handle once set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Ljackpal/androidterm/b;->a:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-super {p0}, Ljackpal/androidterm/a/q;->d()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljackpal/androidterm/b;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljackpal/androidterm/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
