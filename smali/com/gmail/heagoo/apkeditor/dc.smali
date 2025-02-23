.class final Lcom/gmail/heagoo/apkeditor/dc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/db;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/db;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/dc;->a:Lcom/gmail/heagoo/apkeditor/db;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/dc;->a:Lcom/gmail/heagoo/apkeditor/db;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/db;->b:Lcom/gmail/heagoo/apkeditor/cx;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dc;->a:Lcom/gmail/heagoo/apkeditor/db;

    iget v0, v0, Lcom/gmail/heagoo/apkeditor/db;->a:I

    invoke-static {p1, v0}, Lcom/gmail/heagoo/apkeditor/cx;->a(Lcom/gmail/heagoo/apkeditor/cx;I)V

    const/4 p1, 0x1

    return p1
.end method
