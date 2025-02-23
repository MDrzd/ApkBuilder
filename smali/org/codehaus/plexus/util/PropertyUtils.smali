.class public Lorg/codehaus/plexus/util/PropertyUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadProperties(Ljava/io/File;)Ljava/util/Properties;
    .registers 2

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/codehaus/plexus/util/PropertyUtils;->loadProperties(Ljava/io/InputStream;)Ljava/util/Properties;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "file"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadProperties(Ljava/io/InputStream;)Ljava/util/Properties;
    .registers 2

    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lorg/codehaus/plexus/util/IOUtil;->close(Ljava/io/InputStream;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lorg/codehaus/plexus/util/IOUtil;->close(Ljava/io/InputStream;)V

    throw v0
.end method

.method public static loadProperties(Ljava/net/URL;)Ljava/util/Properties;
    .registers 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lorg/codehaus/plexus/util/PropertyUtils;->loadProperties(Ljava/io/InputStream;)Ljava/util/Properties;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "url"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
