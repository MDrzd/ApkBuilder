.class public final Lorg/codehaus/plexus/util/IOUtil;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x4000


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bufferedCopy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Ljava/io/BufferedOutputStream;

    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, p0}, Lorg/codehaus/plexus/util/IOUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V

    return-void
.end method

.method public static close(Ljava/io/InputStream;)V
    .registers 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static close(Ljava/io/OutputStream;)V
    .registers 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static close(Ljava/io/Reader;)V
    .registers 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static close(Ljava/io/Writer;)V
    .registers 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static close(Ljava/nio/channels/Channel;)V
    .registers 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/nio/channels/Channel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .registers 5

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 v1, 0x0

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq p1, v2, :cond_0

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3

    const/16 v0, 0x4000

    invoke-static {p0, p1, v0}, Lorg/codehaus/plexus/util/IOUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 5

    new-array p2, p2, [B

    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;)V
    .registers 3

    const/16 v0, 0x4000

    invoke-static {p0, p1, v0}, Lorg/codehaus/plexus/util/IOUtil;->copy(Ljava/io/InputStream;Ljava/io/Writer;I)V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;I)V
    .registers 4

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1, p2}, Lorg/codehaus/plexus/util/IOUtil;->copy(Ljava/io/Reader;Ljava/io/Writer;I)V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/codehaus/plexus/util/IOUtil;->copy(Ljava/io/Reader;Ljava/io/Writer;)V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p1, p3}, Lorg/codehaus/plexus/util/IOUtil;->copy(Ljava/io/Reader;Ljava/io/Writer;I)V

    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;)V
    .registers 3

    const/16 v0, 0x4000

    invoke-static {p0, p1, v0}, Lorg/codehaus/plexus/util/IOUtil;->copy(Ljava/io/Reader;Ljava/io/OutputStream;I)V

    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;I)V
    .registers 4

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v0, p2}, Lorg/codehaus/plexus/util/IOUtil;->copy(Ljava/io/Reader;Ljava/io/Writer;I)V

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)V
    .registers 3

    const/16 v0, 0x4000

    invoke-static {p0, p1, v0}, Lorg/codehaus/plexus/util/IOUtil;->copy(Ljava/io/Reader;Ljava/io/Writer;I)V

    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;I)V
    .registers 5

    new-array p2, p2, [C

    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/Reader;->read([C)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 3

    const/16 v0, 0x4000

    invoke-static {p0, p1, v0}, Lorg/codehaus/plexus/util/IOUtil;->copy(Ljava/lang/String;Ljava/io/OutputStream;I)V

    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/io/OutputStream;I)V
    .registers 4

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/OutputStreamWriter;

    invoke-direct {p0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, p0, p2}, Lorg/codehaus/plexus/util/IOUtil;->copy(Ljava/io/Reader;Ljava/io/Writer;I)V

    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V

    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/io/Writer;)V
    .registers 2

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public static copy([BLjava/io/OutputStream;)V
    .registers 3

    const/16 v0, 0x4000

    invoke-static {p0, p1, v0}, Lorg/codehaus/plexus/util/IOUtil;->copy([BLjava/io/OutputStream;I)V

    return-void
.end method

.method public static copy([BLjava/io/OutputStream;I)V
    .registers 3

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static copy([BLjava/io/Writer;)V
    .registers 3

    const/16 v0, 0x4000

    invoke-static {p0, p1, v0}, Lorg/codehaus/plexus/util/IOUtil;->copy([BLjava/io/Writer;I)V

    return-void
.end method

.method public static copy([BLjava/io/Writer;I)V
    .registers 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1, p2}, Lorg/codehaus/plexus/util/IOUtil;->copy(Ljava/io/InputStream;Ljava/io/Writer;I)V

    return-void
.end method

.method public static copy([BLjava/io/Writer;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1, p2}, Lorg/codehaus/plexus/util/IOUtil;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    return-void
.end method

.method public static copy([BLjava/io/Writer;Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1, p2, p3}, Lorg/codehaus/plexus/util/IOUtil;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;I)V

    return-void
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .registers 2

    const/16 v0, 0x4000

    invoke-static {p0, v0}, Lorg/codehaus/plexus/util/IOUtil;->toByteArray(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/io/InputStream;I)[B
    .registers 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0, p1}, Lorg/codehaus/plexus/util/IOUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/io/Reader;)[B
    .registers 2

    const/16 v0, 0x4000

    invoke-static {p0, v0}, Lorg/codehaus/plexus/util/IOUtil;->toByteArray(Ljava/io/Reader;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/io/Reader;I)[B
    .registers 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0, p1}, Lorg/codehaus/plexus/util/IOUtil;->copy(Ljava/io/Reader;Ljava/io/OutputStream;I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .registers 2

    const/16 v0, 0x4000

    invoke-static {p0, v0}, Lorg/codehaus/plexus/util/IOUtil;->toByteArray(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/lang/String;I)[B
    .registers 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0, p1}, Lorg/codehaus/plexus/util/IOUtil;->copy(Ljava/lang/String;Ljava/io/OutputStream;I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x4000

    invoke-static {p0, v0}, Lorg/codehaus/plexus/util/IOUtil;->toString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/io/InputStream;I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-static {p0, v0, p1}, Lorg/codehaus/plexus/util/IOUtil;->copy(Ljava/io/InputStream;Ljava/io/Writer;I)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x4000

    invoke-static {p0, p1, v0}, Lorg/codehaus/plexus/util/IOUtil;->toString(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-static {p0, v0, p1, p2}, Lorg/codehaus/plexus/util/IOUtil;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/io/Reader;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x4000

    invoke-static {p0, v0}, Lorg/codehaus/plexus/util/IOUtil;->toString(Ljava/io/Reader;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/io/Reader;I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-static {p0, v0, p1}, Lorg/codehaus/plexus/util/IOUtil;->copy(Ljava/io/Reader;Ljava/io/Writer;I)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([B)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x4000

    invoke-static {p0, v0}, Lorg/codehaus/plexus/util/IOUtil;->toString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([BI)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-static {p0, v0, p1}, Lorg/codehaus/plexus/util/IOUtil;->copy([BLjava/io/Writer;I)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x4000

    invoke-static {p0, p1, v0}, Lorg/codehaus/plexus/util/IOUtil;->toString([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([BLjava/lang/String;I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-static {p0, v0, p1, p2}, Lorg/codehaus/plexus/util/IOUtil;->copy([BLjava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
