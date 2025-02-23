.class final Lcom/gmail/heagoo/apkeditor/cr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/apkeditor/dq;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/cq;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/cq;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/cr;->a:Lcom/gmail/heagoo/apkeditor/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/cr;->a:Lcom/gmail/heagoo/apkeditor/cq;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/cq;->d(Lcom/gmail/heagoo/apkeditor/cq;)Lcom/gmail/heagoo/apkeditor/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/bs;->notifyDataSetChanged()V

    return-void
.end method
