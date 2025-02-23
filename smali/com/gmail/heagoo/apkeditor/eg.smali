.class final Lcom/gmail/heagoo/apkeditor/eg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/common/l;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/ef;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/ef;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/eg;->a:Lcom/gmail/heagoo/apkeditor/ef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/eg;->a:Lcom/gmail/heagoo/apkeditor/ef;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/ef;->b:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iget v1, v0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->e:I

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/eg;->a:Lcom/gmail/heagoo/apkeditor/ef;

    iget v2, v2, Lcom/gmail/heagoo/apkeditor/ef;->a:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->e:I

    new-instance v0, Lcom/gmail/heagoo/apkeditor/em;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/eg;->a:Lcom/gmail/heagoo/apkeditor/ef;

    iget-object v1, v1, Lcom/gmail/heagoo/apkeditor/ef;->b:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gmail/heagoo/apkeditor/em;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/em;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
