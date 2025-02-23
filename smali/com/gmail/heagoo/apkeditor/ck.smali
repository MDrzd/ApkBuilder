.class final Lcom/gmail/heagoo/apkeditor/ck;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/apkeditor/cg;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/gmail/heagoo/apkeditor/ci;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/ci;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ck;->c:Lcom/gmail/heagoo/apkeditor/ci;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/ck;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/ck;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ck;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ck;->c:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-static {v1, v0}, Lcom/gmail/heagoo/apkeditor/ci;->a(Lcom/gmail/heagoo/apkeditor/ci;Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/ck;->c:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-static {v3}, Lcom/gmail/heagoo/apkeditor/ci;->a(Lcom/gmail/heagoo/apkeditor/ci;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ck;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/ck;->c:Lcom/gmail/heagoo/apkeditor/ci;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/ck;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/ck;->c:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-static {v4}, Lcom/gmail/heagoo/apkeditor/ci;->a(Lcom/gmail/heagoo/apkeditor/ci;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v0, v3}, Lcom/gmail/heagoo/apkeditor/ci;->a(Lcom/gmail/heagoo/apkeditor/ci;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/util/Map;

    return-void
.end method

.method public final b()V
    .registers 1

    return-void
.end method
