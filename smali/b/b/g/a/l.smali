.class final Lb/b/g/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/g/ah;


# instance fields
.field private synthetic a:Ljava/util/ArrayList;

.field private synthetic b:Lb/b/g/a/k;


# direct methods
.method constructor <init>(Lb/b/g/a/k;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lb/b/g/a/l;->b:Lb/b/g/a/k;

    iput-object p2, p0, Lb/b/g/a/l;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/b/g/af;Lb/b/g/af;)V
    .registers 7

    invoke-virtual {p1}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/b/g/aj;

    invoke-virtual {p2}, Lb/b/g/aj;->c()Lb/b/f/b/x;

    move-result-object p2

    sget-object v1, Lb/b/f/b/y;->s:Lb/b/f/b/x;

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Lb/b/g/af;->g()Ljava/util/BitSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/BitSet;

    :goto_0
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lb/b/g/a/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g/af;

    invoke-virtual {p1}, Lb/b/g/af;->e()I

    move-result v2

    invoke-virtual {p1}, Lb/b/g/af;->j()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lb/b/g/af;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
