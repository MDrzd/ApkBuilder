.class public final Lcom/gmail/heagoo/neweditor/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/neweditor/ag;


# instance fields
.field private a:Lcom/gmail/heagoo/neweditor/Token;

.field private b:Lcom/gmail/heagoo/neweditor/Token;

.field private c:Lcom/gmail/heagoo/neweditor/ai;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lcom/gmail/heagoo/neweditor/ai;)Lcom/gmail/heagoo/neweditor/v;
    .registers 2

    :goto_0
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/v;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/gmail/heagoo/neweditor/Token;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/c;->a:Lcom/gmail/heagoo/neweditor/Token;

    return-object v0
.end method

.method public final a(BIILcom/gmail/heagoo/neweditor/ai;)V
    .registers 6

    new-instance v0, Lcom/gmail/heagoo/neweditor/Token;

    invoke-static {p4}, Lcom/gmail/heagoo/neweditor/c;->b(Lcom/gmail/heagoo/neweditor/ai;)Lcom/gmail/heagoo/neweditor/v;

    move-result-object p4

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/gmail/heagoo/neweditor/Token;-><init>(BIILcom/gmail/heagoo/neweditor/v;)V

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/c;->a:Lcom/gmail/heagoo/neweditor/Token;

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/c;->b:Lcom/gmail/heagoo/neweditor/Token;

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/c;->a:Lcom/gmail/heagoo/neweditor/Token;

    return-void

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/c;->b:Lcom/gmail/heagoo/neweditor/Token;

    iput-object v0, p1, Lcom/gmail/heagoo/neweditor/Token;->next:Lcom/gmail/heagoo/neweditor/Token;

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/c;->b:Lcom/gmail/heagoo/neweditor/Token;

    iget-object p1, p1, Lcom/gmail/heagoo/neweditor/Token;->next:Lcom/gmail/heagoo/neweditor/Token;

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/c;->b:Lcom/gmail/heagoo/neweditor/Token;

    return-void
.end method

.method public final a(Lcom/gmail/heagoo/neweditor/ai;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/c;->c:Lcom/gmail/heagoo/neweditor/ai;

    return-void
.end method
