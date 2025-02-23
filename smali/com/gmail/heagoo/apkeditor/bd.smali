.class final Lcom/gmail/heagoo/apkeditor/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/bd;->a:Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 2

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/bd;->a:Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;->a(Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;)V

    const/4 p1, 0x1

    return p1
.end method
