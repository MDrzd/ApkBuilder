.class final Lcom/gmail/heagoo/apkeditor/fj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;


# direct methods
.method private constructor <init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/fj;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/fj;-><init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fj;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/d;->b()Z

    move-result v1

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/fj;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {v2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->m(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gmail/heagoo/neweditor/d;->a(Ljava/lang/CharSequence;III)V

    :cond_1
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/fj;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/fj;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {v2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->d(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)I

    move-result v2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/2addr p3, p2

    const/4 p2, 0x1

    invoke-virtual {p1, v2, p3, p2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(IIZ)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/fj;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-virtual {p1, p2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Z)V

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/d;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/fj;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->d()V

    :cond_2
    return-void
.end method
