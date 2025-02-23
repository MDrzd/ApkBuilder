.class public Lcom/beust/jcommander/Parameterized;
.super Ljava/lang/Object;


# instance fields
.field private m_field:Ljava/lang/reflect/Field;

.field private m_getter:Ljava/lang/reflect/Method;

.field private m_method:Ljava/lang/reflect/Method;

.field private m_parametersDelegate:Lcom/beust/jcommander/ParametersDelegate;

.field private m_wrappedParameter:Lcom/beust/jcommander/WrappedParameter;


# direct methods
.method public constructor <init>(Lcom/beust/jcommander/WrappedParameter;Lcom/beust/jcommander/ParametersDelegate;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beust/jcommander/Parameterized;->m_wrappedParameter:Lcom/beust/jcommander/WrappedParameter;

    iput-object p4, p0, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/beust/jcommander/Parameterized;->m_field:Ljava/lang/reflect/Field;

    iget-object p1, p0, Lcom/beust/jcommander/Parameterized;->m_field:Ljava/lang/reflect/Field;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/beust/jcommander/Parameterized;->m_field:Ljava/lang/reflect/Field;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_0
    iput-object p2, p0, Lcom/beust/jcommander/Parameterized;->m_parametersDelegate:Lcom/beust/jcommander/ParametersDelegate;

    return-void
.end method

.method public static parseArg(Ljava/lang/Object;)Ljava/util/List;
    .registers 11

    invoke-static {}, Lcom/beust/jcommander/internal/Lists;->newArrayList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v5, v2

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, v2, v3

    const-class v7, Lcom/beust/jcommander/Parameter;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    const-class v8, Lcom/beust/jcommander/ParametersDelegate;

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    const-class v9, Lcom/beust/jcommander/DynamicParameter;

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    if-eqz v7, :cond_0

    new-instance v8, Lcom/beust/jcommander/Parameterized;

    new-instance v9, Lcom/beust/jcommander/WrappedParameter;

    check-cast v7, Lcom/beust/jcommander/Parameter;

    invoke-direct {v9, v7}, Lcom/beust/jcommander/WrappedParameter;-><init>(Lcom/beust/jcommander/Parameter;)V

    invoke-direct {v8, v9, v4, v6, v4}, Lcom/beust/jcommander/Parameterized;-><init>(Lcom/beust/jcommander/WrappedParameter;Lcom/beust/jcommander/ParametersDelegate;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    if-eqz v9, :cond_1

    new-instance v7, Lcom/beust/jcommander/Parameterized;

    new-instance v8, Lcom/beust/jcommander/WrappedParameter;

    check-cast v9, Lcom/beust/jcommander/DynamicParameter;

    invoke-direct {v8, v9}, Lcom/beust/jcommander/WrappedParameter;-><init>(Lcom/beust/jcommander/DynamicParameter;)V

    invoke-direct {v7, v8, v4, v6, v4}, Lcom/beust/jcommander/Parameterized;-><init>(Lcom/beust/jcommander/WrappedParameter;Lcom/beust/jcommander/ParametersDelegate;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    :goto_2
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    if-eqz v8, :cond_2

    new-instance v7, Lcom/beust/jcommander/Parameterized;

    check-cast v8, Lcom/beust/jcommander/ParametersDelegate;

    invoke-direct {v7, v4, v8, v6, v4}, Lcom/beust/jcommander/Parameterized;-><init>(Lcom/beust/jcommander/WrappedParameter;Lcom/beust/jcommander/ParametersDelegate;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_4
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v2, :cond_8

    aget-object v6, v1, v5

    const-class v7, Lcom/beust/jcommander/Parameter;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    const-class v8, Lcom/beust/jcommander/ParametersDelegate;

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    const-class v9, Lcom/beust/jcommander/DynamicParameter;

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    if-eqz v7, :cond_5

    new-instance v8, Lcom/beust/jcommander/Parameterized;

    new-instance v9, Lcom/beust/jcommander/WrappedParameter;

    check-cast v7, Lcom/beust/jcommander/Parameter;

    invoke-direct {v9, v7}, Lcom/beust/jcommander/WrappedParameter;-><init>(Lcom/beust/jcommander/Parameter;)V

    invoke-direct {v8, v9, v4, v4, v6}, Lcom/beust/jcommander/Parameterized;-><init>(Lcom/beust/jcommander/WrappedParameter;Lcom/beust/jcommander/ParametersDelegate;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    :goto_6
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_5
    if-eqz v9, :cond_6

    new-instance v8, Lcom/beust/jcommander/Parameterized;

    new-instance v9, Lcom/beust/jcommander/WrappedParameter;

    check-cast v7, Lcom/beust/jcommander/DynamicParameter;

    invoke-direct {v9, v7}, Lcom/beust/jcommander/WrappedParameter;-><init>(Lcom/beust/jcommander/DynamicParameter;)V

    invoke-direct {v8, v9, v4, v4, v6}, Lcom/beust/jcommander/Parameterized;-><init>(Lcom/beust/jcommander/WrappedParameter;Lcom/beust/jcommander/ParametersDelegate;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    goto :goto_6

    :cond_6
    if-eqz v8, :cond_7

    new-instance v7, Lcom/beust/jcommander/Parameterized;

    check-cast v8, Lcom/beust/jcommander/ParametersDelegate;

    invoke-direct {v7, v4, v8, v4, v6}, Lcom/beust/jcommander/Parameterized;-><init>(Lcom/beust/jcommander/WrappedParameter;Lcom/beust/jcommander/ParametersDelegate;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_4

    :cond_9
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/beust/jcommander/Parameterized;

    iget-object v2, p0, Lcom/beust/jcommander/Parameterized;->m_field:Ljava/lang/reflect/Field;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/beust/jcommander/Parameterized;->m_field:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v2, p0, Lcom/beust/jcommander/Parameterized;->m_field:Ljava/lang/reflect/Field;

    iget-object v3, p1, Lcom/beust/jcommander/Parameterized;->m_field:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    if-nez v2, :cond_5

    iget-object p1, p1, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_6

    return v1

    :cond_5
    iget-object v2, p0, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public findFieldGenericType()Ljava/lang/reflect/Type;
    .registers 4

    iget-object v0, p0, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/beust/jcommander/Parameterized;->m_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/beust/jcommander/Parameterized;->m_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/beust/jcommander/Parameterized;->m_getter:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "g"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/beust/jcommander/Parameterized;->m_getter:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v1, p0, Lcom/beust/jcommander/Parameterized;->m_getter:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/beust/jcommander/Parameterized;->m_field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/beust/jcommander/ParameterException;

    invoke-direct {v0, p1}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lcom/beust/jcommander/ParameterException;

    invoke-direct {v0, p1}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    new-instance v0, Lcom/beust/jcommander/ParameterException;

    invoke-direct {v0, p1}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    iget-object v1, p0, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v2, p1

    :catch_4
    :cond_2
    return-object v2

    :catch_5
    move-exception p1

    new-instance v0, Lcom/beust/jcommander/ParameterException;

    invoke-direct {v0, p1}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getDelegateAnnotation()Lcom/beust/jcommander/ParametersDelegate;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/Parameterized;->m_parametersDelegate:Lcom/beust/jcommander/ParametersDelegate;

    return-object v0
.end method

.method public getGenericType()Ljava/lang/reflect/Type;
    .registers 3

    iget-object v0, p0, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/beust/jcommander/Parameterized;->m_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/beust/jcommander/Parameterized;->m_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter()Lcom/beust/jcommander/Parameter;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/Parameterized;->m_wrappedParameter:Lcom/beust/jcommander/WrappedParameter;

    invoke-virtual {v0}, Lcom/beust/jcommander/WrappedParameter;->getParameter()Lcom/beust/jcommander/Parameter;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 3

    iget-object v0, p0, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/beust/jcommander/Parameterized;->m_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedParameter()Lcom/beust/jcommander/WrappedParameter;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/Parameterized;->m_wrappedParameter:Lcom/beust/jcommander/WrappedParameter;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/beust/jcommander/Parameterized;->m_field:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/beust/jcommander/Parameterized;->m_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isDynamicParameter()Z
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/Parameterized;->m_wrappedParameter:Lcom/beust/jcommander/WrappedParameter;

    invoke-virtual {v0}, Lcom/beust/jcommander/WrappedParameter;->getDynamicParameter()Lcom/beust/jcommander/DynamicParameter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDynamicParameter(Ljava/lang/reflect/Field;)Z
    .registers 5

    iget-object p1, p0, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    const-class v2, Lcom/beust/jcommander/DynamicParameter;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    iget-object p1, p0, Lcom/beust/jcommander/Parameterized;->m_field:Ljava/lang/reflect/Field;

    const-class v2, Lcom/beust/jcommander/DynamicParameter;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beust/jcommander/Parameterized;->m_method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/beust/jcommander/Parameterized;->m_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/beust/jcommander/ParameterException;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/beust/jcommander/ParameterException;

    throw p1

    :cond_1
    new-instance p2, Lcom/beust/jcommander/ParameterException;

    invoke-direct {p2, p1}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lcom/beust/jcommander/ParameterException;

    invoke-direct {p2, p1}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lcom/beust/jcommander/ParameterException;

    invoke-direct {p2, p1}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
