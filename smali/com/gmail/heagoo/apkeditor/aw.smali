.class final Lcom/gmail/heagoo/apkeditor/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;Landroid/widget/EditText;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/aw;->c:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/aw;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/aw;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/aw;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/aw;->c:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->c(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d0137

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/aw;->c:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    invoke-static {p2}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->d(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)Lcom/gmail/heagoo/apkeditor/ci;

    move-result-object p2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/aw;->b:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/gmail/heagoo/apkeditor/ci;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
