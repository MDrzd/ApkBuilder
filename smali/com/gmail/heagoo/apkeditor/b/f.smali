.class public Lcom/gmail/heagoo/apkeditor/b/f;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field private final g:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->g:Ljava/util/List;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->g:Ljava/util/List;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/b/f;->b:Ljava/lang/String;

    const/16 p1, 0x40

    invoke-virtual {p3, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p3, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/b/f;->c:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/b/f;->d:Ljava/lang/String;

    return-void

    :cond_0
    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/b/f;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->g:Ljava/util/List;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/b/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/b/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/gmail/heagoo/apkeditor/b/f;->d:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/util/List;Lcom/gmail/heagoo/apkeditor/b/f;)Lcom/gmail/heagoo/apkeditor/b/f;
    .registers 5

    iget-object v0, p1, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/gmail/heagoo/apkeditor/b/f;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/b/f;

    iget-object v1, p1, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/gmail/heagoo/apkeditor/b/f;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/gmail/heagoo/apkeditor/b/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method

.method private a(I)Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{groupId=%s, artifactId=%s, version=%s, type=%s, path=%s}"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/b/f;->b:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v6, p0, Lcom/gmail/heagoo/apkeditor/b/f;->c:Ljava/lang/String;

    aput-object v6, v2, v3

    const/4 v3, 0x3

    iget-object v6, p0, Lcom/gmail/heagoo/apkeditor/b/f;->d:Ljava/lang/String;

    aput-object v6, v2, v3

    const/4 v3, 0x4

    iget-object v6, p0, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    aput-object v6, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-ge v4, p1, :cond_0

    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/b/f;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmail/heagoo/apkeditor/b/f;

    add-int/lit8 v3, p1, 0x1

    invoke-direct {v2, v3}, Lcom/gmail/heagoo/apkeditor/b/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Ljava/io/InputStream;Ljava/util/List;)Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->normalize()V

    const-string v0, "version"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "latest"

    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    if-lez p1, :cond_2

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "package=\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/lit8 v2, v2, 0x9

    const-string v4, "\""

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v1
.end method

