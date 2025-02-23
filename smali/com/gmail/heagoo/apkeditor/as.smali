.class final Lcom/gmail/heagoo/apkeditor/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/ar;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/ar;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/as;->a:Lcom/gmail/heagoo/apkeditor/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 2

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/as;->a:Lcom/gmail/heagoo/apkeditor/ar;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/ar;->a:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->a(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)V

    const/4 p1, 0x1

    return p1
.end method
