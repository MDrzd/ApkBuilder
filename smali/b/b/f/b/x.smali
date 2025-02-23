.class public final Lb/b/f/b/x;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Lb/b/f/d/c;

.field private final c:Lb/b/f/d/e;

.field private final d:Lb/b/f/d/e;

.field private final e:I

.field private final f:Z

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILb/b/f/d/c;Lb/b/f/d/e;ILjava/lang/String;)V
    .registers 14

    sget-object v4, Lb/b/f/d/b;->a:Lb/b/f/d/b;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lb/b/f/b/x;-><init>(ILb/b/f/d/c;Lb/b/f/d/e;Lb/b/f/d/e;IZLjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(ILb/b/f/d/c;Lb/b/f/d/e;Lb/b/f/d/e;IZLjava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    if-lez p5, :cond_2

    const/4 v0, 0x6

    if-gt p5, v0, :cond_2

    invoke-interface {p4}, Lb/b/f/d/e;->a_()I

    move-result v1

    if-eqz v1, :cond_1

    if-ne p5, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "exceptions / branchingness mismatch"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lb/b/f/b/x;->a:I

    iput-object p2, p0, Lb/b/f/b/x;->b:Lb/b/f/d/c;

    iput-object p3, p0, Lb/b/f/b/x;->c:Lb/b/f/d/e;

    iput-object p4, p0, Lb/b/f/b/x;->d:Lb/b/f/d/e;

    iput p5, p0, Lb/b/f/b/x;->e:I

    iput-boolean p6, p0, Lb/b/f/b/x;->f:Z

    iput-object p7, p0, Lb/b/f/b/x;->g:Ljava/lang/String;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "invalid branchingness: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "exceptions == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sources == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "result == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(ILb/b/f/d/c;Lb/b/f/d/e;Lb/b/f/d/e;Ljava/lang/String;)V
    .registers 14

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lb/b/f/b/x;-><init>(ILb/b/f/d/c;Lb/b/f/d/e;Lb/b/f/d/e;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILb/b/f/d/c;Lb/b/f/d/e;Ljava/lang/String;)V
    .registers 13

    sget-object v4, Lb/b/f/d/b;->a:Lb/b/f/d/b;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lb/b/f/b/x;-><init>(ILb/b/f/d/c;Lb/b/f/d/e;Lb/b/f/d/e;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILb/b/f/d/e;Lb/b/f/d/e;)V
    .registers 12

    sget-object v2, Lb/b/f/d/c;->i:Lb/b/f/d/c;

    const/4 v5, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lb/b/f/b/x;-><init>(ILb/b/f/d/c;Lb/b/f/d/e;Lb/b/f/d/e;IZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/b/f/b/x;->a:I

    return v0
.end method

.method public final b()Lb/b/f/d/c;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/x;->b:Lb/b/f/d/c;

    return-object v0
.end method

.method public final c()Lb/b/f/d/e;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/x;->c:Lb/b/f/d/e;

    return-object v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lb/b/f/b/x;->e:I

    return v0
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lb/b/f/b/x;->f:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lb/b/f/b/x;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lb/b/f/b/x;

    iget v1, p0, Lb/b/f/b/x;->a:I

    iget v3, p1, Lb/b/f/b/x;->a:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lb/b/f/b/x;->e:I

    iget v3, p1, Lb/b/f/b/x;->e:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lb/b/f/b/x;->b:Lb/b/f/d/c;

    iget-object v3, p1, Lb/b/f/b/x;->b:Lb/b/f/d/c;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lb/b/f/b/x;->c:Lb/b/f/d/e;

    iget-object v3, p1, Lb/b/f/b/x;->c:Lb/b/f/d/e;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb/b/f/b/x;->d:Lb/b/f/d/e;

    iget-object p1, p1, Lb/b/f/b/x;->d:Lb/b/f/d/e;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f()Z
    .registers 3

    iget v0, p0, Lb/b/f/b/x;->a:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/x;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/f/b/x;->g:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lb/b/f/b/x;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .registers 2

    iget-object v0, p0, Lb/b/f/b/x;->d:Lb/b/f/d/e;

    invoke-interface {v0}, Lb/b/f/d/e;->a_()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lb/b/f/b/x;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lb/b/f/b/x;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/b/f/b/x;->b:Lb/b/f/d/c;

    invoke-virtual {v1}, Lb/b/f/d/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/b/f/b/x;->c:Lb/b/f/d/e;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/b/f/b/x;->d:Lb/b/f/d/e;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Rop{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/b/f/b/x;->a:I

    invoke-static {v1}, La/a/a;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/f/b/x;->b:Lb/b/f/d/c;

    sget-object v2, Lb/b/f/d/c;->i:Lb/b/f/d/c;

    if-eq v1, v2, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/f/b/x;->b:Lb/b/f/d/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, " ."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, " <-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/f/b/x;->c:Lb/b/f/d/e;

    invoke-interface {v1}, Lb/b/f/d/e;->a_()I

    move-result v1

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, " ."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lb/b/f/b/x;->c:Lb/b/f/d/e;

    invoke-interface {v5, v4}, Lb/b/f/d/e;->a(I)Lb/b/f/d/c;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-boolean v1, p0, Lb/b/f/b/x;->f:Z

    if-eqz v1, :cond_3

    const-string v1, " call"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lb/b/f/b/x;->d:Lb/b/f/d/e;

    invoke-interface {v1}, Lb/b/f/d/e;->a_()I

    move-result v1

    if-eqz v1, :cond_5

    const-string v4, " throws"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    if-ge v3, v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lb/b/f/b/x;->d:Lb/b/f/d/e;

    invoke-interface {v4, v3}, Lb/b/f/d/e;->a(I)Lb/b/f/d/c;

    move-result-object v4

    sget-object v5, Lb/b/f/d/c;->t:Lb/b/f/d/c;

    if-ne v4, v5, :cond_4

    const-string v4, "<any>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lb/b/f/b/x;->d:Lb/b/f/d/e;

    invoke-interface {v4, v3}, Lb/b/f/d/e;->a(I)Lb/b/f/d/c;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    iget v1, p0, Lb/b/f/b/x;->e:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lb/b/f/b/x;->e:I

    invoke-static {v2}, La/a/a;->r(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :pswitch_0
    const-string v1, " switches"

    goto :goto_5

    :pswitch_1
    const-string v1, " ifs"

    goto :goto_5

    :pswitch_2
    const-string v1, " gotos"

    goto :goto_5

    :pswitch_3
    const-string v1, " returns"

    goto :goto_5

    :pswitch_4
    const-string v1, " flows"

    goto :goto_5

    :cond_6
    :goto_6
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
