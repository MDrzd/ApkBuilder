.class public final Lb/b/f/b/r;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/f/d/d;
.implements Lb/b/h/s;
.implements Ljava/lang/Comparable;


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final b:Ljava/lang/ThreadLocal;


# instance fields
.field private final c:I

.field private final d:Lb/b/f/d/d;

.field private final e:Lb/b/f/b/n;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x2710

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    sput-object v0, Lb/b/f/b/r;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lb/b/f/b/s;

    invoke-direct {v0}, Lb/b/f/b/s;-><init>()V

    sput-object v0, Lb/b/f/b/r;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(ILb/b/f/d/d;Lb/b/f/b/n;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    iput p1, p0, Lb/b/f/b/r;->c:I

    iput-object p2, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    iput-object p3, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "reg < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(ILb/b/f/d/d;Lb/b/f/b/n;B)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lb/b/f/b/r;-><init>(ILb/b/f/d/d;Lb/b/f/b/n;)V

    return-void
.end method

.method public static a(ILb/b/f/d/d;)Lb/b/f/b/r;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lb/b/f/b/r;->d(ILb/b/f/d/d;Lb/b/f/b/n;)Lb/b/f/b/r;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILb/b/f/d/d;Lb/b/f/b/n;)Lb/b/f/b/r;
    .registers 3

    if-eqz p2, :cond_0

    invoke-static {p0, p1, p2}, Lb/b/f/b/r;->d(ILb/b/f/d/d;Lb/b/f/b/n;)Lb/b/f/b/r;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "local  == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Z)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lb/b/f/b/r;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    invoke-virtual {v1}, Lb/b/f/b/n;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    invoke-interface {v1}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    if-eq v1, v2, :cond_3

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    instance-of v1, v1, Lb/b/f/c/ad;

    if-eqz v1, :cond_1

    iget-object p1, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    check-cast p1, Lb/b/f/c/ad;

    invoke-virtual {p1}, Lb/b/f/c/ad;->i()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    instance-of p1, p1, Lb/b/f/c/a;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    invoke-interface {p1}, Lb/b/f/d/d;->h()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lb/b/f/b/r;ILb/b/f/d/d;Lb/b/f/b/n;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lb/b/f/b/r;->e(ILb/b/f/d/d;Lb/b/f/b/n;)Z

    move-result p0

    return p0
.end method

.method public static b(ILb/b/f/d/d;Lb/b/f/b/n;)Lb/b/f/b/r;
    .registers 3

    invoke-static {p0, p1, p2}, Lb/b/f/b/r;->d(ILb/b/f/d/d;Lb/b/f/b/n;)Lb/b/f/b/r;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(ILb/b/f/d/d;Lb/b/f/b/n;)I
    .registers 3

    invoke-static {p0, p1, p2}, Lb/b/f/b/r;->f(ILb/b/f/d/d;Lb/b/f/b/n;)I

    move-result p0

    return p0
.end method

.method private static d(ILb/b/f/d/d;Lb/b/f/b/n;)Lb/b/f/b/r;
    .registers 4

    sget-object v0, Lb/b/f/b/r;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/f/b/t;

    invoke-virtual {v0, p0, p1, p2}, Lb/b/f/b/t;->a(ILb/b/f/d/d;Lb/b/f/b/n;)V

    sget-object p0, Lb/b/f/b/r;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/b/f/b/r;

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lb/b/f/b/t;->a()Lb/b/f/b/r;

    move-result-object p0

    sget-object p1, Lb/b/f/b/r;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/f/b/r;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method private e(ILb/b/f/d/d;Lb/b/f/b/n;)Z
    .registers 5

    iget v0, p0, Lb/b/f/b/r;->c:I

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    invoke-virtual {p1, p3}, Lb/b/f/b/n;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static f(ILb/b/f/d/d;Lb/b/f/b/n;)I
    .registers 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lb/b/f/b/n;->hashCode()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    mul-int/lit8 p2, p2, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x1f

    add-int/2addr p2, p0

    return p2
.end method


