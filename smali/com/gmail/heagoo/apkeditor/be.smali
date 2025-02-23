.class final Lcom/gmail/heagoo/apkeditor/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/KeyListPreference;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/KeyListPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/be;->a:Lcom/gmail/heagoo/apkeditor/KeyListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 v0, 0x2

    if-ne v0, p2, :cond_0

    new-instance p2, Lcom/gmail/heagoo/apkeditor/bf;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/be;->a:Lcom/gmail/heagoo/apkeditor/KeyListPreference;

    invoke-direct {p2, v0}, Lcom/gmail/heagoo/apkeditor/bf;-><init>(Lcom/gmail/heagoo/apkeditor/KeyListPreference;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/be;->a:Lcom/gmail/heagoo/apkeditor/KeyListPreference;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/KeyListPreference;->a(Lcom/gmail/heagoo/apkeditor/KeyListPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/gmail/heagoo/apkeditor/bf;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/be;->a:Lcom/gmail/heagoo/apkeditor/KeyListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/be;->a:Lcom/gmail/heagoo/apkeditor/KeyListPreference;

    invoke-virtual {v2}, Lcom/gmail/heagoo/apkeditor/KeyListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object p2, v2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/gmail/heagoo/apkeditor/KeyListPreference;->setValue(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
