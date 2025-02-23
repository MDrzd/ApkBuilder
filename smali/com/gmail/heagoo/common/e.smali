.class final Lcom/gmail/heagoo/common/e;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:[Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/common/e;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/gmail/heagoo/common/e;->b:[Ljava/lang/String;

    iput p3, p0, Lcom/gmail/heagoo/common/e;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    invoke-virtual {p0}, Lcom/gmail/heagoo/common/e;->interrupt()V

    :try_start_0
    iget-object v0, p0, Lcom/gmail/heagoo/common/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final run()V
    .registers 7

    const/16 v0, 0x80

    new-array v1, v0, [C

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/gmail/heagoo/common/e;->a:Ljava/io/InputStream;

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Ljava/io/Reader;->read([CII)I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v2, v1, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-gez v5, :cond_0

    :catch_0
    iget-object v0, p0, Lcom/gmail/heagoo/common/e;->b:[Ljava/lang/String;

    iget v1, p0, Lcom/gmail/heagoo/common/e;->c:I

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method