# virtual methods
.method public final a(I)Lb/b/f/b/r;
    .registers 4

    iget v0, p0, Lb/b/f/b/r;->c:I

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    iget-object v1, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    invoke-static {p1, v0, v1}, Lb/b/f/b/r;->d(ILb/b/f/d/d;Lb/b/f/b/n;)Lb/b/f/b/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/f/b/n;)Lb/b/f/b/r;
    .registers 4

    iget-object v0, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    invoke-virtual {v0, p1}, Lb/b/f/b/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lb/b/f/b/r;->c:I

    iget-object v1, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    invoke-static {v0, v1, p1}, Lb/b/f/b/r;->d(ILb/b/f/d/d;Lb/b/f/b/n;)Lb/b/f/b/r;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final a(Lb/b/f/b/r;Z)Lb/b/f/b/r;
    .registers 7

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget v1, p0, Lb/b/f/b/r;->c:I

    iget v2, p1, Lb/b/f/b/r;->c:I

    if-eq v1, v2, :cond_1

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    iget-object v2, p1, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    invoke-virtual {v1, v2}, Lb/b/f/b/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    goto :goto_1

    :cond_3
    :goto_0
    move-object v1, v0

    :goto_1
    iget-object v2, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    if-ne v1, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz p2, :cond_5

    if-nez v2, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object p2

    invoke-virtual {p1}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object v3

    if-eq p2, v3, :cond_6

    return-object v0

    :cond_6
    iget-object v3, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    iget-object p1, p1, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p2, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    :cond_7
    iget-object p1, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    if-ne p2, p1, :cond_8

    if-eqz v2, :cond_8

    return-object p0

    :cond_8
    if-nez v1, :cond_9

    iget p1, p0, Lb/b/f/b/r;->c:I

    invoke-static {p1, p2, v0}, Lb/b/f/b/r;->d(ILb/b/f/d/d;Lb/b/f/b/n;)Lb/b/f/b/r;

    move-result-object p1

    return-object p1

    :cond_9
    iget p1, p0, Lb/b/f/b/r;->c:I

    invoke-static {p1, p2, v1}, Lb/b/f/b/r;->a(ILb/b/f/d/d;Lb/b/f/b/n;)Lb/b/f/b/r;

    move-result-object p1

    return-object p1

    :cond_a
    :goto_3
    return-object v0
.end method

