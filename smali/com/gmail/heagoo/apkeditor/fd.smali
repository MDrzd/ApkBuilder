.class final Lcom/gmail/heagoo/apkeditor/fd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/fd;->b:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iput p2, p0, Lcom/gmail/heagoo/apkeditor/fd;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/fd;->b:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    new-instance p2, Lcom/gmail/heagoo/apkeditor/fe;

    invoke-direct {p2, p0}, Lcom/gmail/heagoo/apkeditor/fe;-><init>(Lcom/gmail/heagoo/apkeditor/fd;)V

    invoke-static {p1, p2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;Lcom/gmail/heagoo/common/l;)V

    return-void
.end method
