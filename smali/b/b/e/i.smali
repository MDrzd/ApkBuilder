.class final Lb/b/e/i;
.super Lb/b/e/l;


# instance fields
.field private synthetic a:Lb/b/e/b;


# direct methods
.method constructor <init>(Lb/b/e/b;Lb/a/o;)V
    .registers 3

    iput-object p1, p0, Lb/b/e/i;->a:Lb/b/e/b;

    invoke-direct {p0, p1, p2}, Lb/b/e/l;-><init>(Lb/b/e/b;Lb/a/o;)V

    return-void
.end method


# virtual methods
.method final a(Lb/a/ac;)Lb/a/ad;
    .registers 2

    iget-object p1, p1, Lb/a/ac;->e:Lb/a/ad;

    return-object p1
.end method

.method final synthetic a(Lb/a/o;Lb/b/e/o;I)Ljava/lang/Comparable;
    .registers 4

    invoke-virtual {p1}, Lb/a/o;->h()Lb/a/w;

    move-result-object p1

    invoke-virtual {p2, p1}, Lb/b/e/o;->a(Lb/a/w;)Lb/a/w;

    move-result-object p1

    return-object p1
.end method

.method final a(ILb/b/e/o;II)V
    .registers 5

    if-ltz p4, :cond_0

    const p1, 0xffff

    if-gt p4, p1, :cond_0

    iget-object p1, p2, Lb/b/e/o;->d:[S

    int-to-short p2, p4

    aput-short p2, p1, p3

    return-void

    :cond_0
    new-instance p1, Lb/a/t;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "field ID not in [0, 0xffff]: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lb/a/t;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final synthetic a(Ljava/lang/Comparable;)V
    .registers 3

    check-cast p1, Lb/a/w;

    iget-object v0, p0, Lb/b/e/i;->a:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->e(Lb/b/e/b;)Lb/a/o;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/w;->a(Lb/a/o;)V

    return-void
.end method
