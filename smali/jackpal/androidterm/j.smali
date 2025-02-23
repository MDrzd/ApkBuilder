.class final Ljackpal/androidterm/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljackpal/androidterm/compat/d;


# instance fields
.field private synthetic a:Ljackpal/androidterm/Term;


# direct methods
.method constructor <init>(Ljackpal/androidterm/Term;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/j;->a:Ljackpal/androidterm/Term;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 5

    iget-object v0, p0, Ljackpal/androidterm/j;->a:Ljackpal/androidterm/Term;

    invoke-static {v0}, Ljackpal/androidterm/Term;->g(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Ljackpal/androidterm/TermViewFlipper;->getDisplayedChild()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Ljackpal/androidterm/j;->a:Ljackpal/androidterm/Term;

    invoke-static {v0}, Ljackpal/androidterm/Term;->g(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Ljackpal/androidterm/TermViewFlipper;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/j;->a:Ljackpal/androidterm/Term;

    invoke-static {v0}, Ljackpal/androidterm/Term;->g(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;

    move-result-object v0

    iget-object v1, p0, Ljackpal/androidterm/j;->a:Ljackpal/androidterm/Term;

    iget-object v2, p0, Ljackpal/androidterm/j;->a:Ljackpal/androidterm/Term;

    invoke-static {v2}, Ljackpal/androidterm/Term;->i(Ljackpal/androidterm/Term;)Ljackpal/androidterm/c/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljackpal/androidterm/c/a;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljackpal/androidterm/a/q;

    invoke-static {v1, v2}, Ljackpal/androidterm/Term;->a(Ljackpal/androidterm/Term;Ljackpal/androidterm/a/q;)Ljackpal/androidterm/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljackpal/androidterm/TermViewFlipper;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/j;->a:Ljackpal/androidterm/Term;

    invoke-static {v0}, Ljackpal/androidterm/Term;->g(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljackpal/androidterm/TermViewFlipper;->setDisplayedChild(I)V

    iget-object p1, p0, Ljackpal/androidterm/j;->a:Ljackpal/androidterm/Term;

    invoke-static {p1}, Ljackpal/androidterm/Term;->j(Ljackpal/androidterm/Term;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Ljackpal/androidterm/j;->a:Ljackpal/androidterm/Term;

    invoke-static {p1}, Ljackpal/androidterm/Term;->h(Ljackpal/androidterm/Term;)Ljackpal/androidterm/compat/c;

    move-result-object p1

    invoke-virtual {p1}, Ljackpal/androidterm/compat/c;->a()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
