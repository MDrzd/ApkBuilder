.class final Lcom/gmail/heagoo/apkeditor/ef;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ef;->b:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iput p2, p0, Lcom/gmail/heagoo/apkeditor/ef;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ef;->b:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    new-instance p2, Lcom/gmail/heagoo/apkeditor/eg;

    invoke-direct {p2, p0}, Lcom/gmail/heagoo/apkeditor/eg;-><init>(Lcom/gmail/heagoo/apkeditor/ef;)V

    invoke-static {p1, p2}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;Lcom/gmail/heagoo/common/l;)V

    return-void
.end method
