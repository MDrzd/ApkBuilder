.class public abstract Lc/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/logging/Logger;


# instance fields
.field protected a:Lc/a/a/b;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private volatile j:Ljava/net/ServerSocket;

.field private k:Lc/a/a/t;

.field private l:Ljava/lang/Thread;

.field private m:Lc/a/a/w;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "[ |\t]*(charset)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;]*)[\'|\"]?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/a/a/a;->b:Ljava/util/regex/Pattern;

    const-string v0, "[ |\t]*(boundary)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;]*)[\'|\"]?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/a/a/a;->c:Ljava/util/regex/Pattern;

    const-string v0, "([ |\t]*Content-Disposition[ |\t]*:)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/a/a/a;->d:Ljava/util/regex/Pattern;

    const-string v0, "([ |\t]*content-type[ |\t]*:)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/a/a/a;->e:Ljava/util/regex/Pattern;

    const-string v0, "[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*[\'|\"]([^\"^\']*)[\'|\"]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/a/a/a;->f:Ljava/util/regex/Pattern;

    const-class v0, Lc/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lc/a/a/a;->g:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 p1, 0x0

    const/16 v0, 0x1f40

    invoke-direct {p0, p1, v0}, Lc/a/a/a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lc/a/a/g;

    invoke-direct {p1}, Lc/a/a/g;-><init>()V

    iput-object p1, p0, Lc/a/a/a;->k:Lc/a/a/t;

    const/4 p1, 0x0

    iput-object p1, p0, Lc/a/a/a;->h:Ljava/lang/String;

    iput p2, p0, Lc/a/a/a;->i:I

    new-instance p1, Lc/a/a/j;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lc/a/a/j;-><init>(Lc/a/a/a;B)V

    iput-object p1, p0, Lc/a/a/a;->m:Lc/a/a/w;

    new-instance p1, Lc/a/a/f;

    invoke-direct {p1}, Lc/a/a/f;-><init>()V

    iput-object p1, p0, Lc/a/a/a;->a:Lc/a/a/b;

    return-void
.end method

.method public static a(Lc/a/a/p;Ljava/lang/String;Ljava/io/InputStream;J)Lc/a/a/n;
    .registers 12

    new-instance v6, Lc/a/a/n;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lc/a/a/n;-><init>(Lc/a/a/p;Ljava/lang/String;Ljava/io/InputStream;J)V

    return-object v6
.end method

