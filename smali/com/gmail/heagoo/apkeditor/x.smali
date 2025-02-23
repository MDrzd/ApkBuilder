.class final Lcom/gmail/heagoo/apkeditor/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/t;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/t;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/x;->a:Lcom/gmail/heagoo/apkeditor/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/x;->a:Lcom/gmail/heagoo/apkeditor/t;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/t;->b:Lcom/gmail/heagoo/apkeditor/l;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/x;->a:Lcom/gmail/heagoo/apkeditor/t;

    iget v0, v0, Lcom/gmail/heagoo/apkeditor/t;->a:I

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/apkeditor/l;->b(I)V

    const/4 p1, 0x1

    return p1
.end method
