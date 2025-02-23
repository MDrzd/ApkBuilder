.class public Lorg/codehaus/plexus/util/StringInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private in:Ljava/io/StringReader;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codehaus/plexus/util/StringInputStream;->in:Ljava/io/StringReader;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/StringInputStream;->in:Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/io/StringReader;->close()V

    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/StringInputStream;->in:Ljava/io/StringReader;

    invoke-virtual {v0, p1}, Ljava/io/StringReader;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/StringInputStream;->in:Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/io/StringReader;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/StringInputStream;->in:Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/io/StringReader;->read()I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/codehaus/plexus/util/StringInputStream;->in:Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/io/StringReader;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