.method public static a(Lc/a/a/p;Ljava/lang/String;Ljava/lang/String;)Lc/a/a/n;
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance p2, Ljava/io/ByteArrayInputStream;

    new-array v0, v0, [B

    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lc/a/a/a;->a(Lc/a/a/p;Ljava/lang/String;Ljava/io/InputStream;J)Lc/a/a/n;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object v1, Lc/a/a/a;->g:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "encoding problem, responding nothing"

    invoke-virtual {v1, v2, v3, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array p2, v0, [B

    :goto_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p2, p2

    int-to-long v1, p2

    invoke-static {p0, p1, v0, v1, v2}, Lc/a/a/a;->a(Lc/a/a/p;Ljava/lang/String;Ljava/io/InputStream;J)Lc/a/a/n;

    move-result-object p0

    return-object p0
.end method

.method private a(I)Lc/a/a/s;
    .registers 4

    new-instance v0, Lc/a/a/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lc/a/a/s;-><init>(Lc/a/a/a;IB)V

    return-object v0
.end method

.method static synthetic a(Lc/a/a/a;)Lc/a/a/w;
    .registers 1

    iget-object p0, p0, Lc/a/a/a;->m:Lc/a/a/w;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Object;)V
    .registers 1

    invoke-static {p0}, Lc/a/a/a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected static a(Lc/a/a/n;)Z
    .registers 2

    invoke-virtual {p0}, Lc/a/a/n;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/a/a/n;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "text/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lc/a/a/a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lc/a/a/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method protected static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "UTF8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lc/a/a/a;->g:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Encoding not supported, ignored"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static final b(Ljava/lang/Object;)V
    .registers 4

    if-eqz p0, :cond_3

    :try_start_0
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/net/Socket;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/net/ServerSocket;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/net/ServerSocket;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown object to close"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    sget-object v0, Lc/a/a/a;->g:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Could not close"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic c(Lc/a/a/a;)I
    .registers 1

    iget p0, p0, Lc/a/a/a;->i:I

    return p0
.end method

.method static synthetic d(Lc/a/a/a;)Ljava/net/ServerSocket;
    .registers 1

    iget-object p0, p0, Lc/a/a/a;->j:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic f()Ljava/util/logging/Logger;
    .registers 1

    sget-object v0, Lc/a/a/a;->g:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic g()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lc/a/a/a;->d:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic h()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lc/a/a/a;->f:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic i()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lc/a/a/a;->e:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic j()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lc/a/a/a;->c:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic k()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lc/a/a/a;->b:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public a(Lc/a/a/l;)Lc/a/a/n;
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Lc/a/a/l;->b()Lc/a/a/m;

    move-result-object v1

    sget-object v2, Lc/a/a/m;->a:Lc/a/a/m;

    invoke-virtual {v2, v1}, Lc/a/a/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lc/a/a/m;->b:Lc/a/a/m;

    invoke-virtual {v2, v1}, Lc/a/a/m;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :try_start_0
    invoke-interface {p1, v0}, Lc/a/a/l;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lc/a/a/r; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-interface {p1}, Lc/a/a/l;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "NanoHttpd.QUERY_STRING"

    invoke-interface {p1}, Lc/a/a/l;->d()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lc/a/a/q;->c:Lc/a/a/q;

    const-string v0, "text/plain"

    const-string v1, "Not Found"

    invoke-static {p1, v0, v1}, Lc/a/a/a;->a(Lc/a/a/p;Ljava/lang/String;Ljava/lang/String;)Lc/a/a/n;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lc/a/a/r;->a()Lc/a/a/q;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {p1}, Lc/a/a/r;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lc/a/a/a;->a(Lc/a/a/p;Ljava/lang/String;Ljava/lang/String;)Lc/a/a/n;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    sget-object v0, Lc/a/a/q;->d:Lc/a/a/q;

    const-string v1, "text/plain"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SERVER INTERNAL ERROR: IOException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lc/a/a/a;->a(Lc/a/a/p;Ljava/lang/String;Ljava/lang/String;)Lc/a/a/n;

    move-result-object p1

    return-object p1
.end method

.method public final a(IZ)V
    .registers 5

    iget-object p2, p0, Lc/a/a/a;->k:Lc/a/a/t;

    invoke-interface {p2}, Lc/a/a/t;->a()Ljava/net/ServerSocket;

    move-result-object p2

    iput-object p2, p0, Lc/a/a/a;->j:Ljava/net/ServerSocket;

    iget-object p2, p0, Lc/a/a/a;->j:Ljava/net/ServerSocket;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    invoke-direct {p0, p1}, Lc/a/a/a;->a(I)Lc/a/a/s;

    move-result-object p1

    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, Lc/a/a/a;->l:Ljava/lang/Thread;

    iget-object p2, p0, Lc/a/a/a;->l:Ljava/lang/Thread;

    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object p2, p0, Lc/a/a/a;->l:Ljava/lang/Thread;

    const-string v0, "NanoHttpd Main Listener"

    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p2, p0, Lc/a/a/a;->l:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :catch_0
    :goto_0
    invoke-static {p1}, Lc/a/a/s;->a(Lc/a/a/s;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lc/a/a/s;->b(Lc/a/a/s;)Ljava/io/IOException;

    move-result-object p2

    if-nez p2, :cond_0

    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lc/a/a/s;->b(Lc/a/a/s;)Ljava/io/IOException;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lc/a/a/s;->b(Lc/a/a/s;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lc/a/a/a;->j:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lc/a/a/a;->j:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public final d()Z
    .registers 4

    iget-object v0, p0, Lc/a/a/a;->j:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/a/a;->l:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/a/a/a;->j:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/a/a/a;->l:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public final e()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lc/a/a/a;->j:Ljava/net/ServerSocket;

    invoke-static {v0}, Lc/a/a/a;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lc/a/a/a;->a:Lc/a/a/b;

    invoke-interface {v0}, Lc/a/a/b;->a()V

    iget-object v0, p0, Lc/a/a/a;->l:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/a/a;->l:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lc/a/a/a;->g:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Could not stop all connections"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
