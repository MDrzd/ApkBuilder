.class final Lcom/gmail/heagoo/apkeditor/fe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/common/l;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/fd;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/fd;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/fe;->a:Lcom/gmail/heagoo/apkeditor/fd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fe;->a:Lcom/gmail/heagoo/apkeditor/fd;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/fd;->b:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget v1, v0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->e:I

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/fe;->a:Lcom/gmail/heagoo/apkeditor/fd;

    iget v2, v2, Lcom/gmail/heagoo/apkeditor/fd;->a:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->e:I

    new-instance v0, Lcom/gmail/heagoo/apkeditor/fk;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/fe;->a:Lcom/gmail/heagoo/apkeditor/fd;

    iget-object v1, v1, Lcom/gmail/heagoo/apkeditor/fd;->b:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gmail/heagoo/apkeditor/fk;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/fk;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
