.class final Lb/b/e/k;
.super Lb/b/e/l;


# instance fields
.field private synthetic a:Lb/b/e/b;


# direct methods
.method constructor <init>(Lb/b/e/b;Lb/a/o;)V
    .registers 3

    iput-object p1, p0, Lb/b/e/k;->a:Lb/b/e/b;

    invoke-direct {p0, p1, p2}, Lb/b/e/l;-><init>(Lb/b/e/b;Lb/a/o;)V

    return-void
.end method


# virtual methods
.method final a(Lb/a/ac;)Lb/a/ad;
    .registers 2

    iget-object p1, p1, Lb/a/ac;->r:Lb/a/ad;

    return-object p1
.end method

.method final synthetic a(Lb/a/o;Lb/b/e/o;I)Ljava/lang/Comparable;
    .registers 4

    invoke-virtual {p1}, Lb/a/o;->m()Lb/a/a;

    move-result-object p1

    invoke-virtual {p2, p1}, Lb/b/e/o;->a(Lb/a/a;)Lb/a/a;

    move-result-object p1

    return-object p1
.end method

.method final a(ILb/b/e/o;II)V
    .registers 5

    iget-object p3, p0, Lb/b/e/k;->a:Lb/b/e/b;

    invoke-static {p3}, Lb/b/e/b;->g(Lb/b/e/b;)Lb/a/o;

    move-result-object p3

    invoke-virtual {p3}, Lb/a/o;->b()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lb/b/e/o;->b(II)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Comparable;)V
    .registers 3

    check-cast p1, Lb/a/a;

    iget-object v0, p0, Lb/b/e/k;->a:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->g(Lb/b/e/b;)Lb/a/o;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/a;->a(Lb/a/o;)V

    return-void
.end method
