.class final Lcom/gmail/heagoo/apkeditor/cy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/gmail/heagoo/apkeditor/cx;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/cx;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/cy;->b:Lcom/gmail/heagoo/apkeditor/cx;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/cy;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    const-string p1, ""

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/cy;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/cy;->b:Lcom/gmail/heagoo/apkeditor/cx;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/cx;->f(Lcom/gmail/heagoo/apkeditor/cx;)Lcom/gmail/heagoo/apkeditor/ac/a;

    move-result-object p1

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/cy;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/gmail/heagoo/apkeditor/ac/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/cy;->b:Lcom/gmail/heagoo/apkeditor/cx;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/cy;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/gmail/heagoo/apkeditor/cx;->a(Ljava/lang/String;)V

    return-void
.end method
