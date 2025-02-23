.class final Ljackpal/androidterm/p;
.super Ljackpal/androidterm/y;

# interfaces
.implements Ljackpal/androidterm/a/ac;


# instance fields
.field private synthetic a:Ljackpal/androidterm/Term;


# direct methods
.method public constructor <init>(Ljackpal/androidterm/Term;Ljackpal/androidterm/c/a;)V
    .registers 3

    iput-object p1, p0, Ljackpal/androidterm/p;->a:Ljackpal/androidterm/Term;

    invoke-direct {p0, p2}, Ljackpal/androidterm/y;-><init>(Ljackpal/androidterm/c/a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    invoke-virtual {p0}, Ljackpal/androidterm/p;->notifyDataSetChanged()V

    iget-object v0, p0, Ljackpal/androidterm/p;->a:Ljackpal/androidterm/Term;

    invoke-static {v0}, Ljackpal/androidterm/Term;->h(Ljackpal/androidterm/Term;)Ljackpal/androidterm/compat/c;

    move-result-object v0

    iget-object v1, p0, Ljackpal/androidterm/p;->a:Ljackpal/androidterm/Term;

    invoke-static {v1}, Ljackpal/androidterm/Term;->g(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Ljackpal/androidterm/TermViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {v0, v1}, Ljackpal/androidterm/compat/c;->b(I)V

    return-void
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Ljackpal/androidterm/y;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    new-instance p2, Landroid/widget/TextView;

    iget-object p3, p0, Ljackpal/androidterm/p;->a:Ljackpal/androidterm/Term;

    invoke-direct {p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Ljackpal/androidterm/p;->a:Ljackpal/androidterm/Term;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0d0326

    invoke-virtual {p3, v1, v0}, Ljackpal/androidterm/Term;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Ljackpal/androidterm/p;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Ljackpal/androidterm/compat/f;->a:I

    const/16 p3, 0xd

    if-lt p1, p3, :cond_0

    iget-object p1, p0, Ljackpal/androidterm/p;->a:Ljackpal/androidterm/Term;

    const p3, 0x1030112

    :goto_0
    invoke-virtual {p2, p1, p3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Ljackpal/androidterm/p;->a:Ljackpal/androidterm/Term;

    const p3, 0x1030044

    goto :goto_0

    :goto_1
    return-object p2
.end method
