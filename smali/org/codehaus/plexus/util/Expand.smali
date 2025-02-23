.class public Lorg/codehaus/plexus/util/Expand;
.super Ljava/lang/Object;


# instance fields
.field private dest:Ljava/io/File;

.field private overwrite:Z

.field private source:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/plexus/util/Expand;->overwrite:Z

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/Expand;->source:Ljava/io/File;

    iget-object v1, p0, Lorg/codehaus/plexus/util/Expand;->dest:Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/plexus/util/Expand;->expandFile(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method protected expandFile(Ljava/io/File;Ljava/io/File;)V
    .registers 12

    const/4 v0, 0x0

    :try_start_0
    new-instance v8, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v2

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v8

    invoke-virtual/range {v1 .. v7}, Lorg/codehaus/plexus/util/Expand;->extractFile(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Date;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lorg/codehaus/plexus/util/IOUtil;->close(Ljava/io/InputStream;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v8

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v0, v8

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p2

    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while expanding "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    invoke-static {v0}, Lorg/codehaus/plexus/util/IOUtil;->close(Ljava/io/InputStream;)V

    throw p1
.end method

.method protected extractFile(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Date;Z)V
    .registers 12

    invoke-static {p2, p4}, Lorg/codehaus/plexus/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    :try_start_0
    iget-boolean p2, p0, Lorg/codehaus/plexus/util/Expand;->overwrite:Z

    if-nez p2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {p5}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-ltz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    if-eqz p6, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :cond_1
    const/high16 p2, 0x10000

    new-array p2, p2, [B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p4, 0x0

    :try_start_1
    new-instance p6, Ljava/io/FileOutputStream;

    invoke-direct {p6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {p3, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p6, p2, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    invoke-virtual {p6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {p4}, Lorg/codehaus/plexus/util/IOUtil;->close(Ljava/io/OutputStream;)V

    :goto_1
    invoke-virtual {p5}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Ljava/io/File;->setLastModified(J)Z

    return-void

    :catchall_0
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object p6, p4

    :goto_2
    invoke-static {p6}, Lorg/codehaus/plexus/util/IOUtil;->close(Ljava/io/OutputStream;)V

    throw p2
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/Exception;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Can\'t extract file "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Entry \'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' outside the target directory."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDest(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/Expand;->dest:Ljava/io/File;

    return-void
.end method

.method public setOverwrite(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/plexus/util/Expand;->overwrite:Z

    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/Expand;->source:Ljava/io/File;

    return-void
.end method
