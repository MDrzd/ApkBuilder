.class final Ljackpal/androidterm/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private synthetic a:Ljackpal/androidterm/Term;


# direct methods
.method constructor <init>(Ljackpal/androidterm/Term;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/k;->a:Ljackpal/androidterm/Term;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Ljackpal/androidterm/k;->a:Ljackpal/androidterm/Term;

    invoke-static {v1}, Ljackpal/androidterm/Term;->j(Ljackpal/androidterm/Term;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Ljackpal/androidterm/k;->a:Ljackpal/androidterm/Term;

    invoke-static {v1}, Ljackpal/androidterm/Term;->h(Ljackpal/androidterm/Term;)Ljackpal/androidterm/compat/c;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljackpal/androidterm/k;->a:Ljackpal/androidterm/Term;

    invoke-static {v1}, Ljackpal/androidterm/Term;->h(Ljackpal/androidterm/Term;)Ljackpal/androidterm/compat/c;

    move-result-object v1

    invoke-virtual {v1}, Ljackpal/androidterm/compat/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljackpal/androidterm/k;->a:Ljackpal/androidterm/Term;

    invoke-virtual {v1, p2, p3}, Ljackpal/androidterm/Term;->onKeyUp(ILandroid/view/KeyEvent;)Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Ljackpal/androidterm/k;->a:Ljackpal/androidterm/Term;

    invoke-static {v1}, Ljackpal/androidterm/Term;->k(Ljackpal/androidterm/Term;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p3

    and-int/2addr p3, v0

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    const/16 v2, 0x3d

    if-ne p2, v2, :cond_4

    if-eqz v1, :cond_4

    if-eqz p3, :cond_3

    iget-object p2, p0, Ljackpal/androidterm/k;->a:Ljackpal/androidterm/Term;

    invoke-static {p2}, Ljackpal/androidterm/Term;->g(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;

    move-result-object p2

    invoke-virtual {p2}, Ljackpal/androidterm/TermViewFlipper;->showPrevious()V

    goto :goto_3

    :cond_3
    iget-object p2, p0, Ljackpal/androidterm/k;->a:Ljackpal/androidterm/Term;

    invoke-static {p2}, Ljackpal/androidterm/Term;->g(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;

    move-result-object p2

    invoke-virtual {p2}, Ljackpal/androidterm/TermViewFlipper;->showNext()V

    :goto_3
    const/4 p2, 0x1

    goto :goto_4

    :cond_4
    const/16 v2, 0x2a

    if-ne p2, v2, :cond_5

    if-eqz v1, :cond_5

    if-eqz p3, :cond_5

    iget-object p2, p0, Ljackpal/androidterm/k;->a:Ljackpal/androidterm/Term;

    invoke-static {p2}, Ljackpal/androidterm/Term;->l(Ljackpal/androidterm/Term;)V

    goto :goto_3

    :cond_5
    const/16 v2, 0x32

    if-ne p2, v2, :cond_6

    if-eqz v1, :cond_6

    if-eqz p3, :cond_6

    iget-object p2, p0, Ljackpal/androidterm/k;->a:Ljackpal/androidterm/Term;

    invoke-static {p2}, Ljackpal/androidterm/Term;->m(Ljackpal/androidterm/Term;)V

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_7

    goto :goto_5

    :cond_7
    return p1

    :cond_8
    :goto_5
    return v0
.end method
