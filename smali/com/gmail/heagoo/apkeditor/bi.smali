.class final Lcom/gmail/heagoo/apkeditor/bi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/gmail/heagoo/apkeditor/bh;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/bh;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/bi;->a:Lcom/gmail/heagoo/apkeditor/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/bi;->a:Lcom/gmail/heagoo/apkeditor/bh;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/bh;->a(Lcom/gmail/heagoo/apkeditor/bh;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/gmail/heagoo/apkeditor/bj;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/bj;-><init>(Lcom/gmail/heagoo/apkeditor/bi;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
