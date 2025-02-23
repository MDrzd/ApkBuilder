.class public Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;
.super Ljava/lang/Exception;


# instance fields
.field protected column:I

.field protected detail:Ljava/lang/Throwable;

.field protected row:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;->row:I

    iput p1, p0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;->column:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;Ljava/lang/Throwable;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    const-string p1, ""

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "(position:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_2

    const-string p1, ""

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "caused by: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;->row:I

    iput p1, p0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;->column:I

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getLineNumber()I

    move-result p1

    iput p1, p0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;->row:I

    invoke-interface {p2}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParser;->getColumnNumber()I

    move-result p1

    iput p1, p0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;->column:I

    :cond_3
    iput-object p3, p0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;->detail:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .registers 2

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;->column:I

    return v0
.end method

.method public getDetail()Ljava/lang/Throwable;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .registers 2

    iget v0, p0, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;->row:I

    return v0
.end method

.method public printStackTrace()V
    .registers 5

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; nested exception is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/xml/pull/XmlPullParserException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
