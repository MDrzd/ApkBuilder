.class final Lcom/gmail/heagoo/apkeditor/ch;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/apkeditor/ce;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/ch;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ch;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/ce;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/ce;->a(Lcom/gmail/heagoo/apkeditor/ce;)Lcom/gmail/heagoo/apkeditor/cg;

    move-result-object v1

    invoke-interface {v1}, Lcom/gmail/heagoo/apkeditor/cg;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/ce;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
