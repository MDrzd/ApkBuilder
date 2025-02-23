.class public Lcom/beust/jcommander/ParameterDescription;
.super Ljava/lang/Object;


# instance fields
.field private m_assigned:Z

.field private m_bundle:Ljava/util/ResourceBundle;

.field private m_default:Ljava/lang/Object;

.field private m_description:Ljava/lang/String;

.field private m_dynamicParameterAnnotation:Lcom/beust/jcommander/DynamicParameter;

.field private m_jCommander:Lcom/beust/jcommander/JCommander;

.field private m_longestName:Ljava/lang/String;

.field private m_object:Ljava/lang/Object;

.field private m_parameterAnnotation:Lcom/beust/jcommander/Parameter;

.field private m_parameterized:Lcom/beust/jcommander/Parameterized;

.field private m_wrappedParameter:Lcom/beust/jcommander/WrappedParameter;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/beust/jcommander/DynamicParameter;Lcom/beust/jcommander/Parameterized;Ljava/util/ResourceBundle;Lcom/beust/jcommander/JCommander;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_assigned:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_longestName:Ljava/lang/String;

    const-class v0, Ljava/util/Map;

    invoke-virtual {p3}, Lcom/beust/jcommander/Parameterized;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/beust/jcommander/ParameterDescription;->m_dynamicParameterAnnotation:Lcom/beust/jcommander/DynamicParameter;

    new-instance p2, Lcom/beust/jcommander/WrappedParameter;

    iget-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_dynamicParameterAnnotation:Lcom/beust/jcommander/DynamicParameter;

    invoke-direct {p2, v0}, Lcom/beust/jcommander/WrappedParameter;-><init>(Lcom/beust/jcommander/DynamicParameter;)V

    iput-object p2, p0, Lcom/beust/jcommander/ParameterDescription;->m_wrappedParameter:Lcom/beust/jcommander/WrappedParameter;

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/beust/jcommander/ParameterDescription;->init(Ljava/lang/Object;Lcom/beust/jcommander/Parameterized;Ljava/util/ResourceBundle;Lcom/beust/jcommander/JCommander;)V

    return-void

    :cond_0
    new-instance p1, Lcom/beust/jcommander/ParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "@DynamicParameter "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/beust/jcommander/Parameterized;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " should be of type Map but is "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/beust/jcommander/Parameterized;->getType()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/beust/jcommander/Parameter;Lcom/beust/jcommander/Parameterized;Ljava/util/ResourceBundle;Lcom/beust/jcommander/JCommander;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_assigned:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_longestName:Ljava/lang/String;

    iput-object p2, p0, Lcom/beust/jcommander/ParameterDescription;->m_parameterAnnotation:Lcom/beust/jcommander/Parameter;

    new-instance p2, Lcom/beust/jcommander/WrappedParameter;

    iget-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_parameterAnnotation:Lcom/beust/jcommander/Parameter;

    invoke-direct {p2, v0}, Lcom/beust/jcommander/WrappedParameter;-><init>(Lcom/beust/jcommander/Parameter;)V

    iput-object p2, p0, Lcom/beust/jcommander/ParameterDescription;->m_wrappedParameter:Lcom/beust/jcommander/WrappedParameter;

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/beust/jcommander/ParameterDescription;->init(Ljava/lang/Object;Lcom/beust/jcommander/Parameterized;Ljava/util/ResourceBundle;Lcom/beust/jcommander/JCommander;)V

    return-void
.end method

