.class public final Lb/b/a/c/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lb/b/a/c/i;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lb/b/a/c/h;

.field private final d:Z

.field private e:Lb/b/a/c/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/b/a/c/e;

    invoke-direct {v0}, Lb/b/a/c/e;-><init>()V

    sput-object v0, Lb/b/a/c/d;->a:Lb/b/a/c/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLb/b/a/c/h;)V
    .registers 5

    sget-object p2, Lb/b/a/c/d;->a:Lb/b/a/c/i;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lb/b/a/c/d;-><init>(Ljava/lang/String;ZLb/b/a/c/i;Lb/b/a/c/h;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLb/b/a/c/i;Lb/b/a/c/h;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/c/d;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lb/b/a/c/d;->d:Z

    iput-object p4, p0, Lb/b/a/c/d;->c:Lb/b/a/c/h;

    iput-object p3, p0, Lb/b/a/c/d;->e:Lb/b/a/c/i;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/16 v0, 0x30

    const/16 v1, 0x24

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const-string v0, "package-info"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "package-info"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/io/File;)Z
    .registers 13

    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    iget-boolean v2, p0, Lb/b/a/c/d;->d:Z

    if-eqz v2, :cond_0

    new-instance v2, Lb/b/a/c/g;

    invoke-direct {v2, p0}, Lb/b/a/c/g;-><init>(Lb/b/a/c/d;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    iget-object v2, p0, Lb/b/a/c/d;->c:Lb/b/a/c/h;

    invoke-interface {v2, p1}, Lb/b/a/c/h;->a(Ljava/io/File;)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const v2, 0x9c40

    invoke-direct {p1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v2, 0x4e20

    new-array v2, v2, [B

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lb/b/a/c/d;->e:Lb/b/a/c/i;

    invoke-interface {v8, v7}, Lb/b/a/c/i;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v6, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    :goto_1
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    invoke-virtual {p1, v2, v3, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_2

    :cond_3
    new-array v6, v3, [B

    :goto_2
    iget-object v8, p0, Lb/b/a/c/d;->c:Lb/b/a/c/h;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v9

    invoke-interface {v8, v7, v9, v10, v6}, Lb/b/a/c/h;->a(Ljava/lang/String;J[B)Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return v4
.end method

.method private a(Ljava/io/File;Z)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_0

    new-instance p2, Ljava/io/File;

    const-string v1, "."

    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length p2, p1

    iget-boolean v1, p0, Lb/b/a/c/d;->d:Z

    if-eqz v1, :cond_1

    new-instance v1, Lb/b/a/c/f;

    invoke-direct {v1, p0}, Lb/b/a/c/f;-><init>(Lb/b/a/c/d;)V

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    aget-object v3, p1, v1

    invoke-direct {p0, v3, v0}, Lb/b/a/c/d;->a(Ljava/io/File;Z)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string v1, ".zip"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, ".jar"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, ".apk"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lb/b/a/c/d;->e:Lb/b/a/c/i;

    invoke-interface {v1, p2}, Lb/b/a/c/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p1}, La/a/a;->a(Ljava/io/File;)[B

    move-result-object v1

    iget-object v2, p0, Lb/b/a/c/d;->c:Lb/b/a/c/h;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-interface {v2, p2, v3, v4, v1}, Lb/b/a/c/h;->a(Ljava/lang/String;J[B)Z

    move-result p1

    return p1

    :cond_5
    return v0

    :cond_6
    :goto_1
    invoke-direct {p0, p1}, Lb/b/a/c/d;->a(Ljava/io/File;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lb/b/a/c/d;->c:Lb/b/a/c/h;

    invoke-interface {p2, p1}, Lb/b/a/c/h;->a(Ljava/lang/Exception;)V

    return v0
.end method


# virtual methods
.method public final a()Z
    .registers 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lb/b/a/c/d;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lb/b/a/c/d;->a(Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method
