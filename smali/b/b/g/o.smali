.class final Lb/b/g/o;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/BitSet;

.field b:Lb/b/g/p;

.field c:Ljava/util/ArrayList;

.field d:Ljava/util/ArrayList;

.field e:Z


# direct methods
.method constructor <init>(IILb/b/g/p;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lb/b/g/o;->a:Ljava/util/BitSet;

    iget-object p2, p0, Lb/b/g/o;->a:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    iput-object p3, p0, Lb/b/g/o;->b:Lb/b/g/p;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/b/g/o;->c:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/b/g/o;->d:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/b/g/o;->e:Z

    return-void
.end method
