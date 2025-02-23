.class public final Lb/b/f/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentMap;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lb/b/f/d/c;

.field private final d:Lb/b/f/d/b;

.field private e:Lb/b/f/d/b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x2710

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    sput-object v0, Lb/b/f/d/a;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lb/b/f/d/c;Lb/b/f/d/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Lb/b/f/d/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lb/b/f/d/a;->c:Lb/b/f/d/c;

    iput-object p3, p0, Lb/b/f/d/a;->d:Lb/b/f/d/b;

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/f/d/a;->e:Lb/b/f/d/b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "parameterTypes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "returnType == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "descriptor == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lb/b/f/d/c;I)Lb/b/f/d/a;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const/16 v2, 0x49

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/b/f/d/c;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/b/f/d/a;->a(Ljava/lang/String;)Lb/b/f/d/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lb/b/f/d/a;
    .registers 2

    if-eqz p0, :cond_1

    sget-object v0, Lb/b/f/d/a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/f/d/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lb/b/f/d/a;->b(Ljava/lang/String;)Lb/b/f/d/a;

    move-result-object p0

    invoke-static {p0}, Lb/b/f/d/a;->b(Lb/b/f/d/a;)Lb/b/f/d/a;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Lb/b/f/d/c;ZZ)Lb/b/f/d/a;
    .registers 4

    invoke-static {p0}, Lb/b/f/d/a;->a(Ljava/lang/String;)Lb/b/f/d/a;

    move-result-object p0

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Lb/b/f/d/c;->a(I)Lb/b/f/d/c;

    move-result-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lb/b/f/d/a;->a(Lb/b/f/d/c;)Lb/b/f/d/a;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lb/b/f/d/a;)Lb/b/f/d/a;
    .registers 3

    sget-object v0, Lb/b/f/d/a;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lb/b/f/d/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/f/d/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lb/b/f/d/a;
    .registers 11

    sget-object v0, Lb/b/f/d/a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/f/d/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_b

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x29

    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0x41

    if-lt v6, v5, :cond_2

    const/16 v5, 0x5a

    if-gt v6, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_a

    sub-int/2addr v0, v2

    if-eq v3, v0, :cond_a

    add-int/2addr v3, v2

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_9

    new-array v0, v4, [Lb/b/f/d/c;

    const/4 v4, 0x1

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_5

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lb/b/f/d/c;->b(Ljava/lang/String;)Lb/b/f/d/c;

    move-result-object v2

    new-instance v3, Lb/b/f/d/b;

    invoke-direct {v3, v6}, Lb/b/f/d/b;-><init>(I)V

    :goto_3
    if-ge v1, v6, :cond_4

    aget-object v4, v0, v1

    invoke-virtual {v3, v1, v4}, Lb/b/f/d/b;->a(ILb/b/f/d/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    new-instance v0, Lb/b/f/d/a;

    invoke-direct {v0, p0, v2, v3}, Lb/b/f/d/a;-><init>(Ljava/lang/String;Lb/b/f/d/c;Lb/b/f/d/b;)V

    return-object v0

    :cond_5
    move v8, v4

    :goto_4
    const/16 v9, 0x5b

    if-ne v7, v9, :cond_6

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_4

    :cond_6
    const/16 v9, 0x4c

    if-ne v7, v9, :cond_8

    const/16 v7, 0x3b

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-eq v7, v3, :cond_7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad descriptor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    add-int/lit8 v8, v8, 0x1

    move v7, v8

    :goto_5
    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lb/b/f/d/c;->a(Ljava/lang/String;)Lb/b/f/d/c;

    move-result-object v4

    aput-object v4, v0, v6

    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_2

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad descriptor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad descriptor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad descriptor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lb/b/f/d/a;)I
    .registers 9

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lb/b/f/d/a;->c:Lb/b/f/d/c;

    iget-object v2, p1, Lb/b/f/d/a;->c:Lb/b/f/d/c;

    invoke-virtual {v1, v2}, Lb/b/f/d/c;->a(Lb/b/f/d/c;)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lb/b/f/d/a;->d:Lb/b/f/d/b;

    invoke-virtual {v1}, Lb/b/f/d/b;->a_()I

    move-result v1

    iget-object v2, p1, Lb/b/f/d/a;->d:Lb/b/f/d/b;

    invoke-virtual {v2}, Lb/b/f/d/b;->a_()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Lb/b/f/d/a;->d:Lb/b/f/d/b;

    invoke-virtual {v5, v4}, Lb/b/f/d/b;->b(I)Lb/b/f/d/c;

    move-result-object v5

    iget-object v6, p1, Lb/b/f/d/a;->d:Lb/b/f/d/b;

    invoke-virtual {v6, v4}, Lb/b/f/d/b;->b(I)Lb/b/f/d/c;

    move-result-object v6

    invoke-virtual {v5, v6}, Lb/b/f/d/c;->a(Lb/b/f/d/c;)I

    move-result v5

    if-eqz v5, :cond_2

    return v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-ge v1, v2, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    if-le v1, v2, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    return v0
.end method

.method public final a(Lb/b/f/d/c;)Lb/b/f/d/a;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/b/f/d/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/f/d/a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/b/f/d/a;->d:Lb/b/f/d/b;

    invoke-virtual {v1, p1}, Lb/b/f/d/b;->c(Lb/b/f/d/c;)Lb/b/f/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/d/b;->b_()V

    new-instance v1, Lb/b/f/d/a;

    iget-object v2, p0, Lb/b/f/d/a;->c:Lb/b/f/d/c;

    invoke-direct {v1, v0, v2, p1}, Lb/b/f/d/a;-><init>(Ljava/lang/String;Lb/b/f/d/c;Lb/b/f/d/b;)V

    invoke-static {v1}, Lb/b/f/d/a;->b(Lb/b/f/d/a;)Lb/b/f/d/a;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/f/d/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lb/b/f/d/c;
    .registers 2

    iget-object v0, p0, Lb/b/f/d/a;->c:Lb/b/f/d/c;

    return-object v0
.end method

.method public final c()Lb/b/f/d/b;
    .registers 2

    iget-object v0, p0, Lb/b/f/d/a;->d:Lb/b/f/d/b;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lb/b/f/d/a;

    invoke-virtual {p0, p1}, Lb/b/f/d/a;->a(Lb/b/f/d/a;)I

    move-result p1

    return p1
.end method

.method public final d()Lb/b/f/d/b;
    .registers 7

    iget-object v0, p0, Lb/b/f/d/a;->e:Lb/b/f/d/b;

    if-nez v0, :cond_3

    iget-object v0, p0, Lb/b/f/d/a;->d:Lb/b/f/d/b;

    invoke-virtual {v0}, Lb/b/f/d/b;->a_()I

    move-result v0

    new-instance v1, Lb/b/f/d/b;

    invoke-direct {v1, v0}, Lb/b/f/d/b;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lb/b/f/d/a;->d:Lb/b/f/d/b;

    invoke-virtual {v4, v2}, Lb/b/f/d/b;->b(I)Lb/b/f/d/c;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/f/d/c;->l()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v4, Lb/b/f/d/c;->f:Lb/b/f/d/c;

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v1, v2, v4}, Lb/b/f/d/b;->a(ILb/b/f/d/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lb/b/f/d/a;->d:Lb/b/f/d/b;

    :goto_1
    iput-object v1, p0, Lb/b/f/d/a;->e:Lb/b/f/d/b;

    :cond_3
    iget-object v0, p0, Lb/b/f/d/a;->e:Lb/b/f/d/b;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lb/b/f/d/a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Lb/b/f/d/a;->b:Ljava/lang/String;

    check-cast p1, Lb/b/f/d/a;

    iget-object p1, p1, Lb/b/f/d/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lb/b/f/d/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/f/d/a;->b:Ljava/lang/String;

    return-object v0
.end method
