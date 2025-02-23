.class final Lcom/gmail/heagoo/apkeditor/cf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/gmail/heagoo/apkeditor/ce;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/ce;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/cf;->b:Lcom/gmail/heagoo/apkeditor/ce;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/cf;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cf;->b:Lcom/gmail/heagoo/apkeditor/ce;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/ce;->a(Lcom/gmail/heagoo/apkeditor/ce;)Lcom/gmail/heagoo/apkeditor/cg;

    move-result-object v0

    invoke-interface {v0}, Lcom/gmail/heagoo/apkeditor/cg;->b()V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cf;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cf;->b:Lcom/gmail/heagoo/apkeditor/ce;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/cf;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/ce;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cf;->b:Lcom/gmail/heagoo/apkeditor/ce;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/cf;->b:Lcom/gmail/heagoo/apkeditor/ce;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/ce;->b(Lcom/gmail/heagoo/apkeditor/ce;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/ce;->a(I)V

    :goto_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cf;->b:Lcom/gmail/heagoo/apkeditor/ce;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ce;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cf;->b:Lcom/gmail/heagoo/apkeditor/ce;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/ce;->c(Lcom/gmail/heagoo/apkeditor/ce;)V

    :cond_1
    return-void
.end method
