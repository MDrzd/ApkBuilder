.class final Lcom/gmail/heagoo/apkeditor/bp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/MainActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/bp;->a:Lcom/gmail/heagoo/apkeditor/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrawerClosed(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/bp;->a:Lcom/gmail/heagoo/apkeditor/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/gmail/heagoo/apkeditor/MainActivity;->a(Lcom/gmail/heagoo/apkeditor/MainActivity;Z)Z

    return-void
.end method

.method public final onDrawerOpened(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/bp;->a:Lcom/gmail/heagoo/apkeditor/MainActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/gmail/heagoo/apkeditor/MainActivity;->a(Lcom/gmail/heagoo/apkeditor/MainActivity;Z)Z

    return-void
.end method

.method public final onDrawerSlide(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public final onDrawerStateChanged(I)V
    .registers 2

    return-void
.end method
