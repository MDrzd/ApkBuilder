.class public final Lb/b/c/b/c;
.super Lb/b/h/h;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Lb/b/c/b/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lb/b/c/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/b/c/b/c;-><init>(I)V

    sput-object v0, Lb/b/c/b/c;->a:Lb/b/c/b/c;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/h/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lb/b/c/b/c;)I
    .registers 9

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lb/b/c/b/c;->a_()I

    move-result v1

    invoke-virtual {p1}, Lb/b/c/b/c;->a_()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {p0, v4}, Lb/b/c/b/c;->a(I)Lb/b/c/b/d;

    move-result-object v5

    invoke-virtual {p1, v4}, Lb/b/c/b/c;->a(I)Lb/b/c/b/d;

    move-result-object v6

    invoke-virtual {v5, v6}, Lb/b/c/b/d;->a(Lb/b/c/b/d;)I

    move-result v5

    if-eqz v5, :cond_1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ge v1, v2, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    if-le v1, v2, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v0
.end method

.method public final a(I)Lb/b/c/b/d;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/c/b/c;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/c/b/d;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lb/b/c/b/c;->a_()I

    move-result v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "catch "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_2

    invoke-virtual {p0, p2}, Lb/b/c/b/c;->a(I)Lb/b/c/b/d;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v3, ",\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v1, -0x1

    if-ne p2, v3, :cond_1

    invoke-virtual {p0}, Lb/b/c/b/c;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "<any>"

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lb/b/c/b/d;->a()Lb/b/f/c/ae;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/c/ae;->h()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lb/b/c/b/d;->b()I

    move-result v2

    invoke-static {v2}, La/a/a;->q(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILb/b/f/c/ae;I)V
    .registers 5

    new-instance v0, Lb/b/c/b/d;

    invoke-direct {v0, p2, p3}, Lb/b/c/b/d;-><init>(Lb/b/f/c/ae;I)V

    invoke-virtual {p0, p1, v0}, Lb/b/c/b/c;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lb/b/c/b/c;

    invoke-virtual {p0, p1}, Lb/b/c/b/c;->a(Lb/b/c/b/c;)I

    move-result p1

    return p1
.end method

.method public final f()Z
    .registers 3

    invoke-virtual {p0}, Lb/b/c/b/c;->a_()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lb/b/c/b/c;->a(I)Lb/b/c/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/c/b/d;->a()Lb/b/f/c/ae;

    move-result-object v0

    sget-object v1, Lb/b/f/c/ae;->a:Lb/b/f/c/ae;

    invoke-virtual {v0, v1}, Lb/b/f/c/ae;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lb/b/c/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
