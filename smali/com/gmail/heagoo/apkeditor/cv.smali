.class final Lcom/gmail/heagoo/apkeditor/cv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/cs;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/cs;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/cv;->a:Lcom/gmail/heagoo/apkeditor/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/cv;->a:Lcom/gmail/heagoo/apkeditor/cs;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/cs;->b:Lcom/gmail/heagoo/apkeditor/cq;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cv;->a:Lcom/gmail/heagoo/apkeditor/cs;

    iget v0, v0, Lcom/gmail/heagoo/apkeditor/cs;->a:I

    invoke-static {p1, v0}, Lcom/gmail/heagoo/apkeditor/cq;->c(Lcom/gmail/heagoo/apkeditor/cq;I)V

    const/4 p1, 0x1

    return p1
.end method
