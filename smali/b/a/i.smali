.class public final Lb/a/i;
.super Ljava/lang/Object;


# static fields
.field static final a:[S


# instance fields
.field private b:Ljava/nio/ByteBuffer;

.field private final c:Lb/a/ac;

.field private d:I

.field private final e:Lb/a/p;

.field private final f:Lb/a/q;

.field private final g:Lb/a/r;

.field private final h:Lb/a/n;

.field private final i:Lb/a/l;

.field private final j:Lb/a/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [S

    sput-object v0, Lb/a/i;->a:[S

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/ac;

    invoke-direct {v0}, Lb/a/ac;-><init>()V

    iput-object v0, p0, Lb/a/i;->c:Lb/a/ac;

    const/4 v0, 0x0

    iput v0, p0, Lb/a/i;->d:I

    new-instance v1, Lb/a/p;

    invoke-direct {v1, p0, v0}, Lb/a/p;-><init>(Lb/a/i;B)V

    iput-object v1, p0, Lb/a/i;->e:Lb/a/p;

    new-instance v1, Lb/a/q;

    invoke-direct {v1, p0, v0}, Lb/a/q;-><init>(Lb/a/i;B)V

    iput-object v1, p0, Lb/a/i;->f:Lb/a/q;

    new-instance v1, Lb/a/r;

    invoke-direct {v1, p0, v0}, Lb/a/r;-><init>(Lb/a/i;B)V

    iput-object v1, p0, Lb/a/i;->g:Lb/a/r;

    new-instance v1, Lb/a/n;

    invoke-direct {v1, p0, v0}, Lb/a/n;-><init>(Lb/a/i;B)V

    iput-object v1, p0, Lb/a/i;->h:Lb/a/n;

    new-instance v1, Lb/a/l;

    invoke-direct {v1, p0, v0}, Lb/a/l;-><init>(Lb/a/i;B)V

    iput-object v1, p0, Lb/a/i;->i:Lb/a/l;

    new-instance v1, Lb/a/m;

    invoke-direct {v1, p0, v0}, Lb/a/m;-><init>(Lb/a/i;B)V

    iput-object v1, p0, Lb/a/i;->j:Lb/a/m;

    new-array p1, p1, [B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lb/a/i;->b:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lb/a/i;->b:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/ac;

    invoke-direct {v0}, Lb/a/ac;-><init>()V

    iput-object v0, p0, Lb/a/i;->c:Lb/a/ac;

    const/4 v0, 0x0

    iput v0, p0, Lb/a/i;->d:I

    new-instance v1, Lb/a/p;

    invoke-direct {v1, p0, v0}, Lb/a/p;-><init>(Lb/a/i;B)V

    iput-object v1, p0, Lb/a/i;->e:Lb/a/p;

    new-instance v1, Lb/a/q;

    invoke-direct {v1, p0, v0}, Lb/a/q;-><init>(Lb/a/i;B)V

    iput-object v1, p0, Lb/a/i;->f:Lb/a/q;

    new-instance v1, Lb/a/r;

    invoke-direct {v1, p0, v0}, Lb/a/r;-><init>(Lb/a/i;B)V

    iput-object v1, p0, Lb/a/i;->g:Lb/a/r;

    new-instance v1, Lb/a/n;

    invoke-direct {v1, p0, v0}, Lb/a/n;-><init>(Lb/a/i;B)V

    iput-object v1, p0, Lb/a/i;->h:Lb/a/n;

    new-instance v1, Lb/a/l;

    invoke-direct {v1, p0, v0}, Lb/a/l;-><init>(Lb/a/i;B)V

    iput-object v1, p0, Lb/a/i;->i:Lb/a/l;

    new-instance v1, Lb/a/m;

    invoke-direct {v1, p0, v0}, Lb/a/m;-><init>(Lb/a/i;B)V

    iput-object v1, p0, Lb/a/i;->j:Lb/a/m;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a/a;->f(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    const-string v2, "classes.dex"

    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    invoke-direct {p0, p1}, Lb/a/i;->a(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_2
    :goto_1
    throw v0

    :cond_3
    new-instance v0, Lb/a/s;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected classes.dex in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".dex"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_3
    invoke-direct {p0, v0}, Lb/a/i;->a(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :goto_2
    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :goto_4
    throw p1

    :cond_6
    new-instance v0, Lb/a/s;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown output extension: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/ac;

    invoke-direct {v0}, Lb/a/ac;-><init>()V

    iput-object v0, p0, Lb/a/i;->c:Lb/a/ac;

    const/4 v0, 0x0

    iput v0, p0, Lb/a/i;->d:I

    new-instance v1, Lb/a/p;

    invoke-direct {v1, p0, v0}, Lb/a/p;-><init>(Lb/a/i;B)V

    iput-object v1, p0, Lb/a/i;->e:Lb/a/p;

    new-instance v1, Lb/a/q;

    invoke-direct {v1, p0, v0}, Lb/a/q;-><init>(Lb/a/i;B)V

    iput-object v1, p0, Lb/a/i;->f:Lb/a/q;

    new-instance v1, Lb/a/r;

    invoke-direct {v1, p0, v0}, Lb/a/r;-><init>(Lb/a/i;B)V

    iput-object v1, p0, Lb/a/i;->g:Lb/a/r;

    new-instance v1, Lb/a/n;

    invoke-direct {v1, p0, v0}, Lb/a/n;-><init>(Lb/a/i;B)V

    iput-object v1, p0, Lb/a/i;->h:Lb/a/n;

    new-instance v1, Lb/a/l;

    invoke-direct {v1, p0, v0}, Lb/a/l;-><init>(Lb/a/i;B)V

    iput-object v1, p0, Lb/a/i;->i:Lb/a/l;

    new-instance v1, Lb/a/m;

    invoke-direct {v1, p0, v0}, Lb/a/m;-><init>(Lb/a/i;B)V

    iput-object v1, p0, Lb/a/i;->j:Lb/a/m;

    iput-object p1, p0, Lb/a/i;->b:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lb/a/i;->b:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lb/a/i;->c:Lb/a/ac;

    invoke-virtual {p1, p0}, Lb/a/ac;->a(Lb/a/i;)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/a/i;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic a(Lb/a/i;)Lb/a/ac;
    .registers 1

    iget-object p0, p0, Lb/a/i;->c:Lb/a/ac;

    return-object p0
.end method

.method static synthetic a(II)V
    .registers 2

    invoke-static {p0, p1}, Lb/a/i;->b(II)V

    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .registers 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lb/a/i;->b:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lb/a/i;->b:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lb/a/i;->c:Lb/a/ac;

    invoke-virtual {p1, p0}, Lb/a/ac;->a(Lb/a/i;)V

    return-void
.end method

.method static synthetic b(Lb/a/i;)Lb/a/p;
    .registers 1

    iget-object p0, p0, Lb/a/i;->e:Lb/a/p;

    return-object p0
.end method

.method private static b(II)V
    .registers 5

    if-ltz p0, :cond_0

    if-ge p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", length="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private m()[B
    .registers 7

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x2000

    new-array v2, v1, [B

    iget-object v3, p0, Lb/a/i;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public final a()Lb/a/ac;
    .registers 2

    iget-object v0, p0, Lb/a/i;->c:Lb/a/ac;

    return-object v0
.end method

.method public final a(Lcom/gmail/heagoo/common/ab;)Lb/a/c;
    .registers 3

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/ab;->i()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lb/a/i;->a(I)Lb/a/o;

    move-result-object p1

    invoke-static {p1}, Lb/a/o;->a(Lb/a/o;)Lb/a/c;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "offset == 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/a/e;)Lb/a/f;
    .registers 3

    invoke-virtual {p1}, Lb/a/e;->c()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lb/a/i;->a(I)Lb/a/o;

    move-result-object p1

    invoke-static {p1}, Lb/a/o;->b(Lb/a/o;)Lb/a/f;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "offset == 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(I)Lb/a/o;
    .registers 5

    if-ltz p1, :cond_0

    iget-object v0, p0, Lb/a/i;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lb/a/i;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lb/a/i;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    new-instance p1, Lb/a/o;

    const-string v1, "section"

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v0, v2}, Lb/a/o;-><init>(Lb/a/i;Ljava/lang/String;Ljava/nio/ByteBuffer;B)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "position="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " length="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lb/a/i;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(ILjava/lang/String;)Lb/a/o;
    .registers 6

    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_0

    iget v0, p0, Lb/a/i;->d:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lb/a/i;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget v1, p0, Lb/a/i;->d:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    new-instance v1, Lb/a/o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lb/a/o;-><init>(Lb/a/i;Ljava/lang/String;Ljava/nio/ByteBuffer;B)V

    iput v0, p0, Lb/a/i;->d:I

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not four byte aligned!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/io/OutputStream;)V
    .registers 7

    const/16 v0, 0x2000

    new-array v1, v0, [B

    iget-object v2, p0, Lb/a/i;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Lb/a/i;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public final b(I)Lb/a/ae;
    .registers 2

    if-nez p1, :cond_0

    sget-object p1, Lb/a/ae;->a:Lb/a/ae;

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lb/a/i;->a(I)Lb/a/o;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/o;->f()Lb/a/ae;

    move-result-object p1

    return-object p1
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lb/a/i;->d:I

    return v0
.end method

.method public final c(I)I
    .registers 3

    iget-object v0, p0, Lb/a/i;->c:Lb/a/ac;

    iget-object v0, v0, Lb/a/ac;->c:Lb/a/ad;

    iget v0, v0, Lb/a/ad;->b:I

    invoke-static {p1, v0}, Lb/a/i;->b(II)V

    iget-object v0, p0, Lb/a/i;->c:Lb/a/ac;

    iget-object v0, v0, Lb/a/ac;->c:Lb/a/ad;

    iget v0, v0, Lb/a/ad;->c:I

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    iget-object p1, p0, Lb/a/i;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public final d()[B
    .registers 4

    iget-object v0, p0, Lb/a/i;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public final e()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lb/a/i;->e:Lb/a/p;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lb/a/i;->f:Lb/a/q;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lb/a/i;->g:Lb/a/r;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lb/a/i;->h:Lb/a/n;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lb/a/i;->i:Lb/a/l;

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lb/a/i;->j:Lb/a/m;

    return-object v0
.end method

.method public final k()Ljava/lang/Iterable;
    .registers 3

    new-instance v0, Lb/a/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/a/j;-><init>(Lb/a/i;B)V

    return-object v0
.end method

.method public final l()V
    .registers 8

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lb/a/i;->a(I)Lb/a/o;

    move-result-object v1

    invoke-direct {p0}, Lb/a/i;->m()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/a/o;->a([B)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lb/a/i;->a(I)Lb/a/o;

    move-result-object v1

    new-instance v2, Ljava/util/zip/Adler32;

    invoke-direct {v2}, Ljava/util/zip/Adler32;-><init>()V

    const/16 v3, 0x2000

    new-array v4, v3, [B

    iget-object v5, p0, Lb/a/i;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4, v6, v0}, Ljava/util/zip/Adler32;->update([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lb/a/o;->f(I)V

    return-void
.end method
