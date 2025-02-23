.class public final Lb/b/a/d/o;
.super Lb/b/a/d/n;

# interfaces
.implements Lb/b/a/d/g;


# instance fields
.field private final a:Lb/b/f/d/a;


# direct methods
.method public constructor <init>(Lb/b/f/c/ae;ILb/b/f/c/aa;Lb/b/a/d/b;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lb/b/a/d/n;-><init>(Lb/b/f/c/ae;ILb/b/f/c/aa;Lb/b/a/d/b;)V

    invoke-virtual {p0}, Lb/b/a/d/o;->e()Lb/b/f/c/ad;

    move-result-object p4

    invoke-virtual {p4}, Lb/b/f/c/ad;->j()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lb/b/f/c/ae;->i()Lb/b/f/d/c;

    move-result-object p1

    invoke-static {p2}, La/a/a;->i(I)Z

    move-result p2

    invoke-virtual {p3}, Lb/b/f/c/aa;->d()Z

    move-result p3

    invoke-static {p4, p1, p2, p3}, Lb/b/f/d/a;->a(Ljava/lang/String;Lb/b/f/d/c;ZZ)Lb/b/f/d/a;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/d/o;->a:Lb/b/f/d/a;

    return-void
.end method


# virtual methods
.method public final i()Lb/b/f/d/a;
    .registers 2

    iget-object v0, p0, Lb/b/a/d/o;->a:Lb/b/f/d/a;

    return-object v0
.end method
