.class final Lcom/gmail/heagoo/apkeditor/ej;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ej;->a:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ej;->a:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    new-instance p2, Lcom/gmail/heagoo/apkeditor/ek;

    invoke-direct {p2, p0}, Lcom/gmail/heagoo/apkeditor/ek;-><init>(Lcom/gmail/heagoo/apkeditor/ej;)V

    invoke-static {p1, p2}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;Lcom/gmail/heagoo/common/l;)V

    return-void
.end method
