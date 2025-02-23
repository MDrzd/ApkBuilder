.class public Lorg/jf/util/jcommander/ExtendedCommands;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExtendedCommand(Lcom/beust/jcommander/JCommander;Lorg/jf/util/jcommander/Command;)V
    .registers 4

    invoke-static {p1}, Lorg/jf/util/jcommander/ExtendedCommands;->commandName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/jf/util/jcommander/ExtendedCommands;->commandAliases(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/beust/jcommander/JCommander;->addCommand(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jf/util/jcommander/Command;->getJCommander()Lcom/beust/jcommander/JCommander;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/jf/util/jcommander/Command;->setupCommand(Lcom/beust/jcommander/JCommander;)V

    return-void
.end method

.method public static commandAliases(Lcom/beust/jcommander/JCommander;)[Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lcom/beust/jcommander/JCommander;->getObjects()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/jf/util/jcommander/ExtendedCommands;->commandAliases(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static commandAliases(Ljava/lang/Object;)[Ljava/lang/String;
    .registers 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-static {p0}, Lorg/jf/util/jcommander/ExtendedCommands;->getExtendedParameters(Ljava/lang/Object;)Lorg/jf/util/jcommander/ExtendedParameters;

    move-result-object p0

    invoke-interface {p0}, Lorg/jf/util/jcommander/ExtendedParameters;->commandAliases()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static commandName(Lcom/beust/jcommander/JCommander;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lcom/beust/jcommander/JCommander;->getObjects()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/jf/util/jcommander/ExtendedCommands;->getExtendedParameters(Ljava/lang/Object;)Lorg/jf/util/jcommander/ExtendedParameters;

    move-result-object p0

    invoke-interface {p0}, Lorg/jf/util/jcommander/ExtendedParameters;->commandName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static commandName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-static {p0}, Lorg/jf/util/jcommander/ExtendedCommands;->getExtendedParameters(Ljava/lang/Object;)Lorg/jf/util/jcommander/ExtendedParameters;

    move-result-object p0

    invoke-interface {p0}, Lorg/jf/util/jcommander/ExtendedParameters;->commandName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCommandDescription(Lcom/beust/jcommander/JCommander;)Ljava/lang/String;
    .registers 2
    .param p0    # Lcom/beust/jcommander/JCommander;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/beust/jcommander/JCommander;->getObjects()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/beust/jcommander/Parameters;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/beust/jcommander/Parameters;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/beust/jcommander/Parameters;->commandDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getExtendedParameters(Ljava/lang/Object;)Lorg/jf/util/jcommander/ExtendedParameters;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/jf/util/jcommander/ExtendedParameters;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/jf/util/jcommander/ExtendedParameters;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "All extended commands should have an ExtendedParameters annotation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSubcommand(Lcom/beust/jcommander/JCommander;Ljava/lang/String;)Lcom/beust/jcommander/JCommander;
    .registers 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/beust/jcommander/JCommander;->getCommands()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/beust/jcommander/JCommander;->getCommands()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/beust/jcommander/JCommander;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/beust/jcommander/JCommander;->getCommands()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beust/jcommander/JCommander;

    invoke-static {v0}, Lorg/jf/util/jcommander/ExtendedCommands;->commandAliases(Lcom/beust/jcommander/JCommander;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static includeParametersInUsage(Lcom/beust/jcommander/JCommander;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/beust/jcommander/JCommander;->getObjects()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/jf/util/jcommander/ExtendedCommands;->includeParametersInUsage(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static includeParametersInUsage(Ljava/lang/Object;)Z
    .registers 1

    invoke-static {p0}, Lorg/jf/util/jcommander/ExtendedCommands;->getExtendedParameters(Ljava/lang/Object;)Lorg/jf/util/jcommander/ExtendedParameters;

    move-result-object p0

    invoke-interface {p0}, Lorg/jf/util/jcommander/ExtendedParameters;->includeParametersInUsage()Z

    move-result p0

    return p0
.end method

.method public static parameterArgumentNames(Lcom/beust/jcommander/ParameterDescription;)[Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lcom/beust/jcommander/ParameterDescription;->getParameterized()Lcom/beust/jcommander/Parameterized;

    move-result-object v0

    invoke-virtual {p0}, Lcom/beust/jcommander/ParameterDescription;->getObject()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq p0, v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/beust/jcommander/Parameterized;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const-class p0, Lorg/jf/util/jcommander/ExtendedParameter;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/jf/util/jcommander/ExtendedParameter;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/jf/util/jcommander/ExtendedParameter;->argumentNames()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static postfixDescription(Lcom/beust/jcommander/JCommander;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lcom/beust/jcommander/JCommander;->getObjects()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/jf/util/jcommander/ExtendedCommands;->postfixDescription(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static postfixDescription(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-static {p0}, Lorg/jf/util/jcommander/ExtendedCommands;->getExtendedParameters(Ljava/lang/Object;)Lorg/jf/util/jcommander/ExtendedParameters;

    move-result-object p0

    invoke-interface {p0}, Lorg/jf/util/jcommander/ExtendedParameters;->postfixDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
