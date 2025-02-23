.class public final Lb/b/c/b/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private b:Lb/b/c/b/y;

.field private c:Lb/b/c/b/b;

.field private d:Lb/b/c/b/e;

.field private e:Lb/b/c/b/z;

.field private f:Lb/b/c/b/q;

.field private g:Lb/b/c/b/l;


# direct methods
.method public constructor <init>(ILb/b/c/b/y;Lb/b/c/b/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput p1, p0, Lb/b/c/b/i;->a:I

    iput-object p2, p0, Lb/b/c/b/i;->b:Lb/b/c/b/y;

    iput-object p3, p0, Lb/b/c/b/i;->c:Lb/b/c/b/b;

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/c/b/i;->d:Lb/b/c/b/e;

    iput-object p1, p0, Lb/b/c/b/i;->e:Lb/b/c/b/z;

    iput-object p1, p0, Lb/b/c/b/i;->f:Lb/b/c/b/q;

    iput-object p1, p0, Lb/b/c/b/i;->g:Lb/b/c/b/l;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unprocessedInsns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j()V
    .registers 3

    iget-object v0, p0, Lb/b/c/b/i;->g:Lb/b/c/b/l;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/b/c/b/i;->b:Lb/b/c/b/y;

    invoke-virtual {v0}, Lb/b/c/b/y;->d()Lb/b/c/b/l;

    move-result-object v0

    iput-object v0, p0, Lb/b/c/b/i;->g:Lb/b/c/b/l;

    iget-object v0, p0, Lb/b/c/b/i;->g:Lb/b/c/b/l;

    iget v1, p0, Lb/b/c/b/i;->a:I

    invoke-static {v0, v1}, Lb/b/c/b/z;->a(Lb/b/c/b/l;I)Lb/b/c/b/z;

    move-result-object v0

    iput-object v0, p0, Lb/b/c/b/i;->e:Lb/b/c/b/z;

    iget-object v0, p0, Lb/b/c/b/i;->g:Lb/b/c/b/l;

    invoke-static {v0}, Lb/b/c/b/q;->a(Lb/b/c/b/l;)Lb/b/c/b/q;

    move-result-object v0

    iput-object v0, p0, Lb/b/c/b/i;->f:Lb/b/c/b/q;

    iget-object v0, p0, Lb/b/c/b/i;->c:Lb/b/c/b/b;

    invoke-interface {v0}, Lb/b/c/b/b;->a()Lb/b/c/b/e;

    move-result-object v0

    iput-object v0, p0, Lb/b/c/b/i;->d:Lb/b/c/b/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/c/b/i;->b:Lb/b/c/b/y;

    iput-object v0, p0, Lb/b/c/b/i;->c:Lb/b/c/b/b;

    return-void
.end method


# virtual methods
.method public final a(Lb/b/c/b/j;)V
    .registers 3

    iget-object v0, p0, Lb/b/c/b/i;->b:Lb/b/c/b/y;

    invoke-virtual {v0, p1}, Lb/b/c/b/y;->a(Lb/b/c/b/j;)V

    return-void
.end method

.method public final a()Z
    .registers 3

    iget v0, p0, Lb/b/c/b/i;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lb/b/c/b/i;->b:Lb/b/c/b/y;

    invoke-virtual {v0}, Lb/b/c/b/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lb/b/c/b/i;->b:Lb/b/c/b/y;

    invoke-virtual {v0}, Lb/b/c/b/y;->b()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .registers 2

    iget-object v0, p0, Lb/b/c/b/i;->c:Lb/b/c/b/b;

    invoke-interface {v0}, Lb/b/c/b/b;->b()Z

    move-result v0

    return v0
.end method

.method public final d()Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/i;->c:Lb/b/c/b/b;

    invoke-interface {v0}, Lb/b/c/b/b;->c()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/i;->b:Lb/b/c/b/y;

    invoke-virtual {v0}, Lb/b/c/b/y;->c()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lb/b/c/b/l;
    .registers 2

    invoke-direct {p0}, Lb/b/c/b/i;->j()V

    iget-object v0, p0, Lb/b/c/b/i;->g:Lb/b/c/b/l;

    return-object v0
.end method

.method public final g()Lb/b/c/b/e;
    .registers 2

    invoke-direct {p0}, Lb/b/c/b/i;->j()V

    iget-object v0, p0, Lb/b/c/b/i;->d:Lb/b/c/b/e;

    return-object v0
.end method

.method public final h()Lb/b/c/b/z;
    .registers 2

    invoke-direct {p0}, Lb/b/c/b/i;->j()V

    iget-object v0, p0, Lb/b/c/b/i;->e:Lb/b/c/b/z;

    return-object v0
.end method

.method public final i()Lb/b/c/b/q;
    .registers 2

    invoke-direct {p0}, Lb/b/c/b/i;->j()V

    iget-object v0, p0, Lb/b/c/b/i;->f:Lb/b/c/b/q;

    return-object v0
.end method
