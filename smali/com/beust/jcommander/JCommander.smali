.class public Lcom/beust/jcommander/JCommander;
.super Ljava/lang/Object;


# static fields
.field private static CONVERTER_FACTORIES:Ljava/util/LinkedList; = null

.field public static final DEBUG_PROPERTY:Ljava/lang/String; = "jcommander.debug"

.field private static m_console:Lcom/beust/jcommander/internal/Console;


# instance fields
.field private final DEFAULT_VARIABLE_ARITY:Lcom/beust/jcommander/IVariableArity;

.field private aliasMap:Ljava/util/Map;

.field private m_acceptUnknownOptions:Z

.field private m_allowAbbreviatedOptions:Z

.field private m_allowParameterOverwriting:Z

.field private m_bundle:Ljava/util/ResourceBundle;

.field private m_caseSensitiveOptions:Z

.field private m_columnSize:I

.field private m_commands:Ljava/util/Map;

.field private m_defaultProvider:Lcom/beust/jcommander/IDefaultProvider;

.field private m_descriptions:Ljava/util/Map;

.field private m_fields:Ljava/util/Map;

.field private m_firstTimeMainParameter:Z

.field private m_helpWasSpecified:Z

.field private m_mainParameter:Lcom/beust/jcommander/Parameterized;

.field private m_mainParameterAnnotation:Lcom/beust/jcommander/Parameter;

.field private m_mainParameterDescription:Lcom/beust/jcommander/ParameterDescription;

.field private m_mainParameterObject:Ljava/lang/Object;

.field private m_objects:Ljava/util/List;

.field private m_parameterDescriptionComparator:Ljava/util/Comparator;

.field private m_parsedAlias:Ljava/lang/String;

.field private m_parsedCommand:Ljava/lang/String;

.field private m_programName:Lcom/beust/jcommander/JCommander$ProgramName;

.field private m_requiredFields:Ljava/util/Map;

.field private m_unknownArgs:Ljava/util/List;

