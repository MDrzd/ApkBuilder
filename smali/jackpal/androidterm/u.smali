.class public final Ljackpal/androidterm/u;
.super Ljackpal/androidterm/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljackpal/androidterm/a/q;Landroid/util/DisplayMetrics;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljackpal/androidterm/a/c;-><init>(Landroid/content/Context;Ljackpal/androidterm/a/q;Landroid/util/DisplayMetrics;)V

    return-void
.end method


# virtual methods
.method public final a(Ljackpal/androidterm/c/c;Lb/b/c/a/b;)V
    .registers 4

    new-instance p2, Lb/b/c/a/b;

    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->e()[I

    move-result-object v0

    invoke-direct {p2, v0}, Lb/b/c/a/b;-><init>([I)V

    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/u;->a(I)V

    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->p()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/u;->a(Z)V

    invoke-virtual {p0, p2}, Ljackpal/androidterm/u;->a(Lb/b/c/a/b;)V

    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->k()I

    move-result p2

    invoke-virtual {p0, p2}, Ljackpal/androidterm/u;->b(I)V

    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->h()Z

    move-result p2

    invoke-virtual {p0, p2}, Ljackpal/androidterm/u;->c(Z)V

    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->n()I

    move-result p2

    invoke-virtual {p0, p2}, Ljackpal/androidterm/u;->c(I)V

    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->o()I

    move-result p2

    invoke-virtual {p0, p2}, Ljackpal/androidterm/u;->d(I)V

    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->t()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljackpal/androidterm/u;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->i()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljackpal/androidterm/u;->d(Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljackpal/androidterm/u;->d()Ljackpal/androidterm/a/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
