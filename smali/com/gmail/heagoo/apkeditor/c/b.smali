.class final Lcom/gmail/heagoo/apkeditor/c/b;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/gmail/heagoo/apkeditor/c/a;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/c/a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/c/b;->b:Lcom/gmail/heagoo/apkeditor/c/a;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/c/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/c/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/c/b;->b:Lcom/gmail/heagoo/apkeditor/c/a;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/c/b;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/gmail/heagoo/apkeditor/c/a;->a(Lcom/gmail/heagoo/apkeditor/c/a;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/c/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/c/b;->b:Lcom/gmail/heagoo/apkeditor/c/a;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/c/b;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/gmail/heagoo/apkeditor/c/a;->b(Lcom/gmail/heagoo/apkeditor/c/a;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/c/b;->b:Lcom/gmail/heagoo/apkeditor/c/a;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/c/a;->a(Lcom/gmail/heagoo/apkeditor/c/a;)Lcom/gmail/heagoo/apkeditor/c/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/c/c;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method
