.class final Lb/b/g/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/g/ac;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/g/a/m;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lb/b/g/aa;)V
    .registers 9

    invoke-virtual {p1}, Lb/b/g/aa;->a()Lb/b/f/b/u;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/g/aa;->n()Lb/b/f/b/r;

    move-result-object v1

    invoke-virtual {v0}, Lb/b/f/b/u;->a_()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v4

    iget-object v5, p0, Lb/b/g/a/m;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Lb/b/g/aa;->a(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/b/g/af;

    invoke-virtual {v5, v1, v4}, Lb/b/g/af;->a(Lb/b/f/b/r;Lb/b/f/b/r;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
