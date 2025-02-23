.class final Lcom/gmail/heagoo/apkeditor/eo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private a:I

.field private b:Z

.field private synthetic c:Lcom/gmail/heagoo/apkeditor/en;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/apkeditor/en;I)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/eo;->c:Lcom/gmail/heagoo/apkeditor/en;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/gmail/heagoo/apkeditor/eo;->a:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/eo;->b:Z

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/eo;->b:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/eo;->b:Z

    return-void

    :cond_0
    iget v0, p0, Lcom/gmail/heagoo/apkeditor/eo;->a:I

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/eo;->c:Lcom/gmail/heagoo/apkeditor/en;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/en;->a(Lcom/gmail/heagoo/apkeditor/en;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/eo;->c:Lcom/gmail/heagoo/apkeditor/en;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/en;->a(Lcom/gmail/heagoo/apkeditor/en;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/eo;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/eo;->c:Lcom/gmail/heagoo/apkeditor/en;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/en;->b(Lcom/gmail/heagoo/apkeditor/en;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/eo;->c:Lcom/gmail/heagoo/apkeditor/en;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/en;->b(Lcom/gmail/heagoo/apkeditor/en;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    :cond_2
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
