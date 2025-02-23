.class final Lcom/gmail/heagoo/apkeditor/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/dq;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/gmail/heagoo/apkeditor/l;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/l;Lcom/gmail/heagoo/apkeditor/dq;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/aa;->c:Lcom/gmail/heagoo/apkeditor/l;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/aa;->a:Lcom/gmail/heagoo/apkeditor/dq;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/aa;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fileSelectedInDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/aa;->c:Lcom/gmail/heagoo/apkeditor/l;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/aa;->a:Lcom/gmail/heagoo/apkeditor/dq;

    invoke-virtual {p3, p1, p2, v0}, Lcom/gmail/heagoo/apkeditor/l;->a(Ljava/lang/String;Ljava/lang/String;Lcom/gmail/heagoo/apkeditor/dq;)V

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/aa;->c:Lcom/gmail/heagoo/apkeditor/l;

    const/16 p3, 0x3e9

    invoke-static {p2, p1, p3}, Lcom/gmail/heagoo/b/a/a;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/aa;->c:Lcom/gmail/heagoo/apkeditor/l;

    iget-object p3, p3, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p3, p2, p1}, Lcom/gmail/heagoo/apkeditor/ci;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/aa;->a:Lcom/gmail/heagoo/apkeditor/dq;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/aa;->a:Lcom/gmail/heagoo/apkeditor/dq;

    invoke-interface {p1}, Lcom/gmail/heagoo/apkeditor/dq;->a()V

    :cond_1
    return-void
.end method

.method public final getConfirmMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public final isInterestedFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/aa;->b:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/aa;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
