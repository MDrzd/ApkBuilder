.class public Lorg/jf/util/jcommander/HelpFormatter;
.super Ljava/lang/Object;


# instance fields
.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    iput v0, p0, Lorg/jf/util/jcommander/HelpFormatter;->width:I

    return-void
.end method

.method private static getCommandAliases(Lcom/beust/jcommander/JCommander;)Ljava/util/List;
    .registers 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-static {p0}, Lorg/jf/util/jcommander/HelpFormatter;->getExtendedParameters(Lcom/beust/jcommander/JCommander;)Lorg/jf/util/jcommander/ExtendedParameters;

    move-result-object p0

    invoke-interface {p0}, Lorg/jf/util/jcommander/ExtendedParameters;->commandAliases()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/beust/jcommander/internal/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getExtendedParameters(Lcom/beust/jcommander/JCommander;)Lorg/jf/util/jcommander/ExtendedParameters;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lcom/beust/jcommander/JCommander;->getObjects()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lorg/jf/util/jcommander/ExtendedParameters;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/jf/util/jcommander/ExtendedParameters;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "All commands should have an ExtendedParameters annotation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getParameterArity(Lcom/beust/jcommander/ParameterDescription;)I
    .registers 3

    invoke-virtual {p1}, Lcom/beust/jcommander/ParameterDescription;->getParameter()Lcom/beust/jcommander/WrappedParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beust/jcommander/WrappedParameter;->arity()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/beust/jcommander/ParameterDescription;->getParameter()Lcom/beust/jcommander/WrappedParameter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beust/jcommander/WrappedParameter;->arity()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/beust/jcommander/ParameterDescription;->getParameterized()Lcom/beust/jcommander/Parameterized;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beust/jcommander/Parameterized;->getType()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_2

    const-class v0, Ljava/lang/Boolean;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private static getPostfixDescription(Lcom/beust/jcommander/JCommander;)Ljava/lang/String;
    .registers 1
    .param p0    # Lcom/beust/jcommander/JCommander;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-static {p0}, Lorg/jf/util/jcommander/HelpFormatter;->getExtendedParameters(Lcom/beust/jcommander/JCommander;)Lorg/jf/util/jcommander/ExtendedParameters;

    move-result-object p0

    invoke-interface {p0}, Lorg/jf/util/jcommander/ExtendedParameters;->postfixDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSortedParameters(Lcom/beust/jcommander/JCommander;)Ljava/util/List;
    .registers 4

    invoke-virtual {p1}, Lcom/beust/jcommander/JCommander;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/beust/jcommander/internal/Lists;->newArrayList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    const-string v0, "^-*(.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    new-instance v1, Lorg/jf/util/jcommander/HelpFormatter$1;

    invoke-direct {v1, p0, v0}, Lorg/jf/util/jcommander/HelpFormatter$1;-><init>(Lorg/jf/util/jcommander/HelpFormatter;Ljava/util/regex/Pattern;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method private static includeParametersInUsage(Lcom/beust/jcommander/JCommander;)Z
    .registers 1
    .param p0    # Lcom/beust/jcommander/JCommander;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-static {p0}, Lorg/jf/util/jcommander/HelpFormatter;->getExtendedParameters(Lcom/beust/jcommander/JCommander;)Lorg/jf/util/jcommander/ExtendedParameters;

    move-result-object p0

    invoke-interface {p0}, Lorg/jf/util/jcommander/ExtendedParameters;->includeParametersInUsage()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public format(Ljava/util/List;)Ljava/lang/String;
    .registers 13
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Lorg/jf/util/WrappedIndentingWriter;

    iget v2, p0, Lorg/jf/util/jcommander/HelpFormatter;->width:I

    add-int/lit8 v2, v2, -0x5

    iget v3, p0, Lorg/jf/util/jcommander/HelpFormatter;->width:I

    invoke-direct {v1, v0, v2, v3}, Lorg/jf/util/WrappedIndentingWriter;-><init>(Ljava/io/Writer;II)V

    invoke-static {p1}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/beust/jcommander/JCommander;

    const-string v3, "usage:"

    invoke-virtual {v1, v3}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/jf/util/WrappedIndentingWriter;->indent(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/beust/jcommander/JCommander;

    const-string v5, " "

    invoke-virtual {v1, v5}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    invoke-static {v4}, Lorg/jf/util/jcommander/ExtendedCommands;->commandName(Lcom/beust/jcommander/JCommander;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lorg/jf/util/jcommander/HelpFormatter;->includeParametersInUsage(Lcom/beust/jcommander/JCommander;)Z

    move-result p1

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lcom/beust/jcommander/JCommander;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/beust/jcommander/ParameterDescription;

    invoke-virtual {v5}, Lcom/beust/jcommander/ParameterDescription;->getParameter()Lcom/beust/jcommander/WrappedParameter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/beust/jcommander/WrappedParameter;->hidden()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, " ["

    invoke-virtual {v1, v6}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/beust/jcommander/ParameterDescription;->getParameter()Lcom/beust/jcommander/WrappedParameter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/beust/jcommander/WrappedParameter;->getParameter()Lcom/beust/jcommander/Parameter;

    move-result-object v5

    invoke-interface {v5}, Lcom/beust/jcommander/Parameter;->names()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    const-string v5, "]"

    invoke-virtual {v1, v5}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/beust/jcommander/JCommander;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, " [<options>]"

    invoke-virtual {v1, p1}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lcom/beust/jcommander/JCommander;->getCommands()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, " [<command [<args>]]"

    invoke-virtual {v1, p1}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v2}, Lcom/beust/jcommander/JCommander;->getMainParameter()Lcom/beust/jcommander/ParameterDescription;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {v2}, Lcom/beust/jcommander/JCommander;->getMainParameter()Lcom/beust/jcommander/ParameterDescription;

    move-result-object p1

    invoke-static {p1}, Lorg/jf/util/jcommander/ExtendedCommands;->parameterArgumentNames(Lcom/beust/jcommander/ParameterDescription;)[Ljava/lang/String;

    move-result-object p1

    array-length v5, p1

    if-nez v5, :cond_5

    const-string p1, " <args>"

    :goto_2
    invoke-virtual {v1, p1}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    aget-object v5, p1, v4

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    const-string v6, " "

    invoke-virtual {v1, v6}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    if-eqz v5, :cond_7

    const-string v6, "<"

    invoke-virtual {v1, v6}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    :cond_7
    aget-object p1, p1, v4

    invoke-virtual {v1, p1}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    if-eqz v5, :cond_8

    const-string p1, ">"

    goto :goto_2

    :cond_8
    :goto_4
    invoke-virtual {v1, v3}, Lorg/jf/util/WrappedIndentingWriter;->deindent(I)V

    invoke-static {v2}, Lorg/jf/util/jcommander/ExtendedCommands;->getCommandDescription(Lcom/beust/jcommander/JCommander;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v2}, Lcom/beust/jcommander/JCommander;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/16 v5, 0x2c

    const/4 v6, 0x4

    if-eqz p1, :cond_a

    invoke-virtual {v2}, Lcom/beust/jcommander/JCommander;->getMainParameter()Lcom/beust/jcommander/ParameterDescription;

    move-result-object p1

    if-eqz p1, :cond_19

    :cond_a
    const-string p1, "\n\nOptions:"

    invoke-virtual {v1, p1}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/jf/util/WrappedIndentingWriter;->indent(I)V

    invoke-direct {p0, v2}, Lorg/jf/util/jcommander/HelpFormatter;->getSortedParameters(Lcom/beust/jcommander/JCommander;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/beust/jcommander/ParameterDescription;

    invoke-virtual {v7}, Lcom/beust/jcommander/ParameterDescription;->getParameter()Lcom/beust/jcommander/WrappedParameter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/beust/jcommander/WrappedParameter;->hidden()Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "\n"

    invoke-virtual {v1, v8}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lorg/jf/util/WrappedIndentingWriter;->indent(I)V

    invoke-virtual {v7}, Lcom/beust/jcommander/ParameterDescription;->getNames()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c

    invoke-static {v5}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v8

    invoke-virtual {v7}, Lcom/beust/jcommander/ParameterDescription;->getParameter()Lcom/beust/jcommander/WrappedParameter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/beust/jcommander/WrappedParameter;->names()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    :cond_c
    invoke-direct {p0, v7}, Lorg/jf/util/jcommander/HelpFormatter;->getParameterArity(Lcom/beust/jcommander/ParameterDescription;)I

    move-result v8

    if-lez v8, :cond_e

    invoke-static {v7}, Lorg/jf/util/jcommander/ExtendedCommands;->parameterArgumentNames(Lcom/beust/jcommander/ParameterDescription;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    :goto_6
    invoke-direct {p0, v7}, Lorg/jf/util/jcommander/HelpFormatter;->getParameterArity(Lcom/beust/jcommander/ParameterDescription;)I

    move-result v10

    if-ge v9, v10, :cond_e

    const-string v10, " "

    invoke-virtual {v1, v10}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    array-length v10, v8

    if-ge v9, v10, :cond_d

    const-string v10, "<"

    invoke-virtual {v1, v10}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    aget-object v10, v8, v9

    invoke-virtual {v1, v10}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    const-string v10, ">"

    :goto_7
    invoke-virtual {v1, v10}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    goto :goto_8

    :cond_d
    const-string v10, "<arg>"

    goto :goto_7

    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_e
    invoke-virtual {v7}, Lcom/beust/jcommander/ParameterDescription;->getDescription()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {v7}, Lcom/beust/jcommander/ParameterDescription;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_f

    const-string v8, " - "

    invoke-virtual {v1, v8}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/beust/jcommander/ParameterDescription;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v7}, Lcom/beust/jcommander/ParameterDescription;->getDefault()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_14

    const/4 v8, 0x0

    invoke-virtual {v7}, Lcom/beust/jcommander/ParameterDescription;->getParameterized()Lcom/beust/jcommander/Parameterized;

    move-result-object v9

    invoke-virtual {v9}, Lcom/beust/jcommander/Parameterized;->getType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Boolean;

    if-eq v9, v10, :cond_12

    invoke-virtual {v7}, Lcom/beust/jcommander/ParameterDescription;->getParameterized()Lcom/beust/jcommander/Parameterized;

    move-result-object v9

    invoke-virtual {v9}, Lcom/beust/jcommander/Parameterized;->getType()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_10

    goto :goto_9

    :cond_10
    const-class v9, Ljava/util/List;

    invoke-virtual {v7}, Lcom/beust/jcommander/ParameterDescription;->getParameterized()Lcom/beust/jcommander/Parameterized;

    move-result-object v10

    invoke-virtual {v10}, Lcom/beust/jcommander/Parameterized;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-virtual {v7}, Lcom/beust/jcommander/ParameterDescription;->getDefault()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_13

    :cond_11
    invoke-virtual {v7}, Lcom/beust/jcommander/ParameterDescription;->getDefault()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    :cond_12
    :goto_9
    invoke-virtual {v7}, Lcom/beust/jcommander/ParameterDescription;->getDefault()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_13

    const-string v8, "True"

    :cond_13
    :goto_a
    if-eqz v8, :cond_14

    const-string v7, " (default: "

    invoke-virtual {v1, v7}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    const-string v7, ")"

    invoke-virtual {v1, v7}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v1, v6}, Lorg/jf/util/WrappedIndentingWriter;->deindent(I)V

    goto/16 :goto_5

    :cond_15
    invoke-virtual {v2}, Lcom/beust/jcommander/JCommander;->getMainParameter()Lcom/beust/jcommander/ParameterDescription;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {v2}, Lcom/beust/jcommander/JCommander;->getMainParameter()Lcom/beust/jcommander/ParameterDescription;

    move-result-object p1

    invoke-static {p1}, Lorg/jf/util/jcommander/ExtendedCommands;->parameterArgumentNames(Lcom/beust/jcommander/ParameterDescription;)[Ljava/lang/String;

    move-result-object p1

    const-string v7, "\n"

    invoke-virtual {v1, v7}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lorg/jf/util/WrappedIndentingWriter;->indent(I)V

    array-length v7, p1

    if-lez v7, :cond_16

    const-string v7, "<"

    invoke-virtual {v1, v7}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    aget-object p1, p1, v4

    invoke-virtual {v1, p1}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    const-string p1, ">"

    :goto_b
    invoke-virtual {v1, p1}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    goto :goto_c

    :cond_16
    const-string p1, "<args>"

    goto :goto_b

    :goto_c
    invoke-virtual {v2}, Lcom/beust/jcommander/JCommander;->getMainParameterDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_17

    const-string p1, " - "

    invoke-virtual {v1, p1}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/beust/jcommander/JCommander;->getMainParameterDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    :cond_17
    invoke-virtual {v1, v6}, Lorg/jf/util/WrappedIndentingWriter;->deindent(I)V

    :cond_18
    invoke-virtual {v1, v3}, Lorg/jf/util/WrappedIndentingWriter;->deindent(I)V

    :cond_19
    invoke-virtual {v2}, Lcom/beust/jcommander/JCommander;->getCommands()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1e

    const-string p1, "\n\nCommands:"

    invoke-virtual {v1, p1}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/jf/util/WrappedIndentingWriter;->indent(I)V

    invoke-virtual {v2}, Lcom/beust/jcommander/JCommander;->getCommands()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lcom/beust/jcommander/internal/Lists;->newArrayList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    new-instance v7, Lorg/jf/util/jcommander/HelpFormatter$2;

    invoke-direct {v7, p0}, Lorg/jf/util/jcommander/HelpFormatter$2;-><init>(Lorg/jf/util/jcommander/HelpFormatter;)V

    invoke-static {p1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/beust/jcommander/JCommander;

    invoke-virtual {v7}, Lcom/beust/jcommander/JCommander;->getObjects()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/beust/jcommander/Parameters;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/beust/jcommander/Parameters;

    invoke-interface {v9}, Lcom/beust/jcommander/Parameters;->hidden()Z

    move-result v9

    if-nez v9, :cond_1a

    const-string v9, "\n"

    invoke-virtual {v1, v9}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lorg/jf/util/WrappedIndentingWriter;->indent(I)V

    invoke-virtual {v1, v8}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    invoke-static {v7}, Lorg/jf/util/jcommander/HelpFormatter;->getCommandAliases(Lcom/beust/jcommander/JCommander;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1b

    const-string v9, "("

    invoke-virtual {v1, v9}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    const-string v7, ")"

    invoke-virtual {v1, v7}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {v2, v8}, Lcom/beust/jcommander/JCommander;->getCommandDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1c

    const-string v8, " - "

    invoke-virtual {v1, v8}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {v1, v6}, Lorg/jf/util/WrappedIndentingWriter;->deindent(I)V

    goto :goto_d

    :cond_1d
    invoke-virtual {v1, v3}, Lorg/jf/util/WrappedIndentingWriter;->deindent(I)V

    :cond_1e
    invoke-static {v2}, Lorg/jf/util/jcommander/HelpFormatter;->getPostfixDescription(Lcom/beust/jcommander/JCommander;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/jf/util/WrappedIndentingWriter;->write(Ljava/lang/String;)V

    :cond_1f
    invoke-virtual {v1}, Lorg/jf/util/WrappedIndentingWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs format([Lcom/beust/jcommander/JCommander;)Ljava/lang/String;
    .registers 2
    .param p1    # [Lcom/beust/jcommander/JCommander;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jf/util/jcommander/HelpFormatter;->format(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public width(I)Lorg/jf/util/jcommander/HelpFormatter;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iput p1, p0, Lorg/jf/util/jcommander/HelpFormatter;->width:I

    return-object p0
.end method
