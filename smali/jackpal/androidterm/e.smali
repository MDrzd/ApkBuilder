.class public final Ljackpal/androidterm/e;
.super Ljackpal/androidterm/b;


# instance fields
.field private c:I

.field private d:Ljava/lang/Thread;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljackpal/androidterm/c/c;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/ptmx"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x30000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljackpal/androidterm/b;-><init>(Landroid/os/ParcelFileDescriptor;Ljackpal/androidterm/c/c;Z)V

    new-instance p1, Ljackpal/androidterm/f;

    invoke-direct {p1, p0}, Ljackpal/androidterm/f;-><init>(Ljackpal/androidterm/e;)V

    iput-object p1, p0, Ljackpal/androidterm/e;->f:Landroid/os/Handler;

    iget-object p1, p0, Ljackpal/androidterm/e;->b:Ljackpal/androidterm/c/c;

    const-string v0, "PATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->w()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->z()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->x()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->y()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->v()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Ljackpal/androidterm/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TERM="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PATH="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "HOME="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->q()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Ljackpal/androidterm/e;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ljackpal/androidterm/e;->c:I

    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v0, p0, Ljackpal/androidterm/e;->a:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p0, p1}, Ljackpal/androidterm/e;->a(Ljava/io/OutputStream;)V

    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v0, p0, Ljackpal/androidterm/e;->a:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p0, p1}, Ljackpal/androidterm/e;->a(Ljava/io/InputStream;)V

    iput-object p2, p0, Ljackpal/androidterm/e;->e:Ljava/lang/String;

    new-instance p1, Ljackpal/androidterm/g;

    invoke-direct {p1, p0}, Ljackpal/androidterm/g;-><init>(Ljackpal/androidterm/e;)V

    iput-object p1, p0, Ljackpal/androidterm/e;->d:Ljava/lang/Thread;

    iget-object p1, p0, Ljackpal/androidterm/e;->d:Ljava/lang/Thread;

    const-string p2, "Process watcher"

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljackpal/androidterm/e;)I
    .registers 1

    iget p0, p0, Ljackpal/androidterm/e;->c:I

    return p0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8

    invoke-static {p1}, Ljackpal/androidterm/e;->g(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Ljackpal/androidterm/compat/FileCompat;->a(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-array v3, v0, [Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Term"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Shell "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not executable!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "Term"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Shell "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Ljackpal/androidterm/e;->b:Ljackpal/androidterm/c/c;

    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->r()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljackpal/androidterm/e;->g(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Ljackpal/androidterm/e;->a:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v2, p1, p2}, Ljackpal/androidterm/TermExec;->a(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method static synthetic a(Ljackpal/androidterm/e;I)V
    .registers 2

    invoke-virtual {p0}, Ljackpal/androidterm/e;->c()V

    return-void
.end method

.method static synthetic b(Ljackpal/androidterm/e;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Ljackpal/androidterm/e;->f:Landroid/os/Handler;

    return-object p0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length p0, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_1

    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Ljackpal/androidterm/compat/FileCompat;->a(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, v2, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static g(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    if-ge v5, v1, :cond_7

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x2

    const/16 v9, 0x22

    if-nez v6, :cond_2

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    goto :goto_3

    :cond_0
    if-ne v7, v9, :cond_1

    :goto_1
    const/4 v6, 0x2

    goto :goto_3

    :cond_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    if-ne v6, v4, :cond_4

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-nez v10, :cond_6

    if-ne v7, v9, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    if-ne v6, v8, :cond_6

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_5

    add-int/lit8 v7, v5, 0x1

    if-ge v7, v1, :cond_6

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v7

    goto :goto_3

    :cond_5
    if-ne v7, v9, :cond_1

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v5, v4

    goto :goto_0

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_8

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v0
.end method


# virtual methods
.method public final a(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Ljackpal/androidterm/b;->a(II)V

    iget-object p1, p0, Ljackpal/androidterm/e;->d:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Ljackpal/androidterm/e;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xd

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljackpal/androidterm/e;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Ljackpal/androidterm/c/c;)V
    .registers 2

    invoke-super {p0, p1}, Ljackpal/androidterm/b;->a(Ljackpal/androidterm/c/c;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/String;)V
    .registers 2

    invoke-super {p0, p1}, Ljackpal/androidterm/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-super {p0, p1}, Ljackpal/androidterm/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Ljackpal/androidterm/b;->b(II)V

    return-void
.end method

.method public final bridge synthetic c(Ljava/lang/String;)V
    .registers 2

    invoke-super {p0, p1}, Ljackpal/androidterm/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .registers 3

    iget v0, p0, Ljackpal/androidterm/e;->c:I

    neg-int v0, v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljackpal/androidterm/TermExec;->sendSignal(II)V

    invoke-super {p0}, Ljackpal/androidterm/b;->d()V

    return-void
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljackpal/androidterm/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
