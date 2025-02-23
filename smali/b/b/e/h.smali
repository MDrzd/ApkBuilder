.class final Lb/b/e/h;
.super Lb/b/e/l;


# instance fields
.field private synthetic a:Lb/b/e/b;


# direct methods
.method constructor <init>(Lb/b/e/b;Lb/a/o;)V
    .registers 3

    iput-object p1, p0, Lb/b/e/h;->a:Lb/b/e/b;

    invoke-direct {p0, p1, p2}, Lb/b/e/l;-><init>(Lb/b/e/b;Lb/a/o;)V

    return-void
.end method


# virtual methods
.method final a(Lb/a/ac;)Lb/a/ad;
    .registers 2

    iget-object p1, p1, Lb/a/ac;->i:Lb/a/ad;

    return-object p1
.end method

.method final synthetic a(Lb/a/o;Lb/b/e/o;I)Ljava/lang/Comparable;
    .registers 4

    invoke-virtual {p1}, Lb/a/o;->l()Lb/a/x;

    move-result-object p1

    invoke-virtual {p2, p1}, Lb/b/e/o;->a(Lb/a/x;)Lb/a/x;

    move-result-object p1

    return-object p1
.end method

.method final a(ILb/b/e/o;II)V
    .registers 5

    iget-object p1, p2, Lb/b/e/o;->g:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object p2, p2, Lb/b/e/o;->g:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final synthetic a(Ljava/lang/Comparable;)V
    .registers 3

    check-cast p1, Lb/a/x;

    iget-object v0, p0, Lb/b/e/h;->a:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->e(Lb/b/e/b;)Lb/a/o;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/x;->a(Lb/a/o;)V

    return-void
.end method
