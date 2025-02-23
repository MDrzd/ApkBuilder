.class final Lcom/gmail/heagoo/apkeditor/util/o;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/util/o;->a:Ljava/lang/String;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/util/o;->a:Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/o;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/o;->a:Ljava/lang/String;

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/o;->b:Ljava/util/List;

    new-instance p1, Lcom/gmail/heagoo/apkeditor/util/p;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p3, p4, p2}, Lcom/gmail/heagoo/apkeditor/util/p;-><init>(Lcom/gmail/heagoo/apkeditor/util/o;ILjava/lang/String;B)V

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/util/o;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;B)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmail/heagoo/apkeditor/util/o;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/util/o;ILjava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/gmail/heagoo/apkeditor/util/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/gmail/heagoo/apkeditor/util/p;-><init>(Lcom/gmail/heagoo/apkeditor/util/o;ILjava/lang/String;B)V

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/util/o;->b:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
