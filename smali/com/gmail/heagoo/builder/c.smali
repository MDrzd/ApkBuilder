.class final Lcom/gmail/heagoo/builder/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/apkeditor/cg;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/builder/a;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/builder/a;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/builder/c;->a:Lcom/gmail/heagoo/builder/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/builder/c;->a:Lcom/gmail/heagoo/builder/a;

    invoke-static {v0}, Lcom/gmail/heagoo/builder/a;->b(Lcom/gmail/heagoo/builder/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/gmail/heagoo/builder/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/builder/c;->a:Lcom/gmail/heagoo/builder/a;

    invoke-static {v0}, Lcom/gmail/heagoo/builder/a;->c(Lcom/gmail/heagoo/builder/a;)V

    iget-object v0, p0, Lcom/gmail/heagoo/builder/c;->a:Lcom/gmail/heagoo/builder/a;

    invoke-virtual {v0}, Lcom/gmail/heagoo/builder/a;->dismiss()V

    return-void
.end method