.method private fieldIsSetForTheFirstTime(Z)Z
    .registers 2

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/beust/jcommander/ParameterDescription;->m_assigned:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private findResourceBundle(Ljava/lang/Object;)Ljava/util/ResourceBundle;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/beust/jcommander/Parameters;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/beust/jcommander/Parameters;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/beust/jcommander/Parameters;->resourceBundle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/beust/jcommander/ParameterDescription;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/beust/jcommander/Parameters;->resourceBundle()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/beust/jcommander/ResourceBundle;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/beust/jcommander/ResourceBundle;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/beust/jcommander/ResourceBundle;->value()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beust/jcommander/ParameterDescription;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/beust/jcommander/ResourceBundle;->value()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private init(Ljava/lang/Object;Lcom/beust/jcommander/Parameterized;Ljava/util/ResourceBundle;Lcom/beust/jcommander/JCommander;)V
    .registers 6

    iput-object p1, p0, Lcom/beust/jcommander/ParameterDescription;->m_object:Ljava/lang/Object;

    iput-object p2, p0, Lcom/beust/jcommander/ParameterDescription;->m_parameterized:Lcom/beust/jcommander/Parameterized;

    iput-object p3, p0, Lcom/beust/jcommander/ParameterDescription;->m_bundle:Ljava/util/ResourceBundle;

    iget-object p3, p0, Lcom/beust/jcommander/ParameterDescription;->m_bundle:Ljava/util/ResourceBundle;

    if-nez p3, :cond_0

    invoke-direct {p0, p1}, Lcom/beust/jcommander/ParameterDescription;->findResourceBundle(Ljava/lang/Object;)Ljava/util/ResourceBundle;

    move-result-object p3

    iput-object p3, p0, Lcom/beust/jcommander/ParameterDescription;->m_bundle:Ljava/util/ResourceBundle;

    :cond_0
    iput-object p4, p0, Lcom/beust/jcommander/ParameterDescription;->m_jCommander:Lcom/beust/jcommander/JCommander;

    iget-object p3, p0, Lcom/beust/jcommander/ParameterDescription;->m_parameterAnnotation:Lcom/beust/jcommander/Parameter;

    if-eqz p3, :cond_2

    const-class p3, Ljava/lang/Enum;

    invoke-virtual {p2}, Lcom/beust/jcommander/Parameterized;->getType()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/beust/jcommander/ParameterDescription;->m_parameterAnnotation:Lcom/beust/jcommander/Parameter;

    invoke-interface {p3}, Lcom/beust/jcommander/Parameter;->description()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Options: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/beust/jcommander/Parameterized;->getType()Ljava/lang/Class;

    move-result-object p4

    invoke-static {p4}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/beust/jcommander/ParameterDescription;->m_parameterAnnotation:Lcom/beust/jcommander/Parameter;

    invoke-interface {p3}, Lcom/beust/jcommander/Parameter;->description()Ljava/lang/String;

    move-result-object p3

    :goto_0
    iget-object p4, p0, Lcom/beust/jcommander/ParameterDescription;->m_parameterAnnotation:Lcom/beust/jcommander/Parameter;

    invoke-interface {p4}, Lcom/beust/jcommander/Parameter;->descriptionKey()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_parameterAnnotation:Lcom/beust/jcommander/Parameter;

    invoke-interface {v0}, Lcom/beust/jcommander/Parameter;->names()[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/beust/jcommander/ParameterDescription;->m_dynamicParameterAnnotation:Lcom/beust/jcommander/DynamicParameter;

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/beust/jcommander/ParameterDescription;->m_dynamicParameterAnnotation:Lcom/beust/jcommander/DynamicParameter;

    invoke-interface {p3}, Lcom/beust/jcommander/DynamicParameter;->description()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/beust/jcommander/ParameterDescription;->m_dynamicParameterAnnotation:Lcom/beust/jcommander/DynamicParameter;

    invoke-interface {p4}, Lcom/beust/jcommander/DynamicParameter;->descriptionKey()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_dynamicParameterAnnotation:Lcom/beust/jcommander/DynamicParameter;

    invoke-interface {v0}, Lcom/beust/jcommander/DynamicParameter;->names()[Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p0, p3, p4, v0}, Lcom/beust/jcommander/ParameterDescription;->initDescription(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/beust/jcommander/Parameterized;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/beust/jcommander/ParameterDescription;->m_default:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/beust/jcommander/ParameterDescription;->m_default:Ljava/lang/Object;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/beust/jcommander/ParameterDescription;->m_parameterAnnotation:Lcom/beust/jcommander/Parameter;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/beust/jcommander/ParameterDescription;->m_parameterAnnotation:Lcom/beust/jcommander/Parameter;

    invoke-interface {p1}, Lcom/beust/jcommander/Parameter;->names()[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/beust/jcommander/ParameterDescription;->validateDefaultValues([Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Shound never happen"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method private initDescription(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/beust/jcommander/ParameterDescription;->m_description:Ljava/lang/String;

    const-string p1, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/beust/jcommander/ParameterDescription;->m_bundle:Ljava/util/ResourceBundle;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/beust/jcommander/ParameterDescription;->m_bundle:Ljava/util/ResourceBundle;

    invoke-virtual {p1, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beust/jcommander/ParameterDescription;->m_description:Ljava/lang/String;

    :cond_0
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    aget-object v0, p3, p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/beust/jcommander/ParameterDescription;->m_longestName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_1

    iput-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_longestName:Ljava/lang/String;

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isMultiOption()Z
    .registers 3

    iget-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_parameterized:Lcom/beust/jcommander/Parameterized;

    invoke-virtual {v0}, Lcom/beust/jcommander/Parameterized;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_parameterized:Lcom/beust/jcommander/Parameterized;

    invoke-virtual {v0}, Lcom/beust/jcommander/Parameterized;->isDynamicParameter()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private newCollection(Ljava/lang/Class;)Ljava/util/Collection;
    .registers 5

    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    return-object p1

    :cond_0
    const-class v0, Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p1

    :cond_1
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    :cond_2
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_3
    new-instance v0, Lcom/beust/jcommander/ParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters of Collection type \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' are not supported. Please use List or Set instead."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static p(Ljava/lang/String;)V
    .registers 4

    const-string v0, "jcommander.debug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/beust/jcommander/JCommander;->getConsole()Lcom/beust/jcommander/internal/Console;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ParameterDescription] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/beust/jcommander/internal/Console;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private validateDefaultValues([Ljava/lang/String;)V
    .registers 3

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_default:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/beust/jcommander/ParameterDescription;->validateValueParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static validateParameter(Lcom/beust/jcommander/ParameterDescription;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    const-class v0, Lcom/beust/jcommander/validators/NoValidator;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Validating parameter:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " validator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/beust/jcommander/ParameterDescription;->p(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beust/jcommander/IParameterValidator;

    invoke-interface {v0, p2, p3}, Lcom/beust/jcommander/IParameterValidator;->validate(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/beust/jcommander/IParameterValidator2;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beust/jcommander/IParameterValidator2;

    invoke-interface {p1, p2, p3, p0}, Lcom/beust/jcommander/IParameterValidator2;->validate(Ljava/lang/String;Ljava/lang/String;Lcom/beust/jcommander/ParameterDescription;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/beust/jcommander/ParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/beust/jcommander/ParameterException;

    invoke-direct {p1, p0}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0

    :catch_2
    move-exception p0

    new-instance p1, Lcom/beust/jcommander/ParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Can\'t instantiate validator:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Lcom/beust/jcommander/ParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Can\'t instantiate validator:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_wrappedParameter:Lcom/beust/jcommander/WrappedParameter;

    invoke-virtual {v0}, Lcom/beust/jcommander/WrappedParameter;->validateWith()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0, p1, p2}, Lcom/beust/jcommander/ParameterDescription;->validateParameter(Lcom/beust/jcommander/ParameterDescription;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static validateValueParameter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    const-class v0, Lcom/beust/jcommander/validators/NoValueValidator;

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Validating value parameter:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " validator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/beust/jcommander/ParameterDescription;->p(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/beust/jcommander/IValueValidator;

    invoke-interface {p0, p1, p2}, Lcom/beust/jcommander/IValueValidator;->validate(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/beust/jcommander/ParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t instantiate validator:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/beust/jcommander/ParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t instantiate validator:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateValueParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_wrappedParameter:Lcom/beust/jcommander/WrappedParameter;

    invoke-virtual {v0}, Lcom/beust/jcommander/WrappedParameter;->validateValueWith()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lcom/beust/jcommander/ParameterDescription;->validateValueParameter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/beust/jcommander/ParameterDescription;->addValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public addValue(Ljava/lang/String;Z)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v1, "default "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to parameter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beust/jcommander/ParameterDescription;->m_parameterized:Lcom/beust/jcommander/Parameterized;

    invoke-virtual {v1}, Lcom/beust/jcommander/Parameterized;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/beust/jcommander/ParameterDescription;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_wrappedParameter:Lcom/beust/jcommander/WrappedParameter;

    invoke-virtual {v0}, Lcom/beust/jcommander/WrappedParameter;->names()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-boolean v1, p0, Lcom/beust/jcommander/ParameterDescription;->m_assigned:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/beust/jcommander/ParameterDescription;->isMultiOption()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/beust/jcommander/ParameterDescription;->m_jCommander:Lcom/beust/jcommander/JCommander;

    invoke-virtual {v1}, Lcom/beust/jcommander/JCommander;->isParameterOverwritingAllowed()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_1
    invoke-virtual {p0}, Lcom/beust/jcommander/ParameterDescription;->isNonOverwritableForced()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0, v0, p1}, Lcom/beust/jcommander/ParameterDescription;->validateParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/beust/jcommander/ParameterDescription;->m_parameterized:Lcom/beust/jcommander/Parameterized;

    invoke-virtual {v1}, Lcom/beust/jcommander/Parameterized;->getType()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/beust/jcommander/ParameterDescription;->m_jCommander:Lcom/beust/jcommander/JCommander;

    invoke-virtual {v2, p0, p1}, Lcom/beust/jcommander/JCommander;->convertValue(Lcom/beust/jcommander/ParameterDescription;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/beust/jcommander/ParameterDescription;->validateValueParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_parameterized:Lcom/beust/jcommander/Parameterized;

    iget-object v2, p0, Lcom/beust/jcommander/ParameterDescription;->m_object:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/beust/jcommander/Parameterized;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/beust/jcommander/ParameterDescription;->fieldIsSetForTheFirstTime(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {p0, v1}, Lcom/beust/jcommander/ParameterDescription;->newCollection(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/beust/jcommander/ParameterDescription;->m_parameterized:Lcom/beust/jcommander/Parameterized;

    iget-object v2, p0, Lcom/beust/jcommander/ParameterDescription;->m_object:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/beust/jcommander/Parameterized;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_4

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_wrappedParameter:Lcom/beust/jcommander/WrappedParameter;

    iget-object v1, p0, Lcom/beust/jcommander/ParameterDescription;->m_parameterized:Lcom/beust/jcommander/Parameterized;

    iget-object v2, p0, Lcom/beust/jcommander/ParameterDescription;->m_object:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, p1}, Lcom/beust/jcommander/WrappedParameter;->addValue(Lcom/beust/jcommander/Parameterized;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-nez p2, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/beust/jcommander/ParameterDescription;->m_assigned:Z

    :cond_6
    return-void

    :cond_7
    new-instance p1, Lcom/beust/jcommander/ParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Can only specify option "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " once."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDefault()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_default:Ljava/lang/Object;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_description:Ljava/lang/String;

    return-object v0
.end method

.method public getLongestName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_longestName:Ljava/lang/String;

    return-object v0
.end method

.method public getNames()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/beust/jcommander/ParameterDescription;->m_wrappedParameter:Lcom/beust/jcommander/WrappedParameter;

    invoke-virtual {v1}, Lcom/beust/jcommander/WrappedParameter;->names()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    if-lez v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_object:Ljava/lang/Object;

    return-object v0
.end method

.method public getParameter()Lcom/beust/jcommander/WrappedParameter;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_wrappedParameter:Lcom/beust/jcommander/WrappedParameter;

    return-object v0
.end method

.method public getParameterized()Lcom/beust/jcommander/Parameterized;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_parameterized:Lcom/beust/jcommander/Parameterized;

    return-object v0
.end method

.method public isAssigned()Z
    .registers 2

    iget-boolean v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_assigned:Z

    return v0
.end method

.method public isDynamicParameter()Z
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_dynamicParameterAnnotation:Lcom/beust/jcommander/DynamicParameter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHelp()Z
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_wrappedParameter:Lcom/beust/jcommander/WrappedParameter;

    invoke-virtual {v0}, Lcom/beust/jcommander/WrappedParameter;->isHelp()Z

    move-result v0

    return v0
.end method

.method public isNonOverwritableForced()Z
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/ParameterDescription;->m_wrappedParameter:Lcom/beust/jcommander/WrappedParameter;

    invoke-virtual {v0}, Lcom/beust/jcommander/WrappedParameter;->isNonOverwritableForced()Z

    move-result v0

    return v0
.end method

.method public setAssigned(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/beust/jcommander/ParameterDescription;->m_assigned:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ParameterDescription "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/beust/jcommander/ParameterDescription;->m_parameterized:Lcom/beust/jcommander/Parameterized;

    invoke-virtual {v1}, Lcom/beust/jcommander/Parameterized;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
