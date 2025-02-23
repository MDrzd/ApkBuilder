.class final Lcom/gmail/heagoo/apkeditor/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/l;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/l;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/m;->a:Lcom/gmail/heagoo/apkeditor/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/m;->a:Lcom/gmail/heagoo/apkeditor/l;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/l;->finish()V

    return-void
.end method
