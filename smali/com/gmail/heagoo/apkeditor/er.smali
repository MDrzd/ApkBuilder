.class public final Lcom/gmail/heagoo/apkeditor/er;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

.field private b:Lcom/gmail/heagoo/apkeditor/en;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/gmail/heagoo/apkeditor/es;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/gmail/heagoo/apkeditor/es;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/es;-><init>(Lcom/gmail/heagoo/apkeditor/er;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/er;->f:Lcom/gmail/heagoo/apkeditor/es;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/er;->a:Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    new-instance v0, Lcom/gmail/heagoo/apkeditor/en;

    invoke-direct {v0, p1, p2}, Lcom/gmail/heagoo/apkeditor/en;-><init>(Landroid/content/Context;Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/er;->b:Lcom/gmail/heagoo/apkeditor/en;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/er;->b:Lcom/gmail/heagoo/apkeditor/en;

    invoke-virtual {p2, p1}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->setItemsCanFocus(Z)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/er;->a:Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/er;->a:Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->d()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final a(I)V
    .registers 2

    const p1, 0xb0001

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/er;->c:I

    return-void
.end method

.method public final a(IF)V
    .registers 4

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/er;->b:Lcom/gmail/heagoo/apkeditor/en;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Lcom/gmail/heagoo/apkeditor/en;->a(IF)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/er;->b:Lcom/gmail/heagoo/apkeditor/en;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/en;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(III)V
    .registers 6

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/er;->a:Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/er;->a:Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    invoke-virtual {v1}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->getLastVisiblePosition()I

    move-result v1

    if-lt p1, v0, :cond_2

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/er;->f(I)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->setSelection(II)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/er;->e(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/er;->a:Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->requestFocus()Z

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/er;->f:Lcom/gmail/heagoo/apkeditor/es;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gmail/heagoo/apkeditor/es;->a(III)V

    return-void
.end method

.method public final a(Landroid/text/TextWatcher;)V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/er;->b:Lcom/gmail/heagoo/apkeditor/en;

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/apkeditor/en;->a(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final a(Lcom/gmail/heagoo/a;)V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/er;->b:Lcom/gmail/heagoo/apkeditor/en;

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/apkeditor/en;->a(Lcom/gmail/heagoo/a;)V

    return-void
.end method

.method public final a(Lcom/gmail/heagoo/neweditor/d;)V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/er;->b:Lcom/gmail/heagoo/apkeditor/en;

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/apkeditor/en;->a(Lcom/gmail/heagoo/neweditor/d;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "\\r?\\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/er;->b:Lcom/gmail/heagoo/apkeditor/en;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/apkeditor/en;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/er;->b:Lcom/gmail/heagoo/apkeditor/en;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/en;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/er;->b:Lcom/gmail/heagoo/apkeditor/en;

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/apkeditor/en;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/er;->b:Lcom/gmail/heagoo/apkeditor/en;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/en;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/er;->b:Lcom/gmail/heagoo/apkeditor/en;

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/apkeditor/en;->a(Z)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/er;->b:Lcom/gmail/heagoo/apkeditor/en;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/en;->notifyDataSetChanged()V

    return-void
.end method

.method public final b()I
    .registers 2

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/er;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/er;->f(I)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(I)V
    .registers 3

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/er;->d:I

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/er;->a:Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->setBackgroundColor(I)V

    return-void
.end method

.method public final c()I
    .registers 2

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/er;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/er;->f(I)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c(I)V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/er;->b:Lcom/gmail/heagoo/apkeditor/en;

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/apkeditor/en;->a(I)V

    return-void
.end method

.method public final d()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/er;->b:Lcom/gmail/heagoo/apkeditor/en;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/en;->a()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)V
    .registers 2

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/er;->e:I

    return-void
.end method

.method public final e()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/er;->b:Lcom/gmail/heagoo/apkeditor/en;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/en;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e(I)V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/er;->a:Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->setSelection(I)V

    return-void
.end method

.method public final f()Landroid/text/Editable;
    .registers 2

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/er;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/er;->f(I)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f(I)Landroid/widget/EditText;
    .registers 5

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/er;->a:Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    invoke-virtual {v1}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/er;->a:Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    invoke-virtual {v2}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->getChildCount()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    if-lt p1, v1, :cond_2

    if-le p1, v2, :cond_1

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/er;->a:Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    invoke-virtual {v1, p1}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/er;->a:Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    invoke-virtual {v1}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/er;->a:Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    invoke-interface {v1, p1, v0, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_3

    const v0, 0x7f0801c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    return-object p1

    :cond_3
    return-object v0
.end method

.method public final g()V
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/er;->a:Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->requestLayout()V

    return-void
.end method

.method public final h()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/er;->a:Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/er;->b:Lcom/gmail/heagoo/apkeditor/en;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/en;->notifyDataSetChanged()V

    return-void
.end method
