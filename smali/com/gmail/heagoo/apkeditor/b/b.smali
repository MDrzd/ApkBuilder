.class public Lcom/gmail/heagoo/apkeditor/b/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/b/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/b/b;->b:Ljava/lang/String;

    iput p3, p0, Lcom/gmail/heagoo/apkeditor/b/b;->c:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/gmail/heagoo/apkeditor/b/b;
    .registers 11

    const-string v0, "type=\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    add-int/lit8 v0, v0, 0x6

    const-string v3, "\" "

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_5

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "name=\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v2, :cond_4

    add-int/lit8 v3, v3, 0x6

    const-string v4, "\" "

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "id=\""

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v2, :cond_6

    add-int/lit8 v4, v4, 0x4

    const-string v5, "\" "

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v2, :cond_6

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0xa

    if-ne v4, v6, :cond_7

    const/4 v4, 0x2

    const/4 v7, 0x0

    :goto_0
    if-ge v4, v6, :cond_3

    shl-int/lit8 v7, v7, 0x4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_0

    const/16 v9, 0x39

    if-gt v8, v9, :cond_0

    add-int/lit8 v8, v8, -0x30

    goto :goto_2

    :cond_0
    const/16 v9, 0x61

    if-lt v8, v9, :cond_1

    const/16 v9, 0x66

    if-gt v8, v9, :cond_1

    add-int/lit8 v8, v8, -0x61

    :goto_1
    add-int/2addr v8, v6

    goto :goto_2

    :cond_1
    const/16 v9, 0x41

    if-lt v8, v9, :cond_2

    const/16 v9, 0x46

    if-gt v8, v9, :cond_2

    add-int/lit8 v8, v8, -0x41

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_2
    or-int/2addr v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_4

    :cond_4
    move-object v3, v1

    goto :goto_3

    :cond_5
    move-object v0, v1

    move-object v3, v0

    :cond_6
    :goto_3
    const/4 v5, -0x1

    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    if-eq v5, v2, :cond_8

    new-instance p0, Lcom/gmail/heagoo/apkeditor/b/b;

    invoke-direct {p0, v0, v3, v5}, Lcom/gmail/heagoo/apkeditor/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    :cond_8
    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "<public type=\"%s\" name=\"%s\" id=\"0x%s\" />"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/b/b;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/b/b;->b:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/gmail/heagoo/apkeditor/b/b;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
