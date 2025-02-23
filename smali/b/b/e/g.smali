.class final Lb/b/e/g;
.super Lb/b/e/l;


# instance fields
.field private synthetic a:Lb/b/e/b;


# direct methods
.method constructor <init>(Lb/b/e/b;Lb/a/o;)V
    .registers 3

    iput-object p1, p0, Lb/b/e/g;->a:Lb/b/e/b;

    invoke-direct {p0, p1, p2}, Lb/b/e/l;-><init>(Lb/b/e/b;Lb/a/o;)V

    return-void
.end method


# virtual methods
.method final a(Lb/a/ac;)Lb/a/ad;
    .registers 2

    iget-object p1, p1, Lb/a/ac;->h:Lb/a/ad;

    return-object p1
.end method

.method final synthetic a(Lb/a/o;Lb/b/e/o;I)Ljava/lang/Comparable;
    .registers 4

    invoke-virtual {p1}, Lb/a/o;->k()Lb/a/b;

    move-result-object p1

    invoke-virtual {p2, p1}, Lb/b/e/o;->a(Lb/a/b;)Lb/a/b;

    move-result-object p1

    return-object p1
.end method

.method final a(ILb/b/e/o;II)V
    .registers 5

    iget-object p1, p2, Lb/b/e/o;->f:[I

    aput p4, p1, p3

    return-void
.end method

.method final synthetic a(Ljava/lang/Comparable;)V
    .registers 3

    check-cast p1, Lb/a/b;

    iget-object v0, p0, Lb/b/e/g;->a:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->e(Lb/b/e/b;)Lb/a/o;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/b;->a(Lb/a/o;)V

    return-void
.end method
