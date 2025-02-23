.class public final Lb/b/c/b/a;
.super Lb/b/c/b/ak;


# instance fields
.field private final a:Lb/b/c/b/g;

.field private final b:Ljava/util/ArrayList;

.field private final c:Lb/b/f/c/a;

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Lb/b/f/b/z;Lb/b/c/b/g;Ljava/util/ArrayList;Lb/b/f/c/a;)V
    .registers 6

    sget-object v0, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    invoke-direct {p0, p1, v0}, Lb/b/c/b/ak;-><init>(Lb/b/f/b/z;Lb/b/f/b/u;)V

    if-eqz p2, :cond_a

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_8

    iput-object p4, p0, Lb/b/c/b/a;->c:Lb/b/f/c/a;

    sget-object p1, Lb/b/f/c/ae;->c:Lb/b/f/c/ae;

    if-eq p4, p1, :cond_7

    sget-object p1, Lb/b/f/c/ae;->b:Lb/b/f/c/ae;

    if-ne p4, p1, :cond_0

    goto :goto_3

    :cond_0
    sget-object p1, Lb/b/f/c/ae;->i:Lb/b/f/c/ae;

    if-eq p4, p1, :cond_6

    sget-object p1, Lb/b/f/c/ae;->d:Lb/b/f/c/ae;

    if-ne p4, p1, :cond_1

    goto :goto_2

    :cond_1
    sget-object p1, Lb/b/f/c/ae;->h:Lb/b/f/c/ae;

    if-eq p4, p1, :cond_5

    sget-object p1, Lb/b/f/c/ae;->f:Lb/b/f/c/ae;

    if-ne p4, p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Lb/b/f/c/ae;->g:Lb/b/f/c/ae;

    if-eq p4, p1, :cond_4

    sget-object p1, Lb/b/f/c/ae;->e:Lb/b/f/c/ae;

    if-ne p4, p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected constant type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    const/16 p1, 0x8

    goto :goto_4

    :cond_5
    :goto_1
    const/4 p1, 0x4

    goto :goto_4

    :cond_6
    :goto_2
    const/4 p1, 0x2

    goto :goto_4

    :cond_7
    :goto_3
    const/4 p1, 0x1

    :goto_4
    iput p1, p0, Lb/b/c/b/a;->d:I

    iput-object p2, p0, Lb/b/c/b/a;->a:Lb/b/c/b/g;

    iput-object p3, p0, Lb/b/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lb/b/c/b/a;->e:I

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal number of init values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "values == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "user == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget v0, p0, Lb/b/c/b/a;->e:I

    iget v1, p0, Lb/b/c/b/a;->d:I

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public final a(Lb/b/f/b/u;)Lb/b/c/b/k;
    .registers 6

    new-instance p1, Lb/b/c/b/a;

    invoke-virtual {p0}, Lb/b/c/b/a;->j()Lb/b/f/b/z;

    move-result-object v0

    iget-object v1, p0, Lb/b/c/b/a;->a:Lb/b/c/b/g;

    iget-object v2, p0, Lb/b/c/b/a;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lb/b/c/b/a;->c:Lb/b/f/c/a;

    invoke-direct {p1, v0, v1, v2, v3}, Lb/b/c/b/a;-><init>(Lb/b/f/b/z;Lb/b/c/b/g;Ljava/util/ArrayList;Lb/b/f/c/a;)V

    return-object p1
.end method

.method protected final a(Z)Ljava/lang/String;
    .registers 5

    iget-object p1, p0, Lb/b/c/b/a;->a:Lb/b/c/b/g;

    invoke-virtual {p1}, Lb/b/c/b/g;->h()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lb/b/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "fill-array-data-payload // for fill-array-data @ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_0

    const-string v2, "\n  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/b/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/c/a;

    invoke-virtual {v2}, Lb/b/f/c/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/h/r;)V
    .registers 8

    iget-object v0, p0, Lb/b/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x300

    invoke-interface {p1, v1}, Lb/b/h/r;->b(I)V

    iget v1, p0, Lb/b/c/b/a;->d:I

    invoke-interface {p1, v1}, Lb/b/h/r;->b(I)V

    iget v1, p0, Lb/b/c/b/a;->e:I

    invoke-interface {p1, v1}, Lb/b/h/r;->c(I)V

    iget v1, p0, Lb/b/c/b/a;->d:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lb/b/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/c/a;

    check-cast v2, Lb/b/f/c/t;

    invoke-virtual {v2}, Lb/b/f/c/t;->j()I

    move-result v2

    int-to-short v2, v2

    invoke-interface {p1, v2}, Lb/b/h/r;->b(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lb/b/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/c/a;

    check-cast v2, Lb/b/f/c/t;

    invoke-virtual {v2}, Lb/b/f/c/t;->j()I

    move-result v2

    int-to-byte v2, v2

    invoke-interface {p1, v2}, Lb/b/h/r;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lb/b/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/c/a;

    check-cast v2, Lb/b/f/c/u;

    invoke-virtual {v2}, Lb/b/f/c/u;->k()J

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Lb/b/h/r;->a(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lb/b/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/c/a;

    check-cast v2, Lb/b/f/c/t;

    invoke-virtual {v2}, Lb/b/f/c/t;->j()I

    move-result v2

    invoke-interface {p1, v2}, Lb/b/h/r;->c(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    :goto_4
    iget v1, p0, Lb/b/c/b/a;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    invoke-interface {p1, v3}, Lb/b/h/r;->d(I)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final b()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lb/b/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const-string v3, "\n    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/b/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/f/c/a;

    invoke-virtual {v3}, Lb/b/f/c/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
