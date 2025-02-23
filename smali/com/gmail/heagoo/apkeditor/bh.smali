.class public final Lcom/gmail/heagoo/apkeditor/bh;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/gmail/heagoo/apkeditor/bk;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/bh;)Landroid/app/AlertDialog;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/bh;->e:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic b(Lcom/gmail/heagoo/apkeditor/bh;)V
    .registers 6

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bh;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/bh;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x7f0d0137

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bh;->a:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/bh;->c:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_0
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bh;->a:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/bh;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bh;->a:Landroid/content/Context;

    const v1, 0x7f0d0140

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bh;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_2
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/bh;->b:Lcom/gmail/heagoo/apkeditor/bk;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/bh;->b:Lcom/gmail/heagoo/apkeditor/bk;

    invoke-interface {v2, v0, v1}, Lcom/gmail/heagoo/apkeditor/bk;->a(II)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bh;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/bh;->a:Landroid/content/Context;

    const v0, 0x7f0d030d

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILcom/gmail/heagoo/apkeditor/bk;)V
    .registers 6

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/bh;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/bh;->b:Lcom/gmail/heagoo/apkeditor/bk;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const/4 v0, 0x0

    const v1, 0x7f0a0064

    invoke-virtual {p3, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v1, 0x7f0800bc

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/gmail/heagoo/apkeditor/bh;->c:Landroid/widget/EditText;

    const v1, 0x7f0800ce

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/gmail/heagoo/apkeditor/bh;->d:Landroid/widget/EditText;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/bh;->e:Landroid/app/AlertDialog;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/bh;->e:Landroid/app/AlertDialog;

    new-instance p2, Lcom/gmail/heagoo/apkeditor/bi;

    invoke-direct {p2, p0}, Lcom/gmail/heagoo/apkeditor/bi;-><init>(Lcom/gmail/heagoo/apkeditor/bh;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/bh;->e:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
