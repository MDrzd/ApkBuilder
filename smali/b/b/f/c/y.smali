.class public final Lb/b/f/c/y;
.super Lb/b/f/c/ag;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:Lb/b/f/c/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "static-put"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "static-get"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "instance-put"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "instance-get"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "invoke-static"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "invoke-instance"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "invoke-constructor"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "invoke-direct"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "invoke-interface"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lb/b/f/c/y;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILb/b/f/c/a;)V
    .registers 3

    invoke-direct {p0}, Lb/b/f/c/ag;-><init>()V

    iput p1, p0, Lb/b/f/c/y;->b:I

    iput-object p2, p0, Lb/b/f/c/y;->c:Lb/b/f/c/a;

    return-void
.end method

.method public static a(ILb/b/f/c/a;)Lb/b/f/c/y;
    .registers 4

    invoke-static {p0}, Lb/b/f/c/y;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lb/b/f/c/n;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ref has wrong type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0}, Lb/b/f/c/y;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lb/b/f/c/f;

    if-eqz v0, :cond_2

    :goto_0
    new-instance v0, Lb/b/f/c/y;

    invoke-direct {v0, p0, p1}, Lb/b/f/c/y;-><init>(ILb/b/f/c/a;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ref has wrong type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type is out of range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Lb/b/f/c/y;->a:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method private static b(I)Z
    .registers 1

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static c(I)Z
    .registers 1

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Lb/b/f/d/c;
    .registers 2

    sget-object v0, Lb/b/f/d/c;->n:Lb/b/f/d/c;

    return-object v0
.end method

.method protected final b(Lb/b/f/c/a;)I
    .registers 4

    check-cast p1, Lb/b/f/c/y;

    iget v0, p0, Lb/b/f/c/y;->b:I

    iget v1, p1, Lb/b/f/c/y;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/b/f/c/y;->c:Lb/b/f/c/a;

    iget-object p1, p1, Lb/b/f/c/y;->c:Lb/b/f/c/a;

    invoke-virtual {v0, p1}, Lb/b/f/c/a;->a(Lb/b/f/c/a;)I

    move-result p1

    return p1

    :cond_0
    iget v0, p0, Lb/b/f/c/y;->b:I

    iget p1, p1, Lb/b/f/c/y;->b:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public final f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    const-string v0, "method handle"

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lb/b/f/c/y;->b:I

    sget-object v2, Lb/b/f/c/y;->a:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/f/c/y;->c:Lb/b/f/c/a;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lb/b/f/c/a;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/y;->c:Lb/b/f/c/a;

    return-object v0
.end method

.method public final j()I
    .registers 2

    iget v0, p0, Lb/b/f/c/y;->b:I

    return v0
.end method

.method public final k()Z
    .registers 2

    iget v0, p0, Lb/b/f/c/y;->b:I

    invoke-static {v0}, Lb/b/f/c/y;->b(I)Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .registers 2

    iget v0, p0, Lb/b/f/c/y;->b:I

    invoke-static {v0}, Lb/b/f/c/y;->c(I)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "method-handle{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/b/f/c/y;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
