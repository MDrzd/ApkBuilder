.class final Lcom/gmail/heagoo/apkeditor/fc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/fc;->b:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iput p2, p0, Lcom/gmail/heagoo/apkeditor/fc;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/fc;->b:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget p2, p1, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->e:I

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/fc;->a:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->e:I

    new-instance p1, Lcom/gmail/heagoo/apkeditor/fk;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/fc;->b:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/gmail/heagoo/apkeditor/fk;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;B)V

    new-array p2, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/gmail/heagoo/apkeditor/fk;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
