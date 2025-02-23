.class public Lorg/codehaus/plexus/util/introspection/ClassMap;
.super Ljava/lang/Object;


# static fields
.field private static final CACHE_MISS:Lorg/codehaus/plexus/util/introspection/ClassMap$CacheMiss;

.field private static final OBJECT:Ljava/lang/Object;


# instance fields
.field private final clazz:Ljava/lang/Class;

.field private methodCache:Ljava/util/Map;

.field private final methodMap:Lorg/codehaus/plexus/util/introspection/MethodMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/codehaus/plexus/util/introspection/ClassMap$CacheMiss;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codehaus/plexus/util/introspection/ClassMap$CacheMiss;-><init>(Lorg/codehaus/plexus/util/introspection/ClassMap$1;)V

    sput-object v0, Lorg/codehaus/plexus/util/introspection/ClassMap;->CACHE_MISS:Lorg/codehaus/plexus/util/introspection/ClassMap$CacheMiss;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/codehaus/plexus/util/introspection/ClassMap;->OBJECT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/introspection/ClassMap;->methodCache:Ljava/util/Map;

    new-instance v0, Lorg/codehaus/plexus/util/introspection/MethodMap;

    invoke-direct {v0}, Lorg/codehaus/plexus/util/introspection/MethodMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/plexus/util/introspection/ClassMap;->methodMap:Lorg/codehaus/plexus/util/introspection/MethodMap;

    iput-object p1, p0, Lorg/codehaus/plexus/util/introspection/ClassMap;->clazz:Ljava/lang/Class;

    invoke-direct {p0}, Lorg/codehaus/plexus/util/introspection/ClassMap;->populateMethodCache()V

    return-void
.end method

.method private static getAccessibleMethods(Ljava/lang/Class;[Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;I)I
    .registers 7

    array-length v0, p1

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-ge p2, v0, :cond_1

    :try_start_0
    aget-object v2, p1, v1

    iget-boolean v3, v2, Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;->upcast:Z

    if-nez v3, :cond_0

    invoke-virtual {v2, p0}, Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;->tryUpcasting(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    :catch_0
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    return p2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1, p1, p2}, Lorg/codehaus/plexus/util/introspection/ClassMap;->getAccessibleMethods(Ljava/lang/Class;[Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;I)I

    move-result p2

    if-ne p2, v0, :cond_3

    return p2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    array-length v1, p0

    :goto_1
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_5

    aget-object v1, p0, v2

    invoke-static {v1, p1, p2}, Lorg/codehaus/plexus/util/introspection/ClassMap;->getAccessibleMethods(Ljava/lang/Class;[Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;I)I

    move-result p2

    if-ne p2, v0, :cond_4

    return p2

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    return p2
.end method

.method private static getAccessibleMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    array-length v1, v0

    new-array v1, v1, [Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;

    array-length v2, v0

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    new-instance v2, Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;

    aget-object v4, v0, v3

    invoke-direct {v2, v4}, Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v2, v1, v3

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lorg/codehaus/plexus/util/introspection/ClassMap;->getAccessibleMethods(Ljava/lang/Class;[Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;I)I

    move-result p0

    array-length v3, v0

    if-ge p0, v3, :cond_2

    new-array v0, p0, [Ljava/lang/reflect/Method;

    :cond_2
    array-length p0, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v2, p0, :cond_4

    aget-object v4, v1, v2

    iget-boolean v5, v4, Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;->upcast:Z

    if-eqz v5, :cond_3

    add-int/lit8 v5, v3, 0x1

    iget-object v4, v4, Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;->method:Ljava/lang/reflect/Method;

    aput-object v4, v0, v3

    move v3, v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private static getPublicMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p1, p2}, Lorg/codehaus/plexus/util/introspection/ClassMap;->getPublicMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    invoke-static {v3, p1, p2}, Lorg/codehaus/plexus/util/introspection/ClassMap;->getPublicMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static getPublicMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lorg/codehaus/plexus/util/introspection/ClassMap;->getPublicMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private static makeMethodKey(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    sget-object v2, Lorg/codehaus/plexus/util/introspection/ClassMap;->OBJECT:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private makeMethodKey(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_9

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "java.lang.Boolean"

    goto :goto_1

    :cond_0
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "java.lang.Byte"

    goto :goto_1

    :cond_1
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "java.lang.Character"

    goto :goto_1

    :cond_2
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v3, "java.lang.Double"

    goto :goto_1

    :cond_3
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, "java.lang.Float"

    goto :goto_1

    :cond_4
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v3, "java.lang.Integer"

    goto :goto_1

    :cond_5
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v3, "java.lang.Long"

    goto :goto_1

    :cond_6
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "java.lang.Short"

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private populateMethodCache()V
    .registers 7

    iget-object v0, p0, Lorg/codehaus/plexus/util/introspection/ClassMap;->clazz:Ljava/lang/Class;

    invoke-static {v0}, Lorg/codehaus/plexus/util/introspection/ClassMap;->getAccessibleMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lorg/codehaus/plexus/util/introspection/ClassMap;->getPublicMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lorg/codehaus/plexus/util/introspection/ClassMap;->methodMap:Lorg/codehaus/plexus/util/introspection/MethodMap;

    invoke-virtual {v4, v3}, Lorg/codehaus/plexus/util/introspection/MethodMap;->add(Ljava/lang/reflect/Method;)V

    iget-object v4, p0, Lorg/codehaus/plexus/util/introspection/ClassMap;->methodCache:Ljava/util/Map;

    invoke-direct {p0, v3}, Lorg/codehaus/plexus/util/introspection/ClassMap;->makeMethodKey(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public findMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 6

    invoke-static {p1, p2}, Lorg/codehaus/plexus/util/introspection/ClassMap;->makeMethodKey(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/plexus/util/introspection/ClassMap;->methodCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/codehaus/plexus/util/introspection/ClassMap;->CACHE_MISS:Lorg/codehaus/plexus/util/introspection/ClassMap$CacheMiss;

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lorg/codehaus/plexus/util/introspection/ClassMap;->methodMap:Lorg/codehaus/plexus/util/introspection/MethodMap;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/plexus/util/introspection/MethodMap;->find(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Lorg/codehaus/plexus/util/introspection/MethodMap$AmbiguousException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    iget-object p1, p0, Lorg/codehaus/plexus/util/introspection/ClassMap;->methodCache:Ljava/util/Map;

    sget-object p2, Lorg/codehaus/plexus/util/introspection/ClassMap;->CACHE_MISS:Lorg/codehaus/plexus/util/introspection/ClassMap$CacheMiss;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/codehaus/plexus/util/introspection/ClassMap;->methodCache:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/codehaus/plexus/util/introspection/ClassMap;->methodCache:Ljava/util/Map;

    sget-object v1, Lorg/codehaus/plexus/util/introspection/ClassMap;->CACHE_MISS:Lorg/codehaus/plexus/util/introspection/ClassMap$CacheMiss;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw p1

    :cond_2
    :goto_0
    check-cast v1, Ljava/lang/reflect/Method;

    return-object v1
.end method

.method getCachedClass()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/introspection/ClassMap;->clazz:Ljava/lang/Class;

    return-object v0
.end method