.method private a(Ljava/io/InputStream;)Ljava/util/List;
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    new-instance p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Reader;

    invoke-direct {p1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Reader;-><init>()V

    invoke-virtual {p1, v1}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Reader;->read(Ljava/io/Reader;)Lorg/apache/maven/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getPackaging()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/b/f;->d:Ljava/lang/String;

    if-nez v3, :cond_0

    :goto_0
    iput-object v2, p0, Lcom/gmail/heagoo/apkeditor/b/f;->d:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/b/f;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getDependencies()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/maven/model/Dependency;

    invoke-virtual {v2}, Lorg/apache/maven/model/Dependency;->getScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/maven/model/Dependency;->isOptional()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_3

    const-string v4, "compile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_3
    new-instance v3, Lcom/gmail/heagoo/apkeditor/b/f;

    invoke-virtual {v2}, Lorg/apache/maven/model/Dependency;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/maven/model/Dependency;->getArtifactId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/maven/model/Dependency;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/maven/model/Dependency;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/gmail/heagoo/apkeditor/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    throw p1
.end method

.method private static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method private b(Ljava/util/List;)V
    .registers 6

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/b/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".pom"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/gmail/heagoo/apkeditor/b/f;->a(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmail/heagoo/apkeditor/b/f;

    invoke-static {p1, v2}, Lcom/gmail/heagoo/apkeditor/b/f;->a(Ljava/util/List;Lcom/gmail/heagoo/apkeditor/b/f;)Lcom/gmail/heagoo/apkeditor/b/f;

    move-result-object v2

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/b/f;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/b/f;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/b/f;->a(Ljava/io/Closeable;)V

    return-void

    :goto_2
    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/b/f;->a(Ljava/io/Closeable;)V

    throw p1

    :cond_1
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    const/4 v3, 0x1

    if-ge v1, v2, :cond_6

    array-length v2, p1

    if-ge v1, v2, :cond_6

    aget-object v2, p0, v1

    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :try_start_0
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v2

    const/4 v2, 0x0

    goto :goto_1

    :catch_0
    const/4 v2, 0x1

    const/4 v4, 0x0

    :goto_1
    :try_start_1
    aget-object v5, p1, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v6, v5

    const/4 v5, 0x0

    goto :goto_2

    :catch_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_2
    if-nez v2, :cond_1

    if-nez v5, :cond_1

    if-le v4, v6, :cond_0

    return v3

    :cond_0
    return v0

    :cond_1
    if-eqz v2, :cond_2

    if-nez v5, :cond_2

    return v0

    :cond_2
    if-nez v2, :cond_3

    if-eqz v5, :cond_3

    return v3

    :cond_3
    aget-object p0, p0, v1

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_4

    return v3

    :cond_4
    return v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    array-length p0, p0

    array-length p1, p1

    if-le p0, p1, :cond_7

    return v3

    :cond_7
    return v0
.end method

.method private c(Ljava/util/List;)Ljava/lang/String;
    .registers 6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/gmail/heagoo/apkeditor/b/f;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private d(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    :try_start_0
    const-string v0, ".maven-cache"

    invoke-static {p1, v0}, Lcom/gmail/heagoo/common/ae;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    invoke-static {v0}, La/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    const-string v2, ".aar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/b/f;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v2, "res"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length p1, p1

    if-lez p1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method public a()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->g:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/gmail/heagoo/a/a/a/a/a/b;Ljava/util/List;)V
    .registers 11

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/gmail/heagoo/a/a/a/a/a/a;->a()Lcom/gmail/heagoo/a/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gmail/heagoo/a/a/a/a/a/a;->a(Lcom/gmail/heagoo/apkeditor/b/f;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/b/f;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "file://"

    iput-object v1, p0, Lcom/gmail/heagoo/apkeditor/b/f;->e:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/b/f;->e:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/gmail/heagoo/a/a/a/a/a/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "https://maven.google.com/"

    :goto_0
    iput-object v1, p0, Lcom/gmail/heagoo/apkeditor/b/f;->e:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v1, "https://jcenter.bintray.com/"

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/b/f;->b:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    const/16 v2, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/gmail/heagoo/apkeditor/b/f;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/b/f;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/maven-metadata.xml"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/gmail/heagoo/apkeditor/b/f;->a(Ljava/io/InputStream;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/gmail/heagoo/apkeditor/b/f;->c:Ljava/lang/String;

    if-nez v5, :cond_5

    iput-object v4, p0, Lcom/gmail/heagoo/apkeditor/b/f;->c:Ljava/lang/String;

    :cond_5
    iget-object v5, p0, Lcom/gmail/heagoo/apkeditor/b/f;->c:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/gmail/heagoo/apkeditor/b/f;->c:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/gmail/heagoo/apkeditor/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "Cannot find target version: %s"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/gmail/heagoo/apkeditor/b/f;->c:Ljava/lang/String;

    aput-object v5, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DEBUG"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/gmail/heagoo/apkeditor/b/f;->c:Ljava/lang/String;

    goto :goto_4

    :cond_8
    if-ne v2, v0, :cond_9

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_3
    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->c:Ljava/lang/String;

    goto :goto_4

    :cond_9
    invoke-direct {p0, v5}, Lcom/gmail/heagoo/apkeditor/b/f;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_a
    :goto_4
    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/b/f;->a(Ljava/io/Closeable;)V

    goto :goto_7

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v1, v2

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2}, Lcom/gmail/heagoo/apkeditor/b/f;->a(Ljava/io/Closeable;)V

    goto :goto_7

    :goto_6
    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/b/f;->a(Ljava/io/Closeable;)V

    throw p1

    :cond_b
    :goto_7
    invoke-direct {p0, p2}, Lcom/gmail/heagoo/apkeditor/b/f;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/apkeditor/b/f;

    invoke-virtual {v1, p1, p2}, Lcom/gmail/heagoo/apkeditor/b/f;->a(Lcom/gmail/heagoo/a/a/a/a/a/b;Ljava/util/List;)V

    goto :goto_8

    :cond_c
    invoke-virtual {p1, p0}, Lcom/gmail/heagoo/a/a/a/a/a/b;->a(Lcom/gmail/heagoo/apkeditor/b/f;)V

    invoke-static {}, Lcom/gmail/heagoo/a/a/a/a/a/a;->a()Lcom/gmail/heagoo/a/a/a/a/a/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/gmail/heagoo/a/a/a/a/a/a;->b(Lcom/gmail/heagoo/apkeditor/b/f;)V

    :cond_d
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/util/List;
    .registers 8

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gmail/heagoo/a/a/a/a/a/a;->a()Lcom/gmail/heagoo/a/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gmail/heagoo/a/a/a/a/a/a;->a(Lcom/gmail/heagoo/apkeditor/b/f;)Z

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p1, "Cannot get jar files for %s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/b/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/b/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    const-string v3, ".aar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/b/f;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v2, Ljava/io/File;

    const-string v3, "classes.jar"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v3, "libs"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".jar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/b/f;->f:Ljava/lang/String;

    const-string v2, ".aar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/b/f;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/AndroidManifest.xml"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/b/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/gmail/heagoo/apkeditor/b/f;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
