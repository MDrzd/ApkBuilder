.class final Lb/b/e/c;
.super Lb/b/e/l;


# instance fields
.field private synthetic a:Lb/b/e/b;


# direct methods
.method constructor <init>(Lb/b/e/b;Lb/a/o;)V
    .registers 3

    iput-object p1, p0, Lb/b/e/c;->a:Lb/b/e/b;

    invoke-direct {p0, p1, p2}, Lb/b/e/l;-><init>(Lb/b/e/b;Lb/a/o;)V

    return-void
.end method


# virtual methods
.method final a(Lb/a/ac;)Lb/a/ad;
    .registers 2

    iget-object p1, p1, Lb/a/ac;->b:Lb/a/ad;

    return-object p1
.end method

.method final synthetic a(Lb/a/o;Lb/b/e/o;I)Ljava/lang/Comparable;
    .registers 4

    invoke-virtual {p1}, Lb/a/o;->g()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final a(ILb/b/e/o;II)V
    .registers 5

    iget-object p1, p2, Lb/b/e/o;->a:[I

    aput p4, p1, p3

    return-void
.end method

.method final synthetic a(Ljava/lang/Comparable;)V
    .registers 4

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lb/b/e/c;->a:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->c(Lb/b/e/b;)Lb/a/ac;

    move-result-object v0

    iget-object v0, v0, Lb/a/ac;->p:Lb/a/ad;

    iget v1, v0, Lb/a/ad;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lb/a/ad;->b:I

    iget-object v0, p0, Lb/b/e/c;->a:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->e(Lb/b/e/b;)Lb/a/o;

    move-result-object v0

    iget-object v1, p0, Lb/b/e/c;->a:Lb/b/e/b;

    invoke-static {v1}, Lb/b/e/b;->d(Lb/b/e/b;)Lb/a/o;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/o;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/o;->f(I)V

    iget-object v0, p0, Lb/b/e/c;->a:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->d(Lb/b/e/b;)Lb/a/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/o;->a(Ljava/lang/String;)V

    return-void
.end method
