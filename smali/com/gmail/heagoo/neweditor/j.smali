.class final Lcom/gmail/heagoo/neweditor/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/neweditor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/neweditor/EditorActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/j;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/j;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->d(Lcom/gmail/heagoo/neweditor/EditorActivity;)Lcom/gmail/heagoo/neweditor/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/d;->b()Z

    move-result v1

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/j;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v2}, Lcom/gmail/heagoo/neweditor/EditorActivity;->m(Lcom/gmail/heagoo/neweditor/EditorActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gmail/heagoo/neweditor/d;->a(Ljava/lang/CharSequence;III)V

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/j;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/j;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v2}, Lcom/gmail/heagoo/neweditor/EditorActivity;->e(Lcom/gmail/heagoo/neweditor/EditorActivity;)I

    move-result v2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/2addr p3, p2

    const/4 p2, 0x1

    invoke-virtual {p1, v2, p3, p2}, Lcom/gmail/heagoo/neweditor/EditorActivity;->a(IIZ)V

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/j;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-virtual {p1, p2}, Lcom/gmail/heagoo/neweditor/EditorActivity;->a(Z)V

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/d;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/j;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->a()V

    :cond_1
    return-void
.end method
