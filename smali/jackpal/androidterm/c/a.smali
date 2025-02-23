.class public final Ljackpal/androidterm/c/a;
.super Ljava/util/ArrayList;


# instance fields
.field private a:Ljava/util/LinkedList;

.field private b:Ljava/util/LinkedList;

.field private c:Ljackpal/androidterm/a/ac;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/c/a;->a:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/c/a;->b:Ljava/util/LinkedList;

    new-instance v0, Ljackpal/androidterm/c/b;

    invoke-direct {v0, p0}, Ljackpal/androidterm/c/b;-><init>(Ljackpal/androidterm/c/a;)V

    iput-object v0, p0, Ljackpal/androidterm/c/a;->c:Ljackpal/androidterm/a/ac;

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/c/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljackpal/androidterm/a/ac;

    invoke-interface {v1}, Ljackpal/androidterm/a/ac;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Ljackpal/androidterm/c/a;)V
    .registers 2

    iget-object p0, p0, Ljackpal/androidterm/c/a;->b:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/a/ac;

    invoke-interface {v0}, Ljackpal/androidterm/a/ac;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Ljackpal/androidterm/a/q;
    .registers 3

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljackpal/androidterm/a/q;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljackpal/androidterm/a/q;->b(Ljackpal/androidterm/a/ac;)V

    invoke-direct {p0}, Ljackpal/androidterm/c/a;->a()V

    :cond_0
    return-object p1
.end method

.method public final a(Ljackpal/androidterm/a/ac;)V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/c/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljackpal/androidterm/a/ac;->a()V

    return-void
.end method

.method public final a(Ljackpal/androidterm/a/q;)Z
    .registers 4

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Ljackpal/androidterm/c/a;->c:Ljackpal/androidterm/a/ac;

    invoke-virtual {p1, v1}, Ljackpal/androidterm/a/q;->b(Ljackpal/androidterm/a/ac;)V

    invoke-direct {p0}, Ljackpal/androidterm/c/a;->a()V

    return v0
.end method

.method public final synthetic add(ILjava/lang/Object;)V
    .registers 3

    check-cast p2, Ljackpal/androidterm/a/q;

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Ljackpal/androidterm/c/a;->c:Ljackpal/androidterm/a/ac;

    invoke-virtual {p2, p1}, Ljackpal/androidterm/a/q;->b(Ljackpal/androidterm/a/ac;)V

    invoke-direct {p0}, Ljackpal/androidterm/c/a;->a()V

    return-void
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljackpal/androidterm/a/q;

    invoke-virtual {p0, p1}, Ljackpal/androidterm/c/a;->a(Ljackpal/androidterm/a/q;)Z

    move-result p1

    return p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 5

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/a/q;

    iget-object v1, p0, Ljackpal/androidterm/c/a;->c:Ljackpal/androidterm/a/ac;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/a/q;->b(Ljackpal/androidterm/a/ac;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ljackpal/androidterm/c/a;->a()V

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 5

    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljackpal/androidterm/a/q;

    iget-object v2, p0, Ljackpal/androidterm/c/a;->c:Ljackpal/androidterm/a/ac;

    invoke-virtual {v1, v2}, Ljackpal/androidterm/a/q;->b(Ljackpal/androidterm/a/ac;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ljackpal/androidterm/c/a;->a()V

    return v0
.end method

.method public final b(Ljackpal/androidterm/a/ac;)Z
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/c/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final c(Ljackpal/androidterm/a/ac;)V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/c/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljackpal/androidterm/a/ac;->a()V

    return-void
.end method

.method public final clear()V
    .registers 4

    invoke-virtual {p0}, Ljackpal/androidterm/c/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljackpal/androidterm/a/q;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljackpal/androidterm/a/q;->b(Ljackpal/androidterm/a/ac;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Ljackpal/androidterm/c/a;->a()V

    return-void
.end method

.method public final d(Ljackpal/androidterm/a/ac;)Z
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/c/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Ljackpal/androidterm/c/a;->a(I)Ljackpal/androidterm/a/q;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 4

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v1, p1, Ljackpal/androidterm/a/q;

    if-eqz v1, :cond_0

    check-cast p1, Ljackpal/androidterm/a/q;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljackpal/androidterm/a/q;->b(Ljackpal/androidterm/a/ac;)V

    invoke-direct {p0}, Ljackpal/androidterm/c/a;->a()V

    :cond_0
    return v0
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p2, Ljackpal/androidterm/a/q;

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljackpal/androidterm/a/q;

    iget-object v0, p0, Ljackpal/androidterm/c/a;->c:Ljackpal/androidterm/a/ac;

    invoke-virtual {p2, v0}, Ljackpal/androidterm/a/q;->b(Ljackpal/androidterm/a/ac;)V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljackpal/androidterm/a/q;->b(Ljackpal/androidterm/a/ac;)V

    :cond_0
    invoke-direct {p0}, Ljackpal/androidterm/c/a;->a()V

    return-object p1
.end method
