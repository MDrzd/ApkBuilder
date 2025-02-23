.class final Lcom/gmail/heagoo/apkeditor/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private a:Z

.field private synthetic b:Lcom/gmail/heagoo/apkeditor/l;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/apkeditor/l;Z)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ag;->b:Lcom/gmail/heagoo/apkeditor/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/gmail/heagoo/apkeditor/ag;->a:Z

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    check-cast p2, Lcom/gmail/heagoo/apkeditor/i;

    invoke-virtual {p2}, Lcom/gmail/heagoo/apkeditor/i;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ag;->b:Lcom/gmail/heagoo/apkeditor/l;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/l;->a(Lcom/gmail/heagoo/apkeditor/l;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ag;->b:Lcom/gmail/heagoo/apkeditor/l;

    iget-boolean p2, p0, Lcom/gmail/heagoo/apkeditor/ag;->a:Z

    invoke-static {p1, p2}, Lcom/gmail/heagoo/apkeditor/l;->a(Lcom/gmail/heagoo/apkeditor/l;Z)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
