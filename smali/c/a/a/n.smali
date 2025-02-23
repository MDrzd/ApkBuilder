.class public final Lc/a/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:Lc/a/a/p;

.field private b:Ljava/lang/String;

.field private c:Ljava/io/InputStream;

.field private d:J

.field private final e:Ljava/util/Map;

.field private f:Lc/a/a/m;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method protected constructor <init>(Lc/a/a/p;Ljava/lang/String;Ljava/io/InputStream;J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/a/a/n;->e:Ljava/util/Map;

    iput-object p1, p0, Lc/a/a/n;->a:Lc/a/a/p;

    iput-object p2, p0, Lc/a/a/n;->b:Ljava/lang/String;

    const-wide/16 p1, 0x0

    const/4 v0, 0x0

    if-nez p3, :cond_0

    new-instance p3, Ljava/io/ByteArrayInputStream;

    new-array p4, v0, [B

    invoke-direct {p3, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p3, p0, Lc/a/a/n;->c:Ljava/io/InputStream;

    iput-wide p1, p0, Lc/a/a/n;->d:J

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lc/a/a/n;->c:Ljava/io/InputStream;

    iput-wide p4, p0, Lc/a/a/n;->d:J

    :goto_0
    iget-wide p3, p0, Lc/a/a/n;->d:J

    cmp-long p5, p3, p1

    const/4 p1, 0x1

    if-gez p5, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lc/a/a/n;->g:Z

    iput-boolean p1, p0, Lc/a/a/n;->i:Z

    return-void
.end method

.method private static a(Ljava/io/PrintWriter;Ljava/util/Map;J)J
    .registers 7

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "content-length"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Content-Length: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-wide p2
.end method

.method private a(Ljava/io/OutputStream;J)V
    .registers 6

    iget-boolean v0, p0, Lc/a/a/n;->h:Z

    if-eqz v0, :cond_0

    new-instance p2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v0, -0x1

    invoke-direct {p0, p2, v0, v1}, Lc/a/a/n;->b(Ljava/io/OutputStream;J)V

    invoke-virtual {p2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lc/a/a/n;->b(Ljava/io/OutputStream;J)V

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 4

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private b(Ljava/io/OutputStream;J)V
    .registers 10

    const/16 v0, 0x4000

    new-array v0, v0, [B

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    const/4 v1, 0x0

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-gtz v5, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    const-wide/16 v3, 0x4000

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_1
    iget-object v5, p0, Lc/a/a/n;->c:Ljava/io/InputStream;

    long-to-int v3, v3

    invoke-virtual {v5, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    if-nez v2, :cond_1

    int-to-long v3, v3

    sub-long/2addr p2, v3

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lc/a/a/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lc/a/a/n;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lc/a/a/n;->e:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lc/a/a/m;)V
    .registers 2

    iput-object p1, p0, Lc/a/a/n;->f:Lc/a/a/m;

    return-void
.end method

.method protected final a(Ljava/io/OutputStream;)V
    .registers 8

    iget-object v0, p0, Lc/a/a/n;->b:Ljava/lang/String;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :try_start_0
    iget-object v2, p0, Lc/a/a/n;->a:Lc/a/a/p;

    if-eqz v2, :cond_b

    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v5, "UTF-8"

    invoke-direct {v4, p1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "HTTP/1.1 "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lc/a/a/n;->a:Lc/a/a/p;

    invoke-interface {v5}, Lc/a/a/p;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Content-Type: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lc/a/a/n;->e:Ljava/util/Map;

    const-string v3, "Date"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Date: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lc/a/a/n;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lc/a/a/n;->e:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc/a/a/n;->e:Ljava/util/Map;

    const-string v1, "connection"

    invoke-static {v0, v1}, Lc/a/a/n;->a(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lc/a/a/n;->i:Z

    if-eqz v1, :cond_3

    const-string v1, "keep-alive"

    goto :goto_1

    :cond_3
    const-string v1, "close"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lc/a/a/n;->e:Ljava/util/Map;

    const-string v1, "content-length"

    invoke-static {v0, v1}, Lc/a/a/n;->a(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v4, p0, Lc/a/a/n;->h:Z

    :cond_5
    iget-boolean v0, p0, Lc/a/a/n;->h:Z

    if-eqz v0, :cond_6

    const-string v0, "Content-Encoding: gzip\r\n"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/a/a/n;->g:Z

    :cond_6
    iget-object v0, p0, Lc/a/a/n;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lc/a/a/n;->d:J

    goto :goto_2

    :cond_7
    const-wide/16 v0, 0x0

    :goto_2
    iget-object v3, p0, Lc/a/a/n;->f:Lc/a/a/m;

    sget-object v4, Lc/a/a/m;->c:Lc/a/a/m;

    if-eq v3, v4, :cond_8

    iget-boolean v3, p0, Lc/a/a/n;->g:Z

    if-eqz v3, :cond_8

    const-string v3, "Transfer-Encoding: chunked\r\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-boolean v3, p0, Lc/a/a/n;->h:Z

    if-nez v3, :cond_9

    iget-object v3, p0, Lc/a/a/n;->e:Ljava/util/Map;

    invoke-static {v2, v3, v0, v1}, Lc/a/a/n;->a(Ljava/io/PrintWriter;Ljava/util/Map;J)J

    move-result-wide v0

    :cond_9
    :goto_3
    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    iget-object v2, p0, Lc/a/a/n;->f:Lc/a/a/m;

    sget-object v3, Lc/a/a/m;->c:Lc/a/a/m;

    if-eq v2, v3, :cond_a

    iget-boolean v2, p0, Lc/a/a/n;->g:Z

    if-eqz v2, :cond_a

    new-instance v0, Lc/a/a/o;

    invoke-direct {v0, p1}, Lc/a/a/o;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lc/a/a/n;->a(Ljava/io/OutputStream;J)V

    invoke-virtual {v0}, Lc/a/a/o;->a()V

    goto :goto_4

    :cond_a
    invoke-direct {p0, p1, v0, v1}, Lc/a/a/n;->a(Ljava/io/OutputStream;J)V

    :goto_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-object p1, p0, Lc/a/a/n;->c:Ljava/io/InputStream;

    invoke-static {p1}, Lc/a/a/a;->a(Ljava/lang/Object;)V

    return-void

    :cond_b
    new-instance p1, Ljava/lang/Error;

    const-string v0, "sendResponse(): Status can\'t be null."

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-static {}, Lc/a/a/a;->f()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Could not send response to the client"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lc/a/a/n;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lc/a/a/n;->h:Z

    return-void
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lc/a/a/n;->i:Z

    return-void
.end method

.method public final close()V
    .registers 2

    iget-object v0, p0, Lc/a/a/n;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/a/n;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method
