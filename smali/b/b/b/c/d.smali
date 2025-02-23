.class public final Lb/b/b/c/d;
.super Lb/b/b/c/b;


# direct methods
.method private constructor <init>([BLjava/io/PrintStream;Ljava/lang/String;Lb/b/b/c/a;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lb/b/b/c/b;-><init>([BLjava/io/PrintStream;Ljava/lang/String;Lb/b/b/c/a;)V

    return-void
.end method

.method public static a([BLjava/io/PrintStream;Ljava/lang/String;Lb/b/b/c/a;)V
    .registers 6

    new-instance v0, Lb/b/b/c/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lb/b/b/c/d;-><init>([BLjava/io/PrintStream;Ljava/lang/String;Lb/b/b/c/a;)V

    invoke-virtual {v0}, Lb/b/b/c/d;->b()[B

    move-result-object p0

    new-instance p1, Lb/b/h/c;

    invoke-direct {p1, p0}, Lb/b/h/c;-><init>([B)V

    new-instance p2, Lb/b/a/c/k;

    invoke-virtual {v0}, Lb/b/b/c/d;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0}, Lb/b/b/c/d;->d()Z

    move-result v1

    invoke-direct {p2, p1, p3, v1}, Lb/b/a/c/k;-><init>(Lb/b/h/c;Ljava/lang/String;Z)V

    sget-object p3, Lb/b/a/c/p;->a:Lb/b/a/c/p;

    invoke-virtual {p2, p3}, Lb/b/a/c/k;->a(Lb/b/a/c/b;)V

    invoke-virtual {p2, v0}, Lb/b/a/c/k;->a(Lb/b/a/d/j;)V

    invoke-virtual {p2}, Lb/b/a/c/k;->c()I

    invoke-virtual {v0}, Lb/b/b/c/d;->a()I

    move-result p2

    array-length p3, p0

    if-eq p2, p3, :cond_0

    array-length p0, p0

    sub-int/2addr p0, p2

    const-string p3, "<extra data at end of file>"

    invoke-virtual {v0, p1, p2, p0, p3}, Lb/b/b/c/d;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_0
    return-void
.end method
