.class final Lcom/gmail/heagoo/apkeditor/bq;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/MainActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/bq;->a:Lcom/gmail/heagoo/apkeditor/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    new-instance v6, Lcom/gmail/heagoo/apkeditor/k;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/bq;->a:Lcom/gmail/heagoo/apkeditor/MainActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/gmail/heagoo/apkeditor/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6}, Lcom/gmail/heagoo/apkeditor/k;->a()Z

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bq;->a:Lcom/gmail/heagoo/apkeditor/MainActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/builder/a;->a(Landroid/content/Context;)V

    return-void
.end method
