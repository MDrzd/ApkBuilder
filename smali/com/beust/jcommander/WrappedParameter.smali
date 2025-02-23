.class public Lcom/beust/jcommander/WrappedParameter;
.super Ljava/lang/Object;


# instance fields
.field private m_dynamicParameter:Lcom/beust/jcommander/DynamicParameter;

.field private m_parameter:Lcom/beust/jcommander/Parameter;


# direct methods
.method public constructor <init>(Lcom/beust/jcommander/DynamicParameter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beust/jcommander/WrappedParameter;->m_dynamicParameter:Lcom/beust/jcommander/DynamicParameter;

    return-void
.end method

.method public constructor <init>(Lcom/beust/jcommander/Parameter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    return-void
.end method

.method private callPut(Ljava/lang/Object;Lcom/beust/jcommander/Parameterized;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    invoke-virtual {p2}, Lcom/beust/jcommander/Parameterized;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beust/jcommander/WrappedParameter;->findPut(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p2, p1}, Lcom/beust/jcommander/Parameterized;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, p2, v1

    const/4 p3, 0x1

    aput-object p4, p2, p3

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    return-void

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    return-void
.end method

.method private findPut(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6

    const-string v0, "put"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addValue(Lcom/beust/jcommander/Parameterized;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/beust/jcommander/Parameterized;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_dynamicParameter:Lcom/beust/jcommander/DynamicParameter;

    invoke-interface {v0}, Lcom/beust/jcommander/DynamicParameter;->assignment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/beust/jcommander/WrappedParameter;->callPut(Ljava/lang/Object;Lcom/beust/jcommander/Parameterized;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Lcom/beust/jcommander/ParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Dynamic parameter expected a value of the form a"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "b but got:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public arity()I
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    invoke-interface {v0}, Lcom/beust/jcommander/Parameter;->arity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public echoInput()Z
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    invoke-interface {v0}, Lcom/beust/jcommander/Parameter;->echoInput()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAssignment()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_dynamicParameter:Lcom/beust/jcommander/DynamicParameter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_dynamicParameter:Lcom/beust/jcommander/DynamicParameter;

    invoke-interface {v0}, Lcom/beust/jcommander/DynamicParameter;->assignment()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getDynamicParameter()Lcom/beust/jcommander/DynamicParameter;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_dynamicParameter:Lcom/beust/jcommander/DynamicParameter;

    return-object v0
.end method

.method public getParameter()Lcom/beust/jcommander/Parameter;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    return-object v0
.end method

.method public hidden()Z
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    invoke-interface {v0}, Lcom/beust/jcommander/Parameter;->hidden()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_dynamicParameter:Lcom/beust/jcommander/DynamicParameter;

    invoke-interface {v0}, Lcom/beust/jcommander/DynamicParameter;->hidden()Z

    move-result v0

    return v0
.end method

.method public isHelp()Z
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    invoke-interface {v0}, Lcom/beust/jcommander/Parameter;->help()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNonOverwritableForced()Z
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    invoke-interface {v0}, Lcom/beust/jcommander/Parameter;->forceNonOverwritable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public names()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    invoke-interface {v0}, Lcom/beust/jcommander/Parameter;->names()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_dynamicParameter:Lcom/beust/jcommander/DynamicParameter;

    invoke-interface {v0}, Lcom/beust/jcommander/DynamicParameter;->names()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public password()Z
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    invoke-interface {v0}, Lcom/beust/jcommander/Parameter;->password()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public required()Z
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    invoke-interface {v0}, Lcom/beust/jcommander/Parameter;->required()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_dynamicParameter:Lcom/beust/jcommander/DynamicParameter;

    invoke-interface {v0}, Lcom/beust/jcommander/DynamicParameter;->required()Z

    move-result v0

    return v0
.end method

.method public validateValueWith()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    invoke-interface {v0}, Lcom/beust/jcommander/Parameter;->validateValueWith()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_dynamicParameter:Lcom/beust/jcommander/DynamicParameter;

    invoke-interface {v0}, Lcom/beust/jcommander/DynamicParameter;->validateValueWith()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public validateWith()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    invoke-interface {v0}, Lcom/beust/jcommander/Parameter;->validateWith()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_dynamicParameter:Lcom/beust/jcommander/DynamicParameter;

    invoke-interface {v0}, Lcom/beust/jcommander/DynamicParameter;->validateWith()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public variableArity()Z
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beust/jcommander/WrappedParameter;->m_parameter:Lcom/beust/jcommander/Parameter;

    invoke-interface {v0}, Lcom/beust/jcommander/Parameter;->variableArity()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
