.class Lcom/gmail/heagoo/apkeditor/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/apkeditor/cg;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private synthetic c:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/c;->c:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/c;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    new-instance v0, Lcom/gmail/heagoo/apkeditor/b/c;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/c;->c:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->g(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gmail/heagoo/apkeditor/b/c;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/c;->c:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->h(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/c;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/c;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/c;->c:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->b(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;Z)Z

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/c;->c:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    const v2, 0x7f0d0202

    invoke-virtual {v0, v2}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/c;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/c;->c:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->i(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/c;->c:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->j(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0d01a8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/c;->c:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->i(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
