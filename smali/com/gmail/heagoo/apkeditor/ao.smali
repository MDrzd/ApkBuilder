.class final Lcom/gmail/heagoo/apkeditor/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/gmail/heagoo/apkeditor/an;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/an;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ao;->b:Lcom/gmail/heagoo/apkeditor/an;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/ao;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ao;->b:Lcom/gmail/heagoo/apkeditor/an;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/an;->c:Lcom/gmail/heagoo/apkeditor/ai;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/ao;->b:Lcom/gmail/heagoo/apkeditor/an;

    iget-object p2, p2, Lcom/gmail/heagoo/apkeditor/an;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ao;->b:Lcom/gmail/heagoo/apkeditor/an;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/an;->a:Lcom/gmail/heagoo/common/c;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ao;->a:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/gmail/heagoo/apkeditor/ai;->a(Lcom/gmail/heagoo/apkeditor/ai;Ljava/lang/String;Lcom/gmail/heagoo/common/c;Ljava/lang/String;)V

    return-void
.end method
