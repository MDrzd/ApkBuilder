.class final Lcom/gmail/heagoo/apkeditor/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/MainActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/bl;->a:Lcom/gmail/heagoo/apkeditor/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    new-instance p1, Lcom/gmail/heagoo/builder/f;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bl;->a:Lcom/gmail/heagoo/apkeditor/MainActivity;

    invoke-direct {p1, v0}, Lcom/gmail/heagoo/builder/f;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1}, Lcom/gmail/heagoo/builder/f;->show()V

    return-void
.end method
