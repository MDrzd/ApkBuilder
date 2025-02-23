.class final Ljackpal/androidterm/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljackpal/androidterm/a/ac;


# instance fields
.field private synthetic a:Ljackpal/androidterm/a/c;


# direct methods
.method constructor <init>(Ljackpal/androidterm/a/c;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/a/f;->a:Ljackpal/androidterm/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/a/f;->a:Ljackpal/androidterm/a/c;

    invoke-static {v0}, Ljackpal/androidterm/a/c;->f(Ljackpal/androidterm/a/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/a/f;->a:Ljackpal/androidterm/a/c;

    invoke-static {v0}, Ljackpal/androidterm/a/c;->g(Ljackpal/androidterm/a/c;)Ljackpal/androidterm/a/x;

    move-result-object v0

    invoke-virtual {v0}, Ljackpal/androidterm/a/x;->h()I

    move-result v0

    iget-object v1, p0, Ljackpal/androidterm/a/f;->a:Ljackpal/androidterm/a/c;

    iget-object v2, p0, Ljackpal/androidterm/a/f;->a:Ljackpal/androidterm/a/c;

    invoke-static {v2}, Ljackpal/androidterm/a/c;->h(Ljackpal/androidterm/a/c;)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljackpal/androidterm/a/c;->b(Ljackpal/androidterm/a/c;I)I

    iget-object v1, p0, Ljackpal/androidterm/a/f;->a:Ljackpal/androidterm/a/c;

    iget-object v2, p0, Ljackpal/androidterm/a/f;->a:Ljackpal/androidterm/a/c;

    invoke-static {v2}, Ljackpal/androidterm/a/c;->i(Ljackpal/androidterm/a/c;)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljackpal/androidterm/a/c;->c(Ljackpal/androidterm/a/c;I)I

    iget-object v1, p0, Ljackpal/androidterm/a/f;->a:Ljackpal/androidterm/a/c;

    iget-object v2, p0, Ljackpal/androidterm/a/f;->a:Ljackpal/androidterm/a/c;

    invoke-static {v2}, Ljackpal/androidterm/a/c;->j(Ljackpal/androidterm/a/c;)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljackpal/androidterm/a/c;->d(Ljackpal/androidterm/a/c;I)I

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/a/f;->a:Ljackpal/androidterm/a/c;

    invoke-static {v0}, Ljackpal/androidterm/a/c;->g(Ljackpal/androidterm/a/c;)Ljackpal/androidterm/a/x;

    move-result-object v0

    invoke-virtual {v0}, Ljackpal/androidterm/a/x;->i()V

    iget-object v0, p0, Ljackpal/androidterm/a/f;->a:Ljackpal/androidterm/a/c;

    invoke-static {v0}, Ljackpal/androidterm/a/c;->k(Ljackpal/androidterm/a/c;)V

    iget-object v0, p0, Ljackpal/androidterm/a/f;->a:Ljackpal/androidterm/a/c;

    invoke-virtual {v0}, Ljackpal/androidterm/a/c;->invalidate()V

    return-void
.end method
