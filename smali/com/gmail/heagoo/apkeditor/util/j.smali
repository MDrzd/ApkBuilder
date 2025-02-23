.class final Lcom/gmail/heagoo/apkeditor/util/j;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/List;

.field private c:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/j;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/j;->c:Ljava/util/List;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/util/j;->a:Ljava/lang/String;

    const/4 p1, 0x0

    if-lez p3, :cond_1

    add-int/lit8 p2, p3, -0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    new-instance p3, Lcom/gmail/heagoo/apkeditor/util/i;

    invoke-direct {p3, p2, p4, p5, p1}, Lcom/gmail/heagoo/apkeditor/util/i;-><init>(ILjava/lang/String;Ljava/lang/String;B)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/j;->b:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;B)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/gmail/heagoo/apkeditor/util/j;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(I)Lcom/gmail/heagoo/apkeditor/util/h;
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/apkeditor/util/h;

    iget v2, v1, Lcom/gmail/heagoo/apkeditor/util/h;->a:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/util/j;I)Lcom/gmail/heagoo/apkeditor/util/h;
    .registers 2

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/util/j;->a(I)Lcom/gmail/heagoo/apkeditor/util/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/apkeditor/util/i;

    iget v2, v1, Lcom/gmail/heagoo/apkeditor/util/i;->a:I

    invoke-direct {p0, v2}, Lcom/gmail/heagoo/apkeditor/util/j;->a(I)Lcom/gmail/heagoo/apkeditor/util/h;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/gmail/heagoo/apkeditor/util/h;

    iget v3, v1, Lcom/gmail/heagoo/apkeditor/util/i;->a:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/gmail/heagoo/apkeditor/util/h;-><init>(IB)V

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/util/j;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, v1, Lcom/gmail/heagoo/apkeditor/util/i;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/gmail/heagoo/apkeditor/util/h;->a(Lcom/gmail/heagoo/apkeditor/util/h;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