.method public final a(Lb/b/f/d/d;)Lb/b/f/b/r;
    .registers 4

    iget v0, p0, Lb/b/f/b/r;->c:I

    iget-object v1, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    invoke-static {v0, p1, v1}, Lb/b/f/b/r;->d(ILb/b/f/d/d;Lb/b/f/b/n;)Lb/b/f/b/r;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lb/b/f/d/c;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    invoke-interface {v0}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lb/b/f/b/r;)Z
    .registers 4

    invoke-virtual {p0, p1}, Lb/b/f/b/r;->b(Lb/b/f/b/r;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lb/b/f/b/r;->c:I

    iget p1, p1, Lb/b/f/b/r;->c:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final b(I)Lb/b/f/b/r;
    .registers 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lb/b/f/b/r;->c:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lb/b/f/b/r;->a(I)Lb/b/f/b/r;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lb/b/f/d/d;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    invoke-interface {v0}, Lb/b/f/d/d;->b()Lb/b/f/d/d;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lb/b/f/b/r;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    invoke-interface {v1}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object v1

    iget-object v2, p1, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    invoke-interface {v2}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/b/f/d/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    iget-object v2, p1, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    iget-object p1, p1, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    invoke-virtual {v1, p1}, Lb/b/f/b/n;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    invoke-interface {v0}, Lb/b/f/d/d;->c()I

    move-result v0

    return v0
.end method

.method public final c(Lb/b/f/b/r;)I
    .registers 7

    iget v0, p0, Lb/b/f/b/r;->c:I

    iget v1, p1, Lb/b/f/b/r;->c:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lb/b/f/b/r;->c:I

    iget v1, p1, Lb/b/f/b/r;->c:I

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x0

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    invoke-interface {v1}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object v1

    iget-object v4, p1, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    invoke-interface {v4}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object v4

    invoke-virtual {v1, v4}, Lb/b/f/d/c;->a(Lb/b/f/d/c;)I

    move-result v1

    if-eqz v1, :cond_3

    return v1

    :cond_3
    iget-object v1, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    if-nez v1, :cond_5

    iget-object p1, p1, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    if-nez p1, :cond_4

    return v0

    :cond_4
    return v2

    :cond_5
    iget-object v0, p1, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    if-nez v0, :cond_6

    return v3

    :cond_6
    iget-object v0, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    iget-object p1, p1, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    invoke-virtual {v0, p1}, Lb/b/f/b/n;->a(Lb/b/f/b/n;)I

    move-result p1

    return p1
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lb/b/f/b/r;

    invoke-virtual {p0, p1}, Lb/b/f/b/r;->c(Lb/b/f/b/r;)I

    move-result p1

    return p1
.end method

.method public final d()I
    .registers 2

    iget-object v0, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    invoke-interface {v0}, Lb/b/f/d/d;->d()I

    move-result v0

    return v0
.end method

.method public final e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lb/b/f/b/r;

    if-nez v0, :cond_2

    instance-of v0, p1, Lb/b/f/b/t;

    if-eqz v0, :cond_1

    check-cast p1, Lb/b/f/b/t;

    invoke-static {p1}, Lb/b/f/b/t;->a(Lb/b/f/b/t;)I

    move-result v0

    invoke-static {p1}, Lb/b/f/b/t;->b(Lb/b/f/b/t;)Lb/b/f/d/d;

    move-result-object v1

    invoke-static {p1}, Lb/b/f/b/t;->c(Lb/b/f/b/t;)Lb/b/f/b/n;

    move-result-object p1

    :goto_0
    invoke-direct {p0, v0, v1, p1}, Lb/b/f/b/r;->e(ILb/b/f/d/d;Lb/b/f/b/n;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    check-cast p1, Lb/b/f/b/r;

    iget v0, p1, Lb/b/f/b/r;->c:I

    iget-object v1, p1, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    iget-object p1, p1, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    goto :goto_0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lb/b/f/b/r;->c:I

    return v0
.end method

.method public final g()Lb/b/f/d/d;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lb/b/f/b/r;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    iget v0, p0, Lb/b/f/b/r;->c:I

    iget-object v1, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    iget-object v2, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    invoke-static {v0, v1, v2}, Lb/b/f/b/r;->f(ILb/b/f/d/d;Lb/b/f/b/n;)I

    move-result v0

    return v0
.end method

.method public final i()Lb/b/f/b/n;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    return-object v0
.end method

.method public final j()I
    .registers 3

    iget v0, p0, Lb/b/f/b/r;->c:I

    invoke-virtual {p0}, Lb/b/f/b/r;->k()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final k()I
    .registers 2

    iget-object v0, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    invoke-interface {v0}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/d/c;->i()I

    move-result v0

    return v0
.end method

.method public final l()Z
    .registers 2

    iget-object v0, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    invoke-interface {v0}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/d/c;->k()Z

    move-result v0

    return v0
.end method

.method public final m()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lb/b/f/b/r;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lb/b/f/b/r;
    .registers 4

    iget-object v0, p0, Lb/b/f/b/r;->d:Lb/b/f/d/d;

    instance-of v1, v0, Lb/b/f/d/c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lb/b/f/d/c;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lb/b/f/d/c;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lb/b/f/d/c;->q()Lb/b/f/d/c;

    move-result-object v1

    :cond_1
    if-ne v1, v0, :cond_2

    return-object p0

    :cond_2
    iget v0, p0, Lb/b/f/b/r;->c:I

    iget-object v2, p0, Lb/b/f/b/r;->e:Lb/b/f/b/n;

    invoke-static {v0, v1, v2}, Lb/b/f/b/r;->d(ILb/b/f/d/d;Lb/b/f/b/n;)Lb/b/f/b/r;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/b/f/b/r;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
