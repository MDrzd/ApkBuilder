.class final Lcom/gmail/heagoo/apkeditor/util/m;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/m;->f:Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/gmail/heagoo/apkeditor/util/m;->c:Ljava/lang/String;

    add-int/lit8 v0, v0, -0x2

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/m;->g:Ljava/lang/String;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/m;->g:Ljava/lang/String;

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/util/m;->g:Ljava/lang/String;

    invoke-virtual {v2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/m;->a:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/m;->g:Ljava/lang/String;

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/m;->c:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/util/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/m;->b:Ljava/lang/String;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/m;->c:Ljava/lang/String;

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/util/m;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/util/m;I)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/util/m;->c:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/util/m;->c:Ljava/lang/String;

    const-string v4, ".9.png"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ".9.png"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/util/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/util/m;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_7

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/util/m;->c:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v4, v4, -0x41

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    goto :goto_2

    :cond_4
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    const/16 v5, 0x5f

    if-eq v4, v5, :cond_2

    if-ne v4, v3, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_r"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/m;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/m;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/util/m;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne p1, v2, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/util/m;->e:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/m;->e:Ljava/lang/String;

    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/m;->d:Ljava/lang/String;

    return-void
.end method
