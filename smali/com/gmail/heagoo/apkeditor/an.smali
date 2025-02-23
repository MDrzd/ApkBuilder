.class final Lcom/gmail/heagoo/apkeditor/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/gmail/heagoo/common/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/gmail/heagoo/apkeditor/ai;

.field private synthetic d:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/ai;Landroid/widget/EditText;Lcom/gmail/heagoo/common/c;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/an;->c:Lcom/gmail/heagoo/apkeditor/ai;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/an;->d:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/an;->a:Lcom/gmail/heagoo/common/c;

    iput-object p4, p0, Lcom/gmail/heagoo/apkeditor/an;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/an;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/an;->c:Lcom/gmail/heagoo/apkeditor/ai;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    const v0, 0x7f0d0137

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/an;->a:Lcom/gmail/heagoo/common/c;

    iget-object v0, v0, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/an;->c:Lcom/gmail/heagoo/apkeditor/ai;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    const v0, 0x7f0d01e8

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/an;->a:Lcom/gmail/heagoo/common/c;

    iget-boolean v0, v0, Lcom/gmail/heagoo/common/c;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/an;->c:Lcom/gmail/heagoo/apkeditor/ai;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/an;->a:Lcom/gmail/heagoo/common/c;

    iget-object v1, v1, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/gmail/heagoo/apkeditor/ai;->a(Lcom/gmail/heagoo/apkeditor/ai;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/an;->c:Lcom/gmail/heagoo/apkeditor/ai;

    iget-object v1, v1, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d014e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d0328

    new-instance v2, Lcom/gmail/heagoo/apkeditor/ao;

    invoke-direct {v2, p0, p1}, Lcom/gmail/heagoo/apkeditor/ao;-><init>(Lcom/gmail/heagoo/apkeditor/an;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f0d01e6

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/an;->c:Lcom/gmail/heagoo/apkeditor/ai;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/an;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/an;->a:Lcom/gmail/heagoo/common/c;

    invoke-static {v0, v1, v2, p1}, Lcom/gmail/heagoo/apkeditor/ai;->a(Lcom/gmail/heagoo/apkeditor/ai;Ljava/lang/String;Lcom/gmail/heagoo/common/c;Ljava/lang/String;)V

    return-void
.end method
