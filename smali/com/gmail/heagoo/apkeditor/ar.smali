.class final Lcom/gmail/heagoo/apkeditor/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field final synthetic a:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ar;->a:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    const/4 p2, 0x0

    const/4 p3, 0x1

    const v0, 0x7f0d01de

    invoke-interface {p1, p2, p3, p2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p3

    new-instance v0, Lcom/gmail/heagoo/apkeditor/as;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/as;-><init>(Lcom/gmail/heagoo/apkeditor/ar;)V

    invoke-interface {p3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 p3, 0x2

    const v0, 0x7f0d01dd

    invoke-interface {p1, p2, p3, p2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p2, Lcom/gmail/heagoo/apkeditor/at;

    invoke-direct {p2, p0}, Lcom/gmail/heagoo/apkeditor/at;-><init>(Lcom/gmail/heagoo/apkeditor/ar;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method
