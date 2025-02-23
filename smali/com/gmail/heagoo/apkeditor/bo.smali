.class final Lcom/gmail/heagoo/apkeditor/bo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/MainActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/bo;->a:Lcom/gmail/heagoo/apkeditor/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance p1, Lcom/gmail/heagoo/apkeditor/ce;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bo;->a:Lcom/gmail/heagoo/apkeditor/MainActivity;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/bo;->a:Lcom/gmail/heagoo/apkeditor/MainActivity;

    const/4 v2, -0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/gmail/heagoo/apkeditor/ce;-><init>(Landroid/app/Activity;Lcom/gmail/heagoo/apkeditor/cg;I)V

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ce;->show()V

    return-void
.end method
