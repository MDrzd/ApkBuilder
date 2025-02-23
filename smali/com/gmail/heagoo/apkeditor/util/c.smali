.class public final Lcom/gmail/heagoo/apkeditor/util/c;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/Map;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/gmail/heagoo/apkeditor/util/e;

.field private e:I

.field private f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/util/c;->e:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/c;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/c;->a:Ljava/util/Map;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/c;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/util/c;)Lcom/gmail/heagoo/apkeditor/util/e;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/util/c;->d:Lcom/gmail/heagoo/apkeditor/util/e;

    return-object p0
.end method

.method protected static a(Ljava/io/BufferedWriter;)V
    .registers 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x61

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7a

    if-le v2, v3, :cond_3

    :cond_0
    const/16 v3, 0x41

    if-lt v2, v3, :cond_1

    const/16 v3, 0x5a

    if-le v2, v3, :cond_3

    :cond_1
    const/16 v3, 0x5f

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/gmail/heagoo/common/ad;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/c;->d:Lcom/gmail/heagoo/apkeditor/util/e;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/gmail/heagoo/common/w;

    new-instance v1, Lcom/gmail/heagoo/apkeditor/util/d;

    invoke-direct {v1, p0, p1}, Lcom/gmail/heagoo/apkeditor/util/d;-><init>(Lcom/gmail/heagoo/apkeditor/util/c;Landroid/app/Activity;)V

    const/4 v2, -0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/gmail/heagoo/common/w;-><init>(Landroid/app/Activity;Lcom/gmail/heagoo/common/y;I)V

    invoke-virtual {v0}, Lcom/gmail/heagoo/common/w;->show()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/c;->c:Ljava/lang/String;

    return-void
.end method

.method public final a()Z
    .registers 6

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/c;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/gmail/heagoo/apkeditor/util/l;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/util/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/util/c;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/gmail/heagoo/apkeditor/util/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/c;->d:Lcom/gmail/heagoo/apkeditor/util/e;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/c;->d:Lcom/gmail/heagoo/apkeditor/util/e;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/util/e;->a()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/gmail/heagoo/apkeditor/util/c;->e:I

    return v2

    :cond_1
    new-instance v0, Lcom/gmail/heagoo/apkeditor/util/q;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/util/c;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/util/c;->c:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/gmail/heagoo/apkeditor/util/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/c;->d:Lcom/gmail/heagoo/apkeditor/util/e;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/c;->d:Lcom/gmail/heagoo/apkeditor/util/e;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/util/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/gmail/heagoo/apkeditor/util/c;->e:I

    return v2

    :cond_2
    new-instance v0, Lcom/gmail/heagoo/apkeditor/util/g;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/util/c;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/util/c;->c:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/gmail/heagoo/apkeditor/util/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/c;->d:Lcom/gmail/heagoo/apkeditor/util/e;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/c;->d:Lcom/gmail/heagoo/apkeditor/util/e;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/util/e;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/gmail/heagoo/apkeditor/util/c;->e:I

    return v2

    :cond_3
    new-instance v0, Lcom/gmail/heagoo/apkeditor/util/n;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/util/c;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/util/c;->c:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/gmail/heagoo/apkeditor/util/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/c;->d:Lcom/gmail/heagoo/apkeditor/util/e;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/c;->d:Lcom/gmail/heagoo/apkeditor/util/e;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/util/e;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/gmail/heagoo/apkeditor/util/k;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/util/c;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/util/c;->c:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/gmail/heagoo/apkeditor/util/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/c;->d:Lcom/gmail/heagoo/apkeditor/util/e;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/c;->d:Lcom/gmail/heagoo/apkeditor/util/e;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/util/e;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    return v1
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/util/c;->e:I

    return v0
.end method

.method public final c()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/c;->a:Ljava/util/Map;

    return-object v0
.end method
