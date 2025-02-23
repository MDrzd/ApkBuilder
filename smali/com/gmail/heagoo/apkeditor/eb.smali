.class final Lcom/gmail/heagoo/apkeditor/eb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/eb;->a:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrawerClosed()V
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/eb;->a:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->h(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)V

    return-void
.end method
