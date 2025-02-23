.class public final Lc/a/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lc/a/a/l;


# instance fields
.field private final a:Lc/a/a/v;

.field private final b:Ljava/io/OutputStream;

.field private final c:Ljava/io/BufferedInputStream;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lc/a/a/m;

.field private h:Ljava/util/Map;

.field private i:Ljava/util/Map;

.field private j:Lc/a/a/e;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private synthetic n:Lc/a/a/a;


# direct methods
.method public constructor <init>(Lc/a/a/a;Lc/a/a/v;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V
    .registers 6

    iput-object p1, p0, Lc/a/a/k;->n:Lc/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc/a/a/k;->a:Lc/a/a/v;

    new-instance p1, Ljava/io/BufferedInputStream;

    const/16 p2, 0x2000

    invoke-direct {p1, p3, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object p1, p0, Lc/a/a/k;->c:Ljava/io/BufferedInputStream;

    iput-object p4, p0, Lc/a/a/k;->b:Ljava/io/OutputStream;

    invoke-virtual {p5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "127.0.0.1"

    :goto_1
    iput-object p1, p0, Lc/a/a/k;->l:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lc/a/a/k;->i:Ljava/util/Map;

    return-void
.end method

.method private static a([BI)I
    .registers 4

    :goto_0
    aget-byte v0, p0, p1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method private a(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string p4, ""

    if-lez p3, :cond_0

    const/4 p4, 0x0

    :try_start_0
    iget-object v0, p0, Lc/a/a/k;->a:Lc/a/a/v;

    invoke-interface {v0}, Lc/a/a/v;->b()Lc/a/a/u;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-interface {v0}, Lc/a/a/u;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p4

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    add-int/2addr p2, p3

    invoke-virtual {v2, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-interface {v0}, Lc/a/a/u;->b()Ljava/lang/String;

    move-result-object p4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lc/a/a/a;->a(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object p4, v1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object p4, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    new-instance p2, Ljava/lang/Error;

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    invoke-static {p4}, Lc/a/a/a;->a(Ljava/lang/Object;)V

    throw p1

    :cond_0
    :goto_2
    return-object p4
.end method

.method private a(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 10

    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "method"

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p3}, Lc/a/a/k;->a(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lc/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lc/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/k;->m:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, "HTTP/1.1"

    iput-object v0, p0, Lc/a/a/k;->m:Ljava/lang/String;

    invoke-static {}, Lc/a/a/a;->f()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "no protocol version specified, strange. Assuming HTTP/1.1."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string p1, "uri"

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    new-instance p1, Lc/a/a/r;

    sget-object p2, Lc/a/a/q;->b:Lc/a/a/q;

    const-string p3, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-direct {p1, p2, p3}, Lc/a/a/r;-><init>(Lc/a/a/q;Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lc/a/a/r;

    sget-object p2, Lc/a/a/q;->b:Lc/a/a/q;

    const-string p3, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-direct {p1, p2, p3}, Lc/a/a/r;-><init>(Lc/a/a/q;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lc/a/a/r;

    sget-object p3, Lc/a/a/q;->d:Lc/a/a/q;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "SERVER INTERNAL ERROR: IOException: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4, p1}, Lc/a/a/r;-><init>(Lc/a/a/q;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/util/Map;)V
    .registers 24

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [I

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    array-length v7, v3

    const/4 v8, 0x1

    if-ge v6, v7, :cond_0

    move-object v10, v5

    goto :goto_4

    :cond_0
    array-length v6, v3

    add-int/lit16 v6, v6, 0x1000

    new-array v6, v6, [B

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    array-length v9, v6

    if-ge v7, v9, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    goto :goto_0

    :cond_1
    array-length v7, v6

    :goto_0
    invoke-virtual {v0, v6, v4, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    array-length v9, v3

    sub-int/2addr v7, v9

    move-object v9, v5

    const/4 v5, 0x0

    :goto_1
    move-object v10, v9

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_4

    move-object v11, v10

    const/4 v10, 0x0

    :goto_3
    array-length v12, v3

    if-ge v10, v12, :cond_3

    add-int v12, v9, v10

    aget-byte v12, v6, v12

    aget-byte v13, v3, v10

    if-ne v12, v13, :cond_3

    array-length v12, v3

    sub-int/2addr v12, v8

    if-ne v10, v12, :cond_2

    array-length v12, v11

    add-int/2addr v12, v8

    new-array v12, v12, [I

    array-length v13, v11

    invoke-static {v11, v4, v12, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v11, v11

    add-int v13, v5, v9

    aput v13, v12, v11

    move-object v11, v12

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move-object v10, v11

    goto :goto_2

    :cond_4
    add-int/2addr v5, v7

    array-length v7, v6

    array-length v9, v3

    sub-int/2addr v7, v9

    array-length v9, v3

    invoke-static {v6, v7, v6, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v6

    array-length v9, v3

    sub-int/2addr v7, v9

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-ge v9, v7, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    :cond_5
    array-length v9, v3

    invoke-virtual {v0, v6, v9, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    if-gtz v7, :cond_15

    :goto_4
    array-length v3, v10

    const/4 v5, 0x2

    if-lt v3, v5, :cond_14

    const/16 v3, 0x400

    new-array v6, v3, [B

    const/4 v7, 0x0

    :goto_5
    array-length v9, v10

    sub-int/2addr v9, v8

    if-ge v7, v9, :cond_13

    aget v9, v10, v7

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-ge v9, v3, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    goto :goto_6

    :cond_6
    const/16 v9, 0x400

    :goto_6
    invoke-virtual {v0, v6, v4, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-instance v11, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v6, v4, v9}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-static/range {p2 .. p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v11, v12, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, p1

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    move-object v3, v14

    move-object v4, v3

    move-object v15, v4

    const/4 v14, 0x2

    :goto_7
    if-eqz v12, :cond_c

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_c

    invoke-static {}, Lc/a/a/a;->g()Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-virtual {v8, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lc/a/a/a;->h()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    :goto_8
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_9

    move-object/from16 v17, v3

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v8, "name"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    :cond_7
    move-object/from16 v3, v17

    goto :goto_8

    :cond_8
    const-string v8, "filename"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x2

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    goto :goto_8

    :cond_9
    move-object/from16 v17, v3

    :cond_a
    invoke-static {}, Lc/a/a/a;->i()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v15, v5

    goto :goto_9

    :cond_b
    const/4 v8, 0x2

    :goto_9
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x2

    const/4 v8, 0x1

    goto :goto_7

    :cond_c
    const/4 v8, 0x2

    const/4 v5, 0x0

    :goto_a
    add-int/lit8 v11, v14, -0x1

    if-lez v14, :cond_d

    invoke-static {v6, v5}, Lc/a/a/k;->a([BI)I

    move-result v5

    move v14, v11

    goto :goto_a

    :cond_d
    add-int/lit8 v9, v9, -0x4

    if-ge v5, v9, :cond_11

    aget v9, v10, v7

    add-int/2addr v9, v5

    add-int/lit8 v7, v7, 0x1

    aget v5, v10, v7

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-nez v15, :cond_e

    sub-int/2addr v5, v9

    new-array v3, v5, [B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v5, Ljava/lang/String;

    move-object/from16 v11, p2

    invoke-direct {v5, v3, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lc/a/a/r; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v12, p0

    goto :goto_d

    :cond_e
    move-object/from16 v11, p2

    sub-int/2addr v5, v9

    move-object/from16 v12, p0

    :try_start_1
    invoke-direct {v12, v0, v9, v5, v3}, Lc/a/a/k;->a(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_f
    const/4 v9, 0x2

    :goto_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_10
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    const/16 v3, 0x400

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v8, 0x1

    goto/16 :goto_5

    :cond_11
    move-object/from16 v12, p0

    new-instance v0, Lc/a/a/r;

    sget-object v1, Lc/a/a/q;->d:Lc/a/a/q;

    const-string v2, "Multipart header size exceeds MAX_HEADER_SIZE."

    invoke-direct {v0, v1, v2}, Lc/a/a/r;-><init>(Lc/a/a/q;Ljava/lang/String;)V

    throw v0

    :cond_12
    move-object/from16 v12, p0

    new-instance v0, Lc/a/a/r;

    sget-object v1, Lc/a/a/q;->b:Lc/a/a/q;

    const-string v2, "BAD REQUEST: Content type is multipart/form-data but chunk does not start with boundary."

    invoke-direct {v0, v1, v2}, Lc/a/a/r;-><init>(Lc/a/a/q;Ljava/lang/String;)V

    throw v0

    :cond_13
    move-object/from16 v12, p0

    return-void

    :cond_14
    move-object/from16 v12, p0

    new-instance v0, Lc/a/a/r;

    sget-object v1, Lc/a/a/q;->b:Lc/a/a/q;

    const-string v2, "BAD REQUEST: Content type is multipart/form-data but contains less than two boundary strings."

    invoke-direct {v0, v1, v2}, Lc/a/a/r;-><init>(Lc/a/a/q;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lc/a/a/r; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_f

    :cond_15
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v11, p2

    move-object v9, v10

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v12, p0

    :goto_e
    new-instance v1, Lc/a/a/r;

    sget-object v2, Lc/a/a/q;->d:Lc/a/a/q;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lc/a/a/r;-><init>(Lc/a/a/q;Ljava/lang/String;)V

    throw v1

    :catch_3
    move-exception v0

    move-object/from16 v12, p0

    :goto_f
    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    if-nez p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lc/a/a/k;->k:Ljava/lang/String;

    return-void

    :cond_0
    iput-object p1, p0, Lc/a/a/k;->k:Ljava/lang/String;

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "&"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lc/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static b([BI)I
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    if-ge v2, p1, :cond_2

    aget-byte v3, p0, v1

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-ne v3, v4, :cond_0

    aget-byte v3, p0, v2

    if-ne v3, v5, :cond_0

    add-int/lit8 v3, v1, 0x3

    if-ge v3, p1, :cond_0

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, p0, v6

    if-ne v6, v4, :cond_0

    aget-byte v3, p0, v3

    if-ne v3, v5, :cond_0

    add-int/lit8 v1, v1, 0x4

    return v1

    :cond_0
    aget-byte v3, p0, v1

    if-ne v3, v5, :cond_1

    aget-byte v3, p0, v2

    if-ne v3, v5, :cond_1

    add-int/lit8 v1, v1, 0x2

    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    return v0
.end method

.method private f()Ljava/io/RandomAccessFile;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lc/a/a/k;->a:Lc/a/a/v;

    invoke-interface {v0}, Lc/a/a/v;->b()Lc/a/a/u;

    move-result-object v0

    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-interface {v0}, Lc/a/a/u;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a()V
    .registers 8

    const/16 v0, 0x2000

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [B

    const/4 v3, 0x0

    iput v3, p0, Lc/a/a/k;->d:I

    iput v3, p0, Lc/a/a/k;->e:I

    iget-object v4, p0, Lc/a/a/k;->c:Ljava/io/BufferedInputStream;

    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lc/a/a/r; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lc/a/a/k;->c:Ljava/io/BufferedInputStream;

    invoke-virtual {v4, v2, v3, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lc/a/a/r; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    :goto_0
    if-lez v4, :cond_0

    :try_start_2
    iget v5, p0, Lc/a/a/k;->e:I

    add-int/2addr v5, v4

    iput v5, p0, Lc/a/a/k;->e:I

    iget v4, p0, Lc/a/a/k;->e:I

    invoke-static {v2, v4}, Lc/a/a/k;->b([BI)I

    move-result v4

    iput v4, p0, Lc/a/a/k;->d:I

    iget v4, p0, Lc/a/a/k;->d:I

    if-gtz v4, :cond_0

    iget-object v4, p0, Lc/a/a/k;->c:Ljava/io/BufferedInputStream;

    iget v5, p0, Lc/a/a/k;->e:I

    iget v6, p0, Lc/a/a/k;->e:I

    rsub-int v6, v6, 0x2000

    invoke-virtual {v4, v2, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    goto :goto_0

    :cond_0
    iget v0, p0, Lc/a/a/k;->d:I

    iget v4, p0, Lc/a/a/k;->e:I

    if-ge v0, v4, :cond_1

    iget-object v0, p0, Lc/a/a/k;->c:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    iget-object v0, p0, Lc/a/a/k;->c:Ljava/io/BufferedInputStream;

    iget v4, p0, Lc/a/a/k;->d:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Ljava/io/BufferedInputStream;->skip(J)J

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/a/a/k;->h:Ljava/util/Map;

    iget-object v0, p0, Lc/a/a/k;->i:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/a/a/k;->i:Ljava/util/Map;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lc/a/a/k;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :goto_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget v6, p0, Lc/a/a/k;->e:I

    invoke-direct {v5, v2, v3, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lc/a/a/k;->h:Ljava/util/Map;

    iget-object v5, p0, Lc/a/a/k;->i:Ljava/util/Map;

    invoke-direct {p0, v0, v2, v4, v5}, Lc/a/a/k;->a(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    iget-object v0, p0, Lc/a/a/k;->l:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/a/a/k;->i:Ljava/util/Map;

    const-string v4, "remote-addr"

    iget-object v5, p0, Lc/a/a/k;->l:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/a/a/k;->i:Ljava/util/Map;

    const-string v4, "http-client-ip"

    iget-object v5, p0, Lc/a/a/k;->l:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "method"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lc/a/a/m;->a(Ljava/lang/String;)Lc/a/a/m;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/k;->g:Lc/a/a/m;

    iget-object v0, p0, Lc/a/a/k;->g:Lc/a/a/m;

    if-eqz v0, :cond_9

    const-string v0, "uri"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc/a/a/k;->f:Ljava/lang/String;

    new-instance v0, Lc/a/a/e;

    iget-object v2, p0, Lc/a/a/k;->n:Lc/a/a/a;

    iget-object v4, p0, Lc/a/a/k;->i:Ljava/util/Map;

    invoke-direct {v0, v2, v4}, Lc/a/a/e;-><init>(Lc/a/a/a;Ljava/util/Map;)V

    iput-object v0, p0, Lc/a/a/k;->j:Lc/a/a/e;

    iget-object v0, p0, Lc/a/a/k;->i:Ljava/util/Map;

    const-string v2, "connection"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lc/a/a/k;->m:Ljava/lang/String;

    const-string v4, "HTTP/1.1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    const-string v2, "(?i).*close.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lc/a/a/k;->n:Lc/a/a/a;

    invoke-virtual {v2, p0}, Lc/a/a/a;->a(Lc/a/a/l;)Lc/a/a/n;

    move-result-object v2
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lc/a/a/r; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_8

    :try_start_3
    iget-object v1, p0, Lc/a/a/k;->i:Ljava/util/Map;

    const-string v5, "accept-encoding"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lc/a/a/k;->j:Lc/a/a/e;

    invoke-virtual {v5, v2}, Lc/a/a/e;->a(Lc/a/a/n;)V

    iget-object v5, p0, Lc/a/a/k;->g:Lc/a/a/m;

    invoke-virtual {v2, v5}, Lc/a/a/n;->a(Lc/a/a/m;)V

    invoke-static {v2}, Lc/a/a/a;->a(Lc/a/a/n;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    const-string v5, "gzip"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v3, 0x1

    :cond_6
    invoke-virtual {v2, v3}, Lc/a/a/n;->a(Z)V

    invoke-virtual {v2, v0}, Lc/a/a/n;->b(Z)V

    iget-object v1, p0, Lc/a/a/k;->b:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Lc/a/a/n;->a(Ljava/io/OutputStream;)V

    if-eqz v0, :cond_7

    const-string v0, "close"

    const-string v1, "connection"

    invoke-virtual {v2, v1}, Lc/a/a/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lc/a/a/r; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_7

    invoke-static {v2}, Lc/a/a/a;->a(Ljava/lang/Object;)V

    :goto_3
    iget-object v0, p0, Lc/a/a/k;->a:Lc/a/a/v;

    invoke-interface {v0}, Lc/a/a/v;->a()V

    return-void

    :cond_7
    :try_start_4
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "NanoHttpd Shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lc/a/a/r;

    sget-object v1, Lc/a/a/q;->d:Lc/a/a/q;

    const-string v3, "SERVER INTERNAL ERROR: Serve() returned a null response."

    invoke-direct {v0, v1, v3}, Lc/a/a/r;-><init>(Lc/a/a/q;Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lc/a/a/r; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v2

    goto/16 :goto_7

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_8

    :cond_9
    :try_start_5
    new-instance v0, Lc/a/a/r;

    sget-object v2, Lc/a/a/q;->b:Lc/a/a/q;

    const-string v3, "BAD REQUEST: Syntax error."

    invoke-direct {v0, v2, v3}, Lc/a/a/r;-><init>(Lc/a/a/q;Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lc/a/a/k;->c:Ljava/io/BufferedInputStream;

    invoke-static {v0}, Lc/a/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lc/a/a/k;->b:Ljava/io/OutputStream;

    invoke-static {v0}, Lc/a/a/a;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/net/SocketException;

    const-string v2, "NanoHttpd Shutdown"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    iget-object v0, p0, Lc/a/a/k;->c:Ljava/io/BufferedInputStream;

    invoke-static {v0}, Lc/a/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lc/a/a/k;->b:Ljava/io/OutputStream;

    invoke-static {v0}, Lc/a/a/a;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/net/SocketException;

    const-string v2, "NanoHttpd Shutdown"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lc/a/a/r; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    :goto_4
    :try_start_6
    invoke-virtual {v0}, Lc/a/a/r;->a()Lc/a/a/q;

    move-result-object v2

    const-string v3, "text/plain"

    invoke-virtual {v0}, Lc/a/a/r;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lc/a/a/a;->a(Lc/a/a/p;Ljava/lang/String;Ljava/lang/String;)Lc/a/a/n;

    move-result-object v0

    iget-object v2, p0, Lc/a/a/k;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Lc/a/a/n;->a(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lc/a/a/k;->b:Ljava/io/OutputStream;

    :goto_5
    invoke-static {v0}, Lc/a/a/a;->a(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {v1}, Lc/a/a/a;->a(Ljava/lang/Object;)V

    goto :goto_3

    :catch_6
    move-exception v0

    :goto_6
    :try_start_7
    sget-object v2, Lc/a/a/q;->d:Lc/a/a/q;

    const-string v3, "text/plain"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SERVER INTERNAL ERROR: IOException: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lc/a/a/a;->a(Lc/a/a/p;Ljava/lang/String;Ljava/lang/String;)Lc/a/a/n;

    move-result-object v0

    iget-object v2, p0, Lc/a/a/k;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Lc/a/a/n;->a(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lc/a/a/k;->b:Ljava/io/OutputStream;

    goto :goto_5

    :catch_7
    move-exception v0

    :goto_7
    throw v0

    :catch_8
    move-exception v0

    :goto_8
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_9
    invoke-static {v1}, Lc/a/a/a;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lc/a/a/k;->a:Lc/a/a/v;

    invoke-interface {v1}, Lc/a/a/v;->a()V

    throw v0
.end method

.method public final a(Ljava/util/Map;)V
    .registers 21

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, v7, Lc/a/a/k;->i:Ljava/util/Map;

    const-string v3, "content-length"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v7, Lc/a/a/k;->i:Ljava/util/Map;

    const-string v5, "content-length"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_0

    :cond_0
    iget v2, v7, Lc/a/a/k;->d:I

    iget v5, v7, Lc/a/a/k;->e:I

    if-ge v2, v5, :cond_1

    iget v2, v7, Lc/a/a/k;->e:I

    iget v5, v7, Lc/a/a/k;->d:I

    sub-int/2addr v2, v5

    int-to-long v5, v2

    goto :goto_0

    :cond_1
    move-wide v5, v3

    :goto_0
    const-wide/16 v8, 0x400

    cmp-long v2, v5, v8

    if-gez v2, :cond_2

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v9, v8

    move-object v8, v1

    goto :goto_1

    :cond_2
    invoke-direct/range {p0 .. p0}, Lc/a/a/k;->f()Ljava/io/RandomAccessFile;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v8, v2

    move-object v9, v8

    move-object v2, v1

    :goto_1
    const/16 v10, 0x200

    :try_start_1
    new-array v10, v10, [B

    :cond_3
    :goto_2
    iget v11, v7, Lc/a/a/k;->e:I

    const/4 v12, 0x0

    if-ltz v11, :cond_4

    cmp-long v11, v5, v3

    if-lez v11, :cond_4

    iget-object v11, v7, Lc/a/a/k;->c:Ljava/io/BufferedInputStream;

    const-wide/16 v13, 0x200

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    long-to-int v13, v13

    invoke-virtual {v11, v10, v12, v13}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v11

    iput v11, v7, Lc/a/a/k;->e:I

    iget v11, v7, Lc/a/a/k;->e:I

    int-to-long v13, v11

    sub-long/2addr v5, v13

    iget v11, v7, Lc/a/a/k;->e:I

    if-lez v11, :cond_3

    iget v11, v7, Lc/a/a/k;->e:I

    invoke-interface {v9, v10, v12, v11}, Ljava/io/DataOutput;->write([BII)V

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    invoke-static {v3, v12, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    :goto_3
    move-object v4, v2

    goto :goto_4

    :cond_5
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v13

    sget-object v14, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v15, 0x0

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v17

    invoke-virtual/range {v13 .. v18}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    invoke-virtual {v8, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_3

    :goto_4
    sget-object v2, Lc/a/a/m;->b:Lc/a/a/m;

    iget-object v3, v7, Lc/a/a/k;->g:Lc/a/a/m;

    invoke-virtual {v2, v3}, Lc/a/a/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, ""

    iget-object v3, v7, Lc/a/a/k;->i:Ljava/util/Map;

    const-string v5, "content-type"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_6

    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, ",; "

    invoke-direct {v5, v3, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_6
    move-object v5, v1

    :cond_7
    :goto_5
    const-string v6, "multipart/form-data"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lc/a/a/a;->j()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lc/a/a/k;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lc/a/a/a;->k()Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v5, "US-ASCII"

    invoke-static {v3, v1, v5}, Lc/a/a/k;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v7, Lc/a/a/k;->h:Ljava/util/Map;

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lc/a/a/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_7

    :cond_8
    new-instance v0, Lc/a/a/r;

    sget-object v1, Lc/a/a/q;->b:Lc/a/a/q;

    const-string v2, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    invoke-direct {v0, v1, v2}, Lc/a/a/r;-><init>(Lc/a/a/q;Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v0, v7, Lc/a/a/k;->h:Ljava/util/Map;

    invoke-direct {v7, v1, v0}, Lc/a/a/k;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_7

    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "postData"

    :goto_6
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_b
    sget-object v2, Lc/a/a/m;->a:Lc/a/a/m;

    iget-object v3, v7, Lc/a/a/k;->g:Lc/a/a/m;

    invoke-virtual {v2, v3}, Lc/a/a/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "content"

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-direct {v7, v4, v12, v3, v1}, Lc/a/a/k;->a(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :cond_c
    :goto_7
    invoke-static {v8}, Lc/a/a/a;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v8, v1

    :goto_8
    invoke-static {v8}, Lc/a/a/a;->a(Ljava/lang/Object;)V

    throw v0
.end method

.method public final b()Lc/a/a/m;
    .registers 2

    iget-object v0, p0, Lc/a/a/k;->g:Lc/a/a/m;

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lc/a/a/k;->h:Ljava/util/Map;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lc/a/a/k;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lc/a/a/k;->f:Ljava/lang/String;

    return-object v0
.end method