.field private m_verbose:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/beust/jcommander/internal/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    sput-object v0, Lcom/beust/jcommander/JCommander;->CONVERTER_FACTORIES:Ljava/util/LinkedList;

    new-instance v1, Lcom/beust/jcommander/internal/DefaultConverterFactory;

    invoke-direct {v1}, Lcom/beust/jcommander/internal/DefaultConverterFactory;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/beust/jcommander/internal/Lists;->newArrayList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/beust/jcommander/JCommander;->m_objects:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/beust/jcommander/JCommander;->m_firstTimeMainParameter:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/beust/jcommander/JCommander;->m_mainParameter:Lcom/beust/jcommander/Parameterized;

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newHashMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_requiredFields:Ljava/util/Map;

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newHashMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_fields:Ljava/util/Map;

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newLinkedHashMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_commands:Ljava/util/Map;

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newLinkedHashMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->aliasMap:Ljava/util/Map;

    new-instance v2, Lcom/beust/jcommander/JCommander$1;

    invoke-direct {v2, p0}, Lcom/beust/jcommander/JCommander$1;-><init>(Lcom/beust/jcommander/JCommander;)V

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_parameterDescriptionComparator:Ljava/util/Comparator;

    const/16 v2, 0x4f

    iput v2, p0, Lcom/beust/jcommander/JCommander;->m_columnSize:I

    invoke-static {}, Lcom/beust/jcommander/internal/Lists;->newArrayList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_unknownArgs:Ljava/util/List;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/beust/jcommander/JCommander;->m_acceptUnknownOptions:Z

    iput-boolean v2, p0, Lcom/beust/jcommander/JCommander;->m_allowParameterOverwriting:Z

    new-instance v3, Lcom/beust/jcommander/JCommander$DefaultVariableArity;

    invoke-direct {v3, p0, v1}, Lcom/beust/jcommander/JCommander$DefaultVariableArity;-><init>(Lcom/beust/jcommander/JCommander;Lcom/beust/jcommander/JCommander$1;)V

    iput-object v3, p0, Lcom/beust/jcommander/JCommander;->DEFAULT_VARIABLE_ARITY:Lcom/beust/jcommander/IVariableArity;

    iput v2, p0, Lcom/beust/jcommander/JCommander;->m_verbose:I

    iput-boolean v0, p0, Lcom/beust/jcommander/JCommander;->m_caseSensitiveOptions:Z

    iput-boolean v2, p0, Lcom/beust/jcommander/JCommander;->m_allowAbbreviatedOptions:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/beust/jcommander/internal/Lists;->newArrayList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/beust/jcommander/JCommander;->m_objects:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/beust/jcommander/JCommander;->m_firstTimeMainParameter:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/beust/jcommander/JCommander;->m_mainParameter:Lcom/beust/jcommander/Parameterized;

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newHashMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_requiredFields:Ljava/util/Map;

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newHashMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_fields:Ljava/util/Map;

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newLinkedHashMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_commands:Ljava/util/Map;

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newLinkedHashMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->aliasMap:Ljava/util/Map;

    new-instance v2, Lcom/beust/jcommander/JCommander$1;

    invoke-direct {v2, p0}, Lcom/beust/jcommander/JCommander$1;-><init>(Lcom/beust/jcommander/JCommander;)V

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_parameterDescriptionComparator:Ljava/util/Comparator;

    const/16 v2, 0x4f

    iput v2, p0, Lcom/beust/jcommander/JCommander;->m_columnSize:I

    invoke-static {}, Lcom/beust/jcommander/internal/Lists;->newArrayList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_unknownArgs:Ljava/util/List;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/beust/jcommander/JCommander;->m_acceptUnknownOptions:Z

    iput-boolean v2, p0, Lcom/beust/jcommander/JCommander;->m_allowParameterOverwriting:Z

    new-instance v3, Lcom/beust/jcommander/JCommander$DefaultVariableArity;

    invoke-direct {v3, p0, v1}, Lcom/beust/jcommander/JCommander$DefaultVariableArity;-><init>(Lcom/beust/jcommander/JCommander;Lcom/beust/jcommander/JCommander$1;)V

    iput-object v3, p0, Lcom/beust/jcommander/JCommander;->DEFAULT_VARIABLE_ARITY:Lcom/beust/jcommander/IVariableArity;

    iput v2, p0, Lcom/beust/jcommander/JCommander;->m_verbose:I

    iput-boolean v0, p0, Lcom/beust/jcommander/JCommander;->m_caseSensitiveOptions:Z

    iput-boolean v2, p0, Lcom/beust/jcommander/JCommander;->m_allowAbbreviatedOptions:Z

    invoke-virtual {p0, p1}, Lcom/beust/jcommander/JCommander;->addObject(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/beust/jcommander/JCommander;->createDescriptions()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/ResourceBundle;)V
    .registers 7
    .param p2    # Ljava/util/ResourceBundle;
        .annotation runtime Lcom/beust/jcommander/internal/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/beust/jcommander/internal/Lists;->newArrayList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/beust/jcommander/JCommander;->m_objects:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/beust/jcommander/JCommander;->m_firstTimeMainParameter:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/beust/jcommander/JCommander;->m_mainParameter:Lcom/beust/jcommander/Parameterized;

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newHashMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_requiredFields:Ljava/util/Map;

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newHashMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_fields:Ljava/util/Map;

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newLinkedHashMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_commands:Ljava/util/Map;

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newLinkedHashMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->aliasMap:Ljava/util/Map;

    new-instance v2, Lcom/beust/jcommander/JCommander$1;

    invoke-direct {v2, p0}, Lcom/beust/jcommander/JCommander$1;-><init>(Lcom/beust/jcommander/JCommander;)V

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_parameterDescriptionComparator:Ljava/util/Comparator;

    const/16 v2, 0x4f

    iput v2, p0, Lcom/beust/jcommander/JCommander;->m_columnSize:I

    invoke-static {}, Lcom/beust/jcommander/internal/Lists;->newArrayList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_unknownArgs:Ljava/util/List;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/beust/jcommander/JCommander;->m_acceptUnknownOptions:Z

    iput-boolean v2, p0, Lcom/beust/jcommander/JCommander;->m_allowParameterOverwriting:Z

    new-instance v3, Lcom/beust/jcommander/JCommander$DefaultVariableArity;

    invoke-direct {v3, p0, v1}, Lcom/beust/jcommander/JCommander$DefaultVariableArity;-><init>(Lcom/beust/jcommander/JCommander;Lcom/beust/jcommander/JCommander$1;)V

    iput-object v3, p0, Lcom/beust/jcommander/JCommander;->DEFAULT_VARIABLE_ARITY:Lcom/beust/jcommander/IVariableArity;

    iput v2, p0, Lcom/beust/jcommander/JCommander;->m_verbose:I

    iput-boolean v0, p0, Lcom/beust/jcommander/JCommander;->m_caseSensitiveOptions:Z

    iput-boolean v2, p0, Lcom/beust/jcommander/JCommander;->m_allowAbbreviatedOptions:Z

    invoke-virtual {p0, p1}, Lcom/beust/jcommander/JCommander;->addObject(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/beust/jcommander/JCommander;->setDescriptionsBundle(Ljava/util/ResourceBundle;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Object;Ljava/util/ResourceBundle;[Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/beust/jcommander/internal/Lists;->newArrayList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/beust/jcommander/JCommander;->m_objects:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/beust/jcommander/JCommander;->m_firstTimeMainParameter:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/beust/jcommander/JCommander;->m_mainParameter:Lcom/beust/jcommander/Parameterized;

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newHashMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_requiredFields:Ljava/util/Map;

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newHashMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_fields:Ljava/util/Map;

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newLinkedHashMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_commands:Ljava/util/Map;

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newLinkedHashMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->aliasMap:Ljava/util/Map;

    new-instance v2, Lcom/beust/jcommander/JCommander$1;

    invoke-direct {v2, p0}, Lcom/beust/jcommander/JCommander$1;-><init>(Lcom/beust/jcommander/JCommander;)V

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_parameterDescriptionComparator:Ljava/util/Comparator;

    const/16 v2, 0x4f

    iput v2, p0, Lcom/beust/jcommander/JCommander;->m_columnSize:I

    invoke-static {}, Lcom/beust/jcommander/internal/Lists;->newArrayList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_unknownArgs:Ljava/util/List;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/beust/jcommander/JCommander;->m_acceptUnknownOptions:Z

    iput-boolean v2, p0, Lcom/beust/jcommander/JCommander;->m_allowParameterOverwriting:Z

    new-instance v3, Lcom/beust/jcommander/JCommander$DefaultVariableArity;

    invoke-direct {v3, p0, v1}, Lcom/beust/jcommander/JCommander$DefaultVariableArity;-><init>(Lcom/beust/jcommander/JCommander;Lcom/beust/jcommander/JCommander$1;)V

    iput-object v3, p0, Lcom/beust/jcommander/JCommander;->DEFAULT_VARIABLE_ARITY:Lcom/beust/jcommander/IVariableArity;

    iput v2, p0, Lcom/beust/jcommander/JCommander;->m_verbose:I

    iput-boolean v0, p0, Lcom/beust/jcommander/JCommander;->m_caseSensitiveOptions:Z

    iput-boolean v2, p0, Lcom/beust/jcommander/JCommander;->m_allowAbbreviatedOptions:Z

    invoke-virtual {p0, p1}, Lcom/beust/jcommander/JCommander;->addObject(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/beust/jcommander/JCommander;->setDescriptionsBundle(Ljava/util/ResourceBundle;)V

    invoke-virtual {p0, p3}, Lcom/beust/jcommander/JCommander;->parse([Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/beust/jcommander/internal/Lists;->newArrayList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/beust/jcommander/JCommander;->m_objects:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/beust/jcommander/JCommander;->m_firstTimeMainParameter:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/beust/jcommander/JCommander;->m_mainParameter:Lcom/beust/jcommander/Parameterized;

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newHashMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_requiredFields:Ljava/util/Map;

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newHashMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_fields:Ljava/util/Map;

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newLinkedHashMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_commands:Ljava/util/Map;

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newLinkedHashMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->aliasMap:Ljava/util/Map;

    new-instance v2, Lcom/beust/jcommander/JCommander$1;

    invoke-direct {v2, p0}, Lcom/beust/jcommander/JCommander$1;-><init>(Lcom/beust/jcommander/JCommander;)V

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_parameterDescriptionComparator:Ljava/util/Comparator;

    const/16 v2, 0x4f

    iput v2, p0, Lcom/beust/jcommander/JCommander;->m_columnSize:I

    invoke-static {}, Lcom/beust/jcommander/internal/Lists;->newArrayList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_unknownArgs:Ljava/util/List;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/beust/jcommander/JCommander;->m_acceptUnknownOptions:Z

    iput-boolean v2, p0, Lcom/beust/jcommander/JCommander;->m_allowParameterOverwriting:Z

    new-instance v3, Lcom/beust/jcommander/JCommander$DefaultVariableArity;

    invoke-direct {v3, p0, v1}, Lcom/beust/jcommander/JCommander$DefaultVariableArity;-><init>(Lcom/beust/jcommander/JCommander;Lcom/beust/jcommander/JCommander$1;)V

    iput-object v3, p0, Lcom/beust/jcommander/JCommander;->DEFAULT_VARIABLE_ARITY:Lcom/beust/jcommander/IVariableArity;

    iput v2, p0, Lcom/beust/jcommander/JCommander;->m_verbose:I

    iput-boolean v0, p0, Lcom/beust/jcommander/JCommander;->m_caseSensitiveOptions:Z

    iput-boolean v2, p0, Lcom/beust/jcommander/JCommander;->m_allowAbbreviatedOptions:Z

    invoke-virtual {p0, p1}, Lcom/beust/jcommander/JCommander;->addObject(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/beust/jcommander/JCommander;->parse([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/beust/jcommander/JCommander;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/beust/jcommander/JCommander;->isOption([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private addDescription(Ljava/lang/Object;)V
    .registers 16

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/beust/jcommander/Parameterized;->parseArg(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beust/jcommander/Parameterized;

    invoke-virtual {v1}, Lcom/beust/jcommander/Parameterized;->getWrappedParameter()Lcom/beust/jcommander/WrappedParameter;

    move-result-object v2

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/beust/jcommander/WrappedParameter;->getParameter()Lcom/beust/jcommander/Parameter;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/beust/jcommander/WrappedParameter;->getParameter()Lcom/beust/jcommander/Parameter;

    move-result-object v9

    invoke-interface {v9}, Lcom/beust/jcommander/Parameter;->names()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found main parameter:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/beust/jcommander/JCommander;->p(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/beust/jcommander/JCommander;->m_mainParameter:Lcom/beust/jcommander/Parameterized;

    if-nez v2, :cond_1

    iput-object v1, p0, Lcom/beust/jcommander/JCommander;->m_mainParameter:Lcom/beust/jcommander/Parameterized;

    iput-object p1, p0, Lcom/beust/jcommander/JCommander;->m_mainParameterObject:Ljava/lang/Object;

    iput-object v9, p0, Lcom/beust/jcommander/JCommander;->m_mainParameterAnnotation:Lcom/beust/jcommander/Parameter;

    new-instance v8, Lcom/beust/jcommander/ParameterDescription;

    iget-object v6, p0, Lcom/beust/jcommander/JCommander;->m_bundle:Ljava/util/ResourceBundle;

    move-object v2, v8

    move-object v3, p1

    move-object v4, v9

    move-object v5, v1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/beust/jcommander/ParameterDescription;-><init>(Ljava/lang/Object;Lcom/beust/jcommander/Parameter;Lcom/beust/jcommander/Parameterized;Ljava/util/ResourceBundle;Lcom/beust/jcommander/JCommander;)V

    iput-object v8, p0, Lcom/beust/jcommander/JCommander;->m_mainParameterDescription:Lcom/beust/jcommander/ParameterDescription;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/beust/jcommander/ParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Only one @Parameter with no names attribute is allowed, found:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/beust/jcommander/JCommander;->m_mainParameter:Lcom/beust/jcommander/Parameterized;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v10, Lcom/beust/jcommander/ParameterDescription;

    iget-object v6, p0, Lcom/beust/jcommander/JCommander;->m_bundle:Ljava/util/ResourceBundle;

    move-object v2, v10

    move-object v3, p1

    move-object v4, v9

    move-object v5, v1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/beust/jcommander/ParameterDescription;-><init>(Ljava/lang/Object;Lcom/beust/jcommander/Parameter;Lcom/beust/jcommander/Parameterized;Ljava/util/ResourceBundle;Lcom/beust/jcommander/JCommander;)V

    invoke-interface {v9}, Lcom/beust/jcommander/Parameter;->names()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v8, v3, :cond_0

    aget-object v4, v2, v8

    iget-object v5, p0, Lcom/beust/jcommander/JCommander;->m_descriptions:Ljava/util/Map;

    new-instance v6, Lcom/beust/jcommander/StringKey;

    invoke-direct {v6, v4}, Lcom/beust/jcommander/StringKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Adding description for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/beust/jcommander/JCommander;->p(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/beust/jcommander/JCommander;->m_fields:Ljava/util/Map;

    invoke-interface {v5, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/beust/jcommander/JCommander;->m_descriptions:Ljava/util/Map;

    new-instance v6, Lcom/beust/jcommander/StringKey;

    invoke-direct {v6, v4}, Lcom/beust/jcommander/StringKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9}, Lcom/beust/jcommander/Parameter;->required()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/beust/jcommander/JCommander;->m_requiredFields:Ljava/util/Map;

    invoke-interface {v4, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/beust/jcommander/ParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found the option "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " multiple times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {v1}, Lcom/beust/jcommander/Parameterized;->getDelegateAnnotation()Lcom/beust/jcommander/ParametersDelegate;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v1, p1}, Lcom/beust/jcommander/Parameterized;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v2}, Lcom/beust/jcommander/JCommander;->addDescription(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    new-instance p1, Lcom/beust/jcommander/ParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Delegate field \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/beust/jcommander/Parameterized;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' cannot be null."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/beust/jcommander/WrappedParameter;->getDynamicParameter()Lcom/beust/jcommander/DynamicParameter;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/beust/jcommander/WrappedParameter;->getDynamicParameter()Lcom/beust/jcommander/DynamicParameter;

    move-result-object v9

    invoke-interface {v9}, Lcom/beust/jcommander/DynamicParameter;->names()[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    :goto_2
    if-ge v8, v11, :cond_0

    aget-object v12, v10, v8

    iget-object v2, p0, Lcom/beust/jcommander/JCommander;->m_descriptions:Ljava/util/Map;

    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding description for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/beust/jcommander/JCommander;->p(Ljava/lang/String;)V

    new-instance v13, Lcom/beust/jcommander/ParameterDescription;

    iget-object v6, p0, Lcom/beust/jcommander/JCommander;->m_bundle:Ljava/util/ResourceBundle;

    move-object v2, v13

    move-object v3, p1

    move-object v4, v9

    move-object v5, v1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/beust/jcommander/ParameterDescription;-><init>(Ljava/lang/Object;Lcom/beust/jcommander/DynamicParameter;Lcom/beust/jcommander/Parameterized;Ljava/util/ResourceBundle;Lcom/beust/jcommander/JCommander;)V

    iget-object v2, p0, Lcom/beust/jcommander/JCommander;->m_fields:Ljava/util/Map;

    invoke-interface {v2, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/beust/jcommander/JCommander;->m_descriptions:Ljava/util/Map;

    new-instance v3, Lcom/beust/jcommander/StringKey;

    invoke-direct {v3, v12}, Lcom/beust/jcommander/StringKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9}, Lcom/beust/jcommander/DynamicParameter;->required()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/beust/jcommander/JCommander;->m_requiredFields:Ljava/util/Map;

    invoke-interface {v2, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_9
    new-instance p1, Lcom/beust/jcommander/ParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found the option "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " multiple times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    return-void
.end method

.method private convertToList(Ljava/lang/String;Lcom/beust/jcommander/IStringConverter;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/beust/jcommander/converters/IParameterSplitter;

    invoke-static {}, Lcom/beust/jcommander/internal/Lists;->newArrayList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, p1}, Lcom/beust/jcommander/converters/IParameterSplitter;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p3}, Lcom/beust/jcommander/IStringConverter;->convert(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createDescriptions()V
    .registers 3

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newHashMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/beust/jcommander/JCommander;->m_descriptions:Ljava/util/Map;

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/beust/jcommander/JCommander;->addDescription(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private expandArgs([Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    invoke-static {}, Lcom/beust/jcommander/internal/Lists;->newArrayList()Ljava/util/List;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/beust/jcommander/JCommander;->readFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_1
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_0
    invoke-direct {p0, v4}, Lcom/beust/jcommander/JCommander;->expandDynamicArg(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/beust/jcommander/internal/Lists;->newArrayList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/beust/jcommander/JCommander;->isOption([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v4, v3}, Lcom/beust/jcommander/JCommander;->getSeparatorFor([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private expandDynamicArg(Ljava/lang/String;)Ljava/util/List;
    .registers 10

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_descriptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beust/jcommander/ParameterDescription;

    invoke-virtual {v1}, Lcom/beust/jcommander/ParameterDescription;->isDynamicParameter()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/beust/jcommander/ParameterDescription;->getParameter()Lcom/beust/jcommander/WrappedParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beust/jcommander/WrappedParameter;->names()[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v1, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    :goto_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v2

    goto :goto_1
.end method

.method private findCommand(Lcom/beust/jcommander/JCommander$ProgramName;)Lcom/beust/jcommander/JCommander;
    .registers 5

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_commands:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/beust/jcommander/JCommander;->m_caseSensitiveOptions:Z

    iget-boolean v2, p0, Lcom/beust/jcommander/JCommander;->m_allowAbbreviatedOptions:Z

    invoke-static {v0, p1, v1, v2}, Lcom/beust/jcommander/FuzzyMap;->findInMap(Ljava/util/Map;Lcom/beust/jcommander/FuzzyMap$IKey;ZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beust/jcommander/JCommander;

    return-object p1
.end method

.method private findCommandByAlias(Ljava/lang/String;)Lcom/beust/jcommander/JCommander;
    .registers 3

    invoke-direct {p0, p1}, Lcom/beust/jcommander/JCommander;->findProgramName(Ljava/lang/String;)Lcom/beust/jcommander/JCommander$ProgramName;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/beust/jcommander/JCommander;->findCommand(Lcom/beust/jcommander/JCommander$ProgramName;)Lcom/beust/jcommander/JCommander;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "There appears to be inconsistency in the internal command database.  This is likely a bug. Please report."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private findParameterDescription(Ljava/lang/String;)Lcom/beust/jcommander/ParameterDescription;
    .registers 5

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_descriptions:Ljava/util/Map;

    new-instance v1, Lcom/beust/jcommander/StringKey;

    invoke-direct {v1, p1}, Lcom/beust/jcommander/StringKey;-><init>(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/beust/jcommander/JCommander;->m_caseSensitiveOptions:Z

    iget-boolean v2, p0, Lcom/beust/jcommander/JCommander;->m_allowAbbreviatedOptions:Z

    invoke-static {v0, v1, p1, v2}, Lcom/beust/jcommander/FuzzyMap;->findInMap(Ljava/util/Map;Lcom/beust/jcommander/FuzzyMap$IKey;ZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beust/jcommander/ParameterDescription;

    return-object p1
.end method

.method private findProgramName(Ljava/lang/String;)Lcom/beust/jcommander/JCommander$ProgramName;
    .registers 5

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->aliasMap:Ljava/util/Map;

    new-instance v1, Lcom/beust/jcommander/StringKey;

    invoke-direct {v1, p1}, Lcom/beust/jcommander/StringKey;-><init>(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/beust/jcommander/JCommander;->m_caseSensitiveOptions:Z

    iget-boolean v2, p0, Lcom/beust/jcommander/JCommander;->m_allowAbbreviatedOptions:Z

    invoke-static {v0, v1, p1, v2}, Lcom/beust/jcommander/FuzzyMap;->findInMap(Ljava/util/Map;Lcom/beust/jcommander/FuzzyMap$IKey;ZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beust/jcommander/JCommander$ProgramName;

    return-object p1
.end method

.method public static getConsole()Lcom/beust/jcommander/internal/Console;
    .registers 4

    sget-object v0, Lcom/beust/jcommander/JCommander;->m_console:Lcom/beust/jcommander/internal/Console;

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Ljava/lang/System;

    const-string v1, "console"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/beust/jcommander/internal/JDK6Console;

    invoke-direct {v1, v0}, Lcom/beust/jcommander/internal/JDK6Console;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/beust/jcommander/JCommander;->m_console:Lcom/beust/jcommander/internal/Console;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lcom/beust/jcommander/internal/DefaultConsole;

    invoke-direct {v0}, Lcom/beust/jcommander/internal/DefaultConsole;-><init>()V

    sput-object v0, Lcom/beust/jcommander/JCommander;->m_console:Lcom/beust/jcommander/internal/Console;

    :cond_0
    :goto_0
    sget-object v0, Lcom/beust/jcommander/JCommander;->m_console:Lcom/beust/jcommander/internal/Console;

    return-object v0
.end method

.method private getDescriptionFor([Ljava/lang/String;Ljava/lang/String;)Lcom/beust/jcommander/ParameterDescription;
    .registers 8

    invoke-direct {p0, p2}, Lcom/beust/jcommander/JCommander;->getPrefixDescriptionFor(Ljava/lang/String;)Lcom/beust/jcommander/ParameterDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    invoke-direct {p0, p2}, Lcom/beust/jcommander/JCommander;->getPrefixDescriptionFor(Ljava/lang/String;)Lcom/beust/jcommander/ParameterDescription;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v0, v4

    :cond_1
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/beust/jcommander/ParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown parameter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getI18nString(Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    return-object p3
.end method

.method private getMainParameter(Ljava/lang/String;)Ljava/util/List;
    .registers 5

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_mainParameter:Lcom/beust/jcommander/Parameterized;

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/beust/jcommander/JCommander;->m_mainParameter:Lcom/beust/jcommander/Parameterized;

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_mainParameterObject:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/beust/jcommander/Parameterized;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    invoke-static {}, Lcom/beust/jcommander/internal/Lists;->newArrayList()Ljava/util/List;

    move-result-object p1

    const-class v0, Ljava/util/List;

    iget-object v1, p0, Lcom/beust/jcommander/JCommander;->m_mainParameter:Lcom/beust/jcommander/Parameterized;

    invoke-virtual {v1}, Lcom/beust/jcommander/Parameterized;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_mainParameter:Lcom/beust/jcommander/Parameterized;

    iget-object v1, p0, Lcom/beust/jcommander/JCommander;->m_mainParameterObject:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/beust/jcommander/Parameterized;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/beust/jcommander/ParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Main parameter field "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/beust/jcommander/JCommander;->m_mainParameter:Lcom/beust/jcommander/Parameterized;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " needs to be of type List, not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beust/jcommander/JCommander;->m_mainParameter:Lcom/beust/jcommander/Parameterized;

    invoke-virtual {v1}, Lcom/beust/jcommander/Parameterized;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/beust/jcommander/JCommander;->m_firstTimeMainParameter:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/beust/jcommander/JCommander;->m_firstTimeMainParameter:Z

    :cond_2
    return-object p1

    :cond_3
    new-instance v0, Lcom/beust/jcommander/ParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Was passed main parameter \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' but no main parameter was defined"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getOptionPrefixes([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/beust/jcommander/JCommander;->getDescriptionFor([Ljava/lang/String;Ljava/lang/String;)Lcom/beust/jcommander/ParameterDescription;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/beust/jcommander/ParameterDescription;->getObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/beust/jcommander/Parameters;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/beust/jcommander/Parameters;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/beust/jcommander/Parameters;->optionPrefixes()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "-"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/beust/jcommander/Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/beust/jcommander/Parameters;

    if-eqz v1, :cond_1

    const-string v2, "-"

    invoke-interface {v1}, Lcom/beust/jcommander/Parameters;->optionPrefixes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/beust/jcommander/Parameters;->optionPrefixes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/beust/jcommander/Strings;->isStringEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private getParameterDescriptionComparator()Ljava/util/Comparator;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_parameterDescriptionComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method private getPrefixDescriptionFor(Ljava/lang/String;)Lcom/beust/jcommander/ParameterDescription;
    .registers 5

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_descriptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/beust/jcommander/FuzzyMap$IKey;

    invoke-interface {v2}, Lcom/beust/jcommander/FuzzyMap$IKey;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beust/jcommander/ParameterDescription;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSeparatorFor([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/beust/jcommander/JCommander;->getDescriptionFor([Ljava/lang/String;Ljava/lang/String;)Lcom/beust/jcommander/ParameterDescription;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/beust/jcommander/ParameterDescription;->getObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/beust/jcommander/Parameters;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/beust/jcommander/Parameters;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/beust/jcommander/Parameters;->separators()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, " "

    return-object p1
.end method

.method private initializeDefaultValue(Lcom/beust/jcommander/ParameterDescription;)V
    .registers 7

    invoke-virtual {p1}, Lcom/beust/jcommander/ParameterDescription;->getParameter()Lcom/beust/jcommander/WrappedParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beust/jcommander/WrappedParameter;->names()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/beust/jcommander/JCommander;->m_defaultProvider:Lcom/beust/jcommander/IDefaultProvider;

    invoke-interface {v4, v3}, Lcom/beust/jcommander/IDefaultProvider;->getDefaultValueFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with default value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beust/jcommander/JCommander;->p(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v4, v0}, Lcom/beust/jcommander/ParameterDescription;->addValue(Ljava/lang/String;Z)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initializeDefaultValues()V
    .registers 3

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_defaultProvider:Lcom/beust/jcommander/IDefaultProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_descriptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beust/jcommander/ParameterDescription;

    invoke-direct {p0, v1}, Lcom/beust/jcommander/JCommander;->initializeDefaultValue(Lcom/beust/jcommander/ParameterDescription;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_commands:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beust/jcommander/JCommander;

    invoke-direct {v1}, Lcom/beust/jcommander/JCommander;->initializeDefaultValues()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private instantiateConverter(Ljava/lang/String;Ljava/lang/Class;)Lcom/beust/jcommander/IStringConverter;
    .registers 13

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p2

    check-cast p2, [Ljava/lang/reflect/Constructor;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move-object v5, v4

    const/4 v3, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v0, :cond_2

    aget-object v7, p2, v3

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v9, v8

    if-ne v9, v6, :cond_0

    aget-object v6, v8, v2

    const-class v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v4, v7

    goto :goto_1

    :cond_0
    array-length v6, v8

    if-nez v6, :cond_1

    move-object v5, v7

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    new-array p2, v6, [Ljava/lang/Object;

    aput-object p1, p2, v2

    invoke-virtual {v4, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    move-object v1, p1

    check-cast v1, Lcom/beust/jcommander/IStringConverter;

    goto :goto_3

    :cond_3
    if-eqz v5, :cond_4

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_4
    :goto_3
    return-object v1
.end method

.method private isOption([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/beust/jcommander/JCommander;->getOptionPrefixes([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private join([Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private p(Ljava/lang/String;)V
    .registers 5

    iget v0, p0, Lcom/beust/jcommander/JCommander;->m_verbose:I

    if-gtz v0, :cond_0

    const-string v0, "jcommander.debug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/beust/jcommander/JCommander;->getConsole()Lcom/beust/jcommander/internal/Console;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[JCommander] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/beust/jcommander/internal/Console;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private varargs parse(Z[Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parsing \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/beust/jcommander/JCommander;->join([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"\n  with:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/beust/jcommander/JCommander;->m_objects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/beust/jcommander/JCommander;->join([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beust/jcommander/JCommander;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_descriptions:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/beust/jcommander/JCommander;->createDescriptions()V

    :cond_0
    invoke-direct {p0}, Lcom/beust/jcommander/JCommander;->initializeDefaultValues()V

    invoke-direct {p0, p2}, Lcom/beust/jcommander/JCommander;->expandArgs([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/beust/jcommander/JCommander;->parseValues([Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/beust/jcommander/JCommander;->validateOptions()V

    :cond_1
    return-void
.end method

.method private parseValues([Ljava/lang/String;Z)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    const/4 v5, 0x1

    if-ge v1, v4, :cond_f

    if-nez v2, :cond_f

    aget-object v4, p1, v1

    invoke-static {v4}, Lcom/beust/jcommander/JCommander;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p1, v1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Parsing arg: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/beust/jcommander/JCommander;->p(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/beust/jcommander/JCommander;->findCommandByAlias(Ljava/lang/String;)Lcom/beust/jcommander/JCommander;

    move-result-object v7

    if-nez v3, :cond_8

    const-string v8, "--"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-direct {p0, p1, v6}, Lcom/beust/jcommander/JCommander;->isOption([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    if-nez v7, :cond_8

    invoke-direct {p0, v6}, Lcom/beust/jcommander/JCommander;->findParameterDescription(Ljava/lang/String;)Lcom/beust/jcommander/ParameterDescription;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/beust/jcommander/ParameterDescription;->getParameter()Lcom/beust/jcommander/WrappedParameter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/beust/jcommander/WrappedParameter;->password()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v6}, Lcom/beust/jcommander/ParameterDescription;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/beust/jcommander/ParameterDescription;->getParameter()Lcom/beust/jcommander/WrappedParameter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/beust/jcommander/WrappedParameter;->echoInput()Z

    move-result v7

    invoke-direct {p0, v4, v7}, Lcom/beust/jcommander/JCommander;->readPassword(Ljava/lang/String;Z)[C

    move-result-object v4

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v7}, Lcom/beust/jcommander/ParameterDescription;->addValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/beust/jcommander/JCommander;->m_requiredFields:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/beust/jcommander/ParameterDescription;->getParameterized()Lcom/beust/jcommander/Parameterized;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v6}, Lcom/beust/jcommander/ParameterDescription;->getParameter()Lcom/beust/jcommander/WrappedParameter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/beust/jcommander/WrappedParameter;->variableArity()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, p1, v1, v6}, Lcom/beust/jcommander/JCommander;->processVariableArity([Ljava/lang/String;ILcom/beust/jcommander/ParameterDescription;)I

    move-result v4

    :cond_1
    :goto_1
    move v5, v4

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v6}, Lcom/beust/jcommander/ParameterDescription;->getParameterized()Lcom/beust/jcommander/Parameterized;

    move-result-object v4

    invoke-virtual {v4}, Lcom/beust/jcommander/Parameterized;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v4, v7, :cond_3

    const-class v7, Ljava/lang/Boolean;

    if-ne v4, v7, :cond_4

    :cond_3
    invoke-virtual {v6}, Lcom/beust/jcommander/ParameterDescription;->getParameter()Lcom/beust/jcommander/WrappedParameter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/beust/jcommander/WrappedParameter;->arity()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    const-string v4, "true"

    invoke-virtual {v6, v4}, Lcom/beust/jcommander/ParameterDescription;->addValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/beust/jcommander/JCommander;->m_requiredFields:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/beust/jcommander/ParameterDescription;->getParameterized()Lcom/beust/jcommander/Parameterized;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1, v1, v6, v4}, Lcom/beust/jcommander/JCommander;->processFixedArity([Ljava/lang/String;ILcom/beust/jcommander/ParameterDescription;Ljava/lang/Class;)I

    move-result v4

    :goto_2
    invoke-virtual {v6}, Lcom/beust/jcommander/ParameterDescription;->isHelp()Z

    move-result v6

    if-eqz v6, :cond_1

    iput-boolean v5, p0, Lcom/beust/jcommander/JCommander;->m_helpWasSpecified:Z

    goto :goto_1

    :cond_5
    iget-boolean v5, p0, Lcom/beust/jcommander/JCommander;->m_acceptUnknownOptions:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/beust/jcommander/JCommander;->m_unknownArgs:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :goto_3
    array-length v4, p1

    if-ge v1, v4, :cond_6

    aget-object v4, p1, v1

    invoke-direct {p0, p1, v4}, Lcom/beust/jcommander/JCommander;->isOption([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/beust/jcommander/JCommander;->m_unknownArgs:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    aget-object v1, p1, v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v5

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_7
    new-instance p1, Lcom/beust/jcommander/ParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown option: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-static {v4}, Lcom/beust/jcommander/Strings;->isStringEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, "--"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    add-int/lit8 v1, v1, 0x1

    aget-object v3, p1, v1

    invoke-static {v3}, Lcom/beust/jcommander/JCommander;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x1

    :cond_9
    iget-object v8, p0, Lcom/beust/jcommander/JCommander;->m_commands:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-direct {p0, v4}, Lcom/beust/jcommander/JCommander;->getMainParameter(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iget-object v7, p0, Lcom/beust/jcommander/JCommander;->m_mainParameter:Lcom/beust/jcommander/Parameterized;

    invoke-virtual {v7}, Lcom/beust/jcommander/Parameterized;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/beust/jcommander/JCommander;->m_mainParameter:Lcom/beust/jcommander/Parameterized;

    invoke-virtual {v7}, Lcom/beust/jcommander/Parameterized;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    aget-object v7, v7, v0

    instance-of v8, v7, Ljava/lang/Class;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/beust/jcommander/JCommander;->m_mainParameter:Lcom/beust/jcommander/Parameterized;

    check-cast v7, Ljava/lang/Class;

    invoke-virtual {p0, v8, v7, v6}, Lcom/beust/jcommander/JCommander;->convertValue(Lcom/beust/jcommander/Parameterized;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_4

    :cond_a
    move-object v7, v6

    :goto_4
    iget-object v8, p0, Lcom/beust/jcommander/JCommander;->m_mainParameterDescription:Lcom/beust/jcommander/ParameterDescription;

    iget-object v9, p0, Lcom/beust/jcommander/JCommander;->m_mainParameterAnnotation:Lcom/beust/jcommander/Parameter;

    invoke-interface {v9}, Lcom/beust/jcommander/Parameter;->validateWith()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "Default"

    invoke-static {v8, v9, v10, v6}, Lcom/beust/jcommander/ParameterDescription;->validateParameter(Lcom/beust/jcommander/ParameterDescription;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/beust/jcommander/JCommander;->m_mainParameterDescription:Lcom/beust/jcommander/ParameterDescription;

    invoke-virtual {v6, v5}, Lcom/beust/jcommander/ParameterDescription;->setAssigned(Z)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    if-nez v7, :cond_d

    if-nez p2, :cond_c

    goto :goto_5

    :cond_c
    new-instance p1, Lcom/beust/jcommander/MissingCommandException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Expected a command, got "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/beust/jcommander/MissingCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_5
    if-eqz v7, :cond_e

    iget-object v2, v7, Lcom/beust/jcommander/JCommander;->m_programName:Lcom/beust/jcommander/JCommander$ProgramName;

    invoke-static {v2}, Lcom/beust/jcommander/JCommander$ProgramName;->access$000(Lcom/beust/jcommander/JCommander$ProgramName;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/beust/jcommander/JCommander;->m_parsedCommand:Ljava/lang/String;

    iput-object v4, p0, Lcom/beust/jcommander/JCommander;->m_parsedAlias:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, p1, v2}, Lcom/beust/jcommander/JCommander;->subArray([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/beust/jcommander/JCommander;->parse([Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_e
    :goto_6
    add-int/2addr v1, v5

    goto/16 :goto_0

    :cond_f
    iget-object p1, p0, Lcom/beust/jcommander/JCommander;->m_descriptions:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/beust/jcommander/ParameterDescription;

    invoke-virtual {p2}, Lcom/beust/jcommander/ParameterDescription;->isAssigned()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_fields:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/beust/jcommander/ParameterDescription;->getParameterized()Lcom/beust/jcommander/Parameterized;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/beust/jcommander/ParameterDescription;

    invoke-virtual {p2, v5}, Lcom/beust/jcommander/ParameterDescription;->setAssigned(Z)V

    goto :goto_7

    :cond_11
    return-void
.end method

.method private static pluralize(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method private processFixedArity([Ljava/lang/String;ILcom/beust/jcommander/ParameterDescription;Ljava/lang/Class;)I
    .registers 12

    invoke-virtual {p3}, Lcom/beust/jcommander/ParameterDescription;->getParameter()Lcom/beust/jcommander/WrappedParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beust/jcommander/WrappedParameter;->arity()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move v6, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v6, 0x1

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/beust/jcommander/JCommander;->processFixedArity([Ljava/lang/String;ILcom/beust/jcommander/ParameterDescription;Ljava/lang/Class;I)I

    move-result p1

    return p1
.end method

.method private processFixedArity([Ljava/lang/String;ILcom/beust/jcommander/ParameterDescription;Ljava/lang/Class;I)I
    .registers 10

    aget-object v0, p1, p2

    const/4 v1, 0x1

    if-nez p5, :cond_1

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_1

    :cond_0
    const-string p1, "true"

    invoke-virtual {p3, p1}, Lcom/beust/jcommander/ParameterDescription;->addValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/beust/jcommander/JCommander;->m_requiredFields:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/beust/jcommander/ParameterDescription;->getParameterized()Lcom/beust/jcommander/Parameterized;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    array-length p4, p1

    sub-int/2addr p4, v1

    if-ge p2, p4, :cond_4

    const-string p4, "--"

    add-int/lit8 v2, p2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    add-int v2, p2, p5

    array-length v3, p1

    if-ge v2, v3, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-gt v0, p5, :cond_2

    add-int v2, p2, v0

    add-int/2addr v2, p4

    aget-object v2, p1, v2

    invoke-static {v2}, Lcom/beust/jcommander/JCommander;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/beust/jcommander/ParameterDescription;->addValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/beust/jcommander/JCommander;->m_requiredFields:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/beust/jcommander/ParameterDescription;->getParameterized()Lcom/beust/jcommander/Parameterized;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/2addr p5, v1

    return p5

    :cond_3
    new-instance p1, Lcom/beust/jcommander/ParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Expected "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " values after "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/beust/jcommander/ParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Expected a value after parameter "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private processVariableArity([Ljava/lang/String;ILcom/beust/jcommander/ParameterDescription;)I
    .registers 13

    invoke-virtual {p3}, Lcom/beust/jcommander/ParameterDescription;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/beust/jcommander/IVariableArity;

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->DEFAULT_VARIABLE_ARITY:Lcom/beust/jcommander/IVariableArity;

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/beust/jcommander/IVariableArity;

    :goto_0
    invoke-static {}, Lcom/beust/jcommander/internal/Lists;->newArrayList()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    aget-object v3, p1, v2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/beust/jcommander/ParameterDescription;->getParameter()Lcom/beust/jcommander/WrappedParameter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beust/jcommander/WrappedParameter;->names()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/beust/jcommander/IVariableArity;->processVariableArity(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const-class v7, Ljava/util/List;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/beust/jcommander/JCommander;->processFixedArity([Ljava/lang/String;ILcom/beust/jcommander/ParameterDescription;Ljava/lang/Class;I)I

    move-result p1

    return p1
.end method

.method private static readFile(Ljava/lang/String;)Ljava/util/List;
    .registers 6

    invoke-static {}, Lcom/beust/jcommander/internal/Lists;->newArrayList()Ljava/util/List;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/beust/jcommander/ParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not read file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readPassword(Ljava/lang/String;Z)[C
    .registers 5

    invoke-static {}, Lcom/beust/jcommander/JCommander;->getConsole()Lcom/beust/jcommander/internal/Console;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/beust/jcommander/internal/Console;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/beust/jcommander/JCommander;->getConsole()Lcom/beust/jcommander/internal/Console;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/beust/jcommander/internal/Console;->readPassword(Z)[C

    move-result-object p1

    return-object p1
.end method

.method private s(I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private subArray([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6

    array-length v0, p1

    sub-int/2addr v0, p2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private validateOptions()V
    .registers 7

    iget-boolean v0, p0, Lcom/beust/jcommander/JCommander;->m_helpWasSpecified:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_requiredFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/beust/jcommander/JCommander;->m_requiredFields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/beust/jcommander/ParameterDescription;

    invoke-virtual {v2}, Lcom/beust/jcommander/ParameterDescription;->getNames()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/beust/jcommander/ParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The following "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/beust/jcommander/JCommander;->m_requiredFields:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const-string v4, "option is required: "

    const-string v5, "options are required: "

    invoke-static {v3, v4, v5}, Lcom/beust/jcommander/JCommander;->pluralize(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_mainParameterDescription:Lcom/beust/jcommander/ParameterDescription;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_mainParameterDescription:Lcom/beust/jcommander/ParameterDescription;

    invoke-virtual {v0}, Lcom/beust/jcommander/ParameterDescription;->getParameter()Lcom/beust/jcommander/WrappedParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beust/jcommander/WrappedParameter;->required()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_mainParameterDescription:Lcom/beust/jcommander/ParameterDescription;

    invoke-virtual {v0}, Lcom/beust/jcommander/ParameterDescription;->isAssigned()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/beust/jcommander/ParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Main parameters are required (\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/beust/jcommander/JCommander;->m_mainParameterDescription:Lcom/beust/jcommander/ParameterDescription;

    invoke-virtual {v2}, Lcom/beust/jcommander/ParameterDescription;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method private wrapDescription(Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .registers 9

    invoke-virtual {p0}, Lcom/beust/jcommander/JCommander;->getColumnSize()I

    move-result v0

    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    move v2, p2

    :goto_0
    array-length v3, p3

    if-ge v1, v3, :cond_2

    aget-object v3, p3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    if-gt v4, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0x1

    invoke-direct {p0, v2}, Lcom/beust/jcommander/JCommander;->s(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p2

    goto :goto_2

    :cond_1
    :goto_1
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addCommand(Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/beust/jcommander/Parameters;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/beust/jcommander/Parameters;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/beust/jcommander/Parameters;->commandNames()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Lcom/beust/jcommander/Parameters;->commandNames()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v3, p1}, Lcom/beust/jcommander/JCommander;->addCommand(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/beust/jcommander/ParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to add command "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " without specifying its names in @Parameters"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addCommand(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/beust/jcommander/JCommander;->addCommand(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs addCommand(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)V
    .registers 9

    new-instance v0, Lcom/beust/jcommander/JCommander;

    invoke-direct {v0, p2}, Lcom/beust/jcommander/JCommander;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p3}, Lcom/beust/jcommander/JCommander;->setProgramName(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p2, p0, Lcom/beust/jcommander/JCommander;->m_defaultProvider:Lcom/beust/jcommander/IDefaultProvider;

    invoke-virtual {v0, p2}, Lcom/beust/jcommander/JCommander;->setDefaultProvider(Lcom/beust/jcommander/IDefaultProvider;)V

    iget-boolean p2, p0, Lcom/beust/jcommander/JCommander;->m_acceptUnknownOptions:Z

    invoke-virtual {v0, p2}, Lcom/beust/jcommander/JCommander;->setAcceptUnknownOptions(Z)V

    iget-object p2, v0, Lcom/beust/jcommander/JCommander;->m_programName:Lcom/beust/jcommander/JCommander$ProgramName;

    iget-object v1, p0, Lcom/beust/jcommander/JCommander;->m_commands:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->aliasMap:Ljava/util/Map;

    new-instance v1, Lcom/beust/jcommander/StringKey;

    invoke-direct {v1, p1}, Lcom/beust/jcommander/StringKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p3, v1

    new-instance v3, Lcom/beust/jcommander/StringKey;

    invoke-direct {v3, v2}, Lcom/beust/jcommander/StringKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/beust/jcommander/JCommander;->aliasMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/beust/jcommander/JCommander$ProgramName;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Lcom/beust/jcommander/JCommander$ProgramName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Lcom/beust/jcommander/ParameterException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot set alias "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " command because it has already been defined for "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/beust/jcommander/JCommander$ProgramName;->access$000(Lcom/beust/jcommander/JCommander$ProgramName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " command"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/beust/jcommander/JCommander;->aliasMap:Ljava/util/Map;

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public addConverterFactory(Lcom/beust/jcommander/IStringConverterFactory;)V
    .registers 3

    sget-object v0, Lcom/beust/jcommander/JCommander;->CONVERTER_FACTORIES:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public final addObject(Ljava/lang/Object;)V
    .registers 6

    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/beust/jcommander/JCommander;->m_objects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/beust/jcommander/JCommander;->m_objects:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public convertValue(Lcom/beust/jcommander/ParameterDescription;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p1}, Lcom/beust/jcommander/ParameterDescription;->getParameterized()Lcom/beust/jcommander/Parameterized;

    move-result-object v0

    invoke-virtual {p1}, Lcom/beust/jcommander/ParameterDescription;->getParameterized()Lcom/beust/jcommander/Parameterized;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beust/jcommander/Parameterized;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/beust/jcommander/JCommander;->convertValue(Lcom/beust/jcommander/Parameterized;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convertValue(Lcom/beust/jcommander/Parameterized;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 10

    invoke-virtual {p1}, Lcom/beust/jcommander/Parameterized;->getParameter()Lcom/beust/jcommander/Parameter;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p3

    :cond_0
    invoke-interface {v0}, Lcom/beust/jcommander/Parameter;->converter()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0}, Lcom/beust/jcommander/Parameter;->listConverter()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/beust/jcommander/converters/NoConverter;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const-class v3, Lcom/beust/jcommander/converters/NoConverter;

    if-ne v1, v3, :cond_4

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p2

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lcom/beust/jcommander/JCommander;->findConverter(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    :cond_4
    :goto_1
    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/beust/jcommander/Parameterized;->findFieldGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {p0, v3}, Lcom/beust/jcommander/JCommander;->findConverter(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_2

    :cond_5
    const-class v3, Lcom/beust/jcommander/converters/StringConverter;

    :goto_2
    if-nez v3, :cond_6

    const-class v5, Ljava/lang/Enum;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    move-object v1, v3

    :cond_7
    :goto_3
    :try_start_0
    invoke-interface {v0}, Lcom/beust/jcommander/Parameter;->names()[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    if-lez v5, :cond_8

    aget-object v3, v3, v4

    goto :goto_4

    :cond_8
    const-string v3, "[Main class]"

    :goto_4
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v4, :cond_9

    :try_start_1
    invoke-static {v1, p3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_5

    :catch_0
    :try_start_2
    new-instance p1, Lcom/beust/jcommander/ParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid value for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " parameter. Allowed values:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_1
    :try_start_3
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_2
    :try_start_4
    new-instance p1, Lcom/beust/jcommander/ParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid value for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " parameter. Allowed values:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    invoke-direct {p0, v3, v1}, Lcom/beust/jcommander/JCommander;->instantiateConverter(Ljava/lang/String;Ljava/lang/Class;)Lcom/beust/jcommander/IStringConverter;

    move-result-object v1

    const-class v4, Ljava/util/List;

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Lcom/beust/jcommander/Parameterized;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_b

    if-eqz v2, :cond_a

    invoke-interface {v0}, Lcom/beust/jcommander/Parameter;->listConverter()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/beust/jcommander/JCommander;->instantiateConverter(Ljava/lang/String;Ljava/lang/Class;)Lcom/beust/jcommander/IStringConverter;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/beust/jcommander/IStringConverter;->convert(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    :cond_a
    invoke-interface {v0}, Lcom/beust/jcommander/Parameter;->splitter()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p3, v1, p1}, Lcom/beust/jcommander/JCommander;->convertToList(Ljava/lang/String;Lcom/beust/jcommander/IStringConverter;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    :cond_b
    invoke-interface {v1, p3}, Lcom/beust/jcommander/IStringConverter;->convert(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    return-object p1

    :catch_3
    move-exception p1

    new-instance p2, Lcom/beust/jcommander/ParameterException;

    invoke-direct {p2, p1}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p1

    new-instance p2, Lcom/beust/jcommander/ParameterException;

    invoke-direct {p2, p1}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_5
    move-exception p1

    new-instance p2, Lcom/beust/jcommander/ParameterException;

    invoke-direct {p2, p1}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public findConverter(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4

    sget-object v0, Lcom/beust/jcommander/JCommander;->CONVERTER_FACTORIES:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beust/jcommander/IStringConverterFactory;

    invoke-interface {v1, p1}, Lcom/beust/jcommander/IStringConverterFactory;->getConverter(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getColumnSize()I
    .registers 2

    iget v0, p0, Lcom/beust/jcommander/JCommander;->m_columnSize:I

    return v0
.end method

.method public getCommandDescription(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1}, Lcom/beust/jcommander/JCommander;->findCommandByAlias(Ljava/lang/String;)Lcom/beust/jcommander/JCommander;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/beust/jcommander/JCommander;->getObjects()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/beust/jcommander/Parameters;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/beust/jcommander/Parameters;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/beust/jcommander/Parameters;->commandDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/beust/jcommander/Parameters;->resourceBundle()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/beust/jcommander/JCommander;->m_bundle:Ljava/util/ResourceBundle;

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/beust/jcommander/Parameters;->commandDescriptionKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/beust/jcommander/Parameters;->commandDescription()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, v0, p1}, Lcom/beust/jcommander/JCommander;->getI18nString(Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Lcom/beust/jcommander/ParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Asking description for unknown command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCommands()Ljava/util/Map;
    .registers 5

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newLinkedHashMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/beust/jcommander/JCommander;->m_commands:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/beust/jcommander/JCommander$ProgramName;

    invoke-static {v3}, Lcom/beust/jcommander/JCommander$ProgramName;->access$000(Lcom/beust/jcommander/JCommander$ProgramName;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMainParameter()Lcom/beust/jcommander/ParameterDescription;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_mainParameterDescription:Lcom/beust/jcommander/ParameterDescription;

    return-object v0
.end method

.method public getMainParameterDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_descriptions:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/beust/jcommander/JCommander;->createDescriptions()V

    :cond_0
    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_mainParameterAnnotation:Lcom/beust/jcommander/Parameter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_mainParameterAnnotation:Lcom/beust/jcommander/Parameter;

    invoke-interface {v0}, Lcom/beust/jcommander/Parameter;->description()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObjects()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_objects:Ljava/util/List;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/beust/jcommander/JCommander;->m_fields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getParsedAlias()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_parsedAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getParsedCommand()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_parsedCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getUnknownOptions()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_unknownArgs:Ljava/util/List;

    return-object v0
.end method

.method public isParameterOverwritingAllowed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/beust/jcommander/JCommander;->m_allowParameterOverwriting:Z

    return v0
.end method

.method public varargs parse([Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/beust/jcommander/JCommander;->parse(Z[Ljava/lang/String;)V

    return-void
.end method

.method public varargs parseWithoutValidation([Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/beust/jcommander/JCommander;->parse(Z[Ljava/lang/String;)V

    return-void
.end method

.method public setAcceptUnknownOptions(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/beust/jcommander/JCommander;->m_acceptUnknownOptions:Z

    return-void
.end method

.method public setAllowAbbreviatedOptions(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/beust/jcommander/JCommander;->m_allowAbbreviatedOptions:Z

    return-void
.end method

.method public setAllowParameterOverwriting(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/beust/jcommander/JCommander;->m_allowParameterOverwriting:Z

    return-void
.end method

.method public setCaseSensitiveOptions(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/beust/jcommander/JCommander;->m_caseSensitiveOptions:Z

    return-void
.end method

.method public setColumnSize(I)V
    .registers 2

    iput p1, p0, Lcom/beust/jcommander/JCommander;->m_columnSize:I

    return-void
.end method

.method public setDefaultProvider(Lcom/beust/jcommander/IDefaultProvider;)V
    .registers 4

    iput-object p1, p0, Lcom/beust/jcommander/JCommander;->m_defaultProvider:Lcom/beust/jcommander/IDefaultProvider;

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_commands:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beust/jcommander/JCommander;

    invoke-virtual {v1, p1}, Lcom/beust/jcommander/JCommander;->setDefaultProvider(Lcom/beust/jcommander/IDefaultProvider;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setDescriptionsBundle(Ljava/util/ResourceBundle;)V
    .registers 2

    iput-object p1, p0, Lcom/beust/jcommander/JCommander;->m_bundle:Ljava/util/ResourceBundle;

    return-void
.end method

.method public setParameterDescriptionComparator(Ljava/util/Comparator;)V
    .registers 2

    iput-object p1, p0, Lcom/beust/jcommander/JCommander;->m_parameterDescriptionComparator:Ljava/util/Comparator;

    return-void
.end method

.method public setProgramName(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/beust/jcommander/JCommander;->setProgramName(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs setProgramName(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/beust/jcommander/JCommander$ProgramName;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/beust/jcommander/JCommander$ProgramName;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lcom/beust/jcommander/JCommander;->m_programName:Lcom/beust/jcommander/JCommander$ProgramName;

    return-void
.end method

.method public setVerbose(I)V
    .registers 2

    iput p1, p0, Lcom/beust/jcommander/JCommander;->m_verbose:I

    return-void
.end method

.method public usage()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beust/jcommander/JCommander;->usage(Ljava/lang/StringBuilder;)V

    invoke-static {}, Lcom/beust/jcommander/JCommander;->getConsole()Lcom/beust/jcommander/internal/Console;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/beust/jcommander/internal/Console;->println(Ljava/lang/String;)V

    return-void
.end method

.method public usage(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/beust/jcommander/JCommander;->usage(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {}, Lcom/beust/jcommander/JCommander;->getConsole()Lcom/beust/jcommander/internal/Console;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/beust/jcommander/internal/Console;->println(Ljava/lang/String;)V

    return-void
.end method

.method public usage(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 4

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/beust/jcommander/JCommander;->usage(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public usage(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/beust/jcommander/JCommander;->getCommandDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/beust/jcommander/JCommander;->findCommandByAlias(Ljava/lang/String;)Lcom/beust/jcommander/JCommander;

    move-result-object p1

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/beust/jcommander/JCommander;->usage(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public usage(Ljava/lang/StringBuilder;)V
    .registers 3

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/beust/jcommander/JCommander;->usage(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public usage(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_descriptions:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/beust/jcommander/JCommander;->createDescriptions()V

    :cond_0
    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_commands:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/beust/jcommander/JCommander;->m_programName:Lcom/beust/jcommander/JCommander$ProgramName;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/beust/jcommander/JCommander;->m_programName:Lcom/beust/jcommander/JCommander$ProgramName;

    invoke-static {v1}, Lcom/beust/jcommander/JCommander$ProgramName;->access$300(Lcom/beust/jcommander/JCommander$ProgramName;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "<main class>"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Usage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [options]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [command] [command options]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/beust/jcommander/JCommander;->m_mainParameterDescription:Lcom/beust/jcommander/ParameterDescription;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/beust/jcommander/JCommander;->m_mainParameterDescription:Lcom/beust/jcommander/ParameterDescription;

    invoke-virtual {v2}, Lcom/beust/jcommander/ParameterDescription;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/beust/jcommander/internal/Lists;->newArrayList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/beust/jcommander/JCommander;->m_fields:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/beust/jcommander/ParameterDescription;

    invoke-virtual {v3}, Lcom/beust/jcommander/ParameterDescription;->getParameter()Lcom/beust/jcommander/WrappedParameter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/beust/jcommander/WrappedParameter;->hidden()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/beust/jcommander/ParameterDescription;->getNames()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/beust/jcommander/JCommander;->getParameterDescriptionComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Options:\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/beust/jcommander/ParameterDescription;

    invoke-virtual {v2}, Lcom/beust/jcommander/ParameterDescription;->getParameter()Lcom/beust/jcommander/WrappedParameter;

    move-result-object v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/beust/jcommander/WrappedParameter;->required()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "* "

    goto :goto_3

    :cond_7
    const-string v6, "  "

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/beust/jcommander/ParameterDescription;->getNames()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x6

    invoke-direct {p0, v6}, Lcom/beust/jcommander/JCommander;->s(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v2}, Lcom/beust/jcommander/ParameterDescription;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v5, v6}, Lcom/beust/jcommander/JCommander;->wrapDescription(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/beust/jcommander/ParameterDescription;->getDefault()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2}, Lcom/beust/jcommander/ParameterDescription;->isDynamicParameter()Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v5, 0x1

    invoke-direct {p0, v8}, Lcom/beust/jcommander/JCommander;->s(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Syntax: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/beust/jcommander/WrappedParameter;->names()[Ljava/lang/String;

    move-result-object v8

    aget-object v3, v8, v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "key"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/beust/jcommander/WrappedParameter;->getAssignment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "value"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/beust/jcommander/Strings;->isStringEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "<empty string>"

    goto :goto_4

    :cond_9
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v5, 0x1

    invoke-direct {p0, v7}, Lcom/beust/jcommander/JCommander;->s(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Default: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/beust/jcommander/WrappedParameter;->password()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v3, "********"

    :cond_a
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v2}, Lcom/beust/jcommander/ParameterDescription;->getParameterized()Lcom/beust/jcommander/Parameterized;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beust/jcommander/Parameterized;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/beust/jcommander/JCommander;->s(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Possible Values: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_d
    if-eqz v0, :cond_f

    const-string v0, "  Commands:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/beust/jcommander/JCommander;->m_commands:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/beust/jcommander/JCommander;

    invoke-virtual {v2}, Lcom/beust/jcommander/JCommander;->getObjects()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Lcom/beust/jcommander/Parameters;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/beust/jcommander/Parameters;

    invoke-interface {v2}, Lcom/beust/jcommander/Parameters;->hidden()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beust/jcommander/JCommander$ProgramName;

    invoke-static {v1}, Lcom/beust/jcommander/JCommander$ProgramName;->access$300(Lcom/beust/jcommander/JCommander$ProgramName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/beust/jcommander/JCommander$ProgramName;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "      "

    invoke-virtual {p0, v1, p1, v2}, Lcom/beust/jcommander/JCommander;->usage(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_f
    return-void
.end method
