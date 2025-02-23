.class public Lorg/jf/baksmali/BaksmaliOptions;
.super Ljava/lang/Object;


# static fields
.field public static final ALL:I = 0x1

.field public static final ALLPOST:I = 0x4

.field public static final ALLPRE:I = 0x2

.field public static final ARGS:I = 0x8

.field public static final DEST:I = 0x10

.field public static final FULLMERGE:I = 0x40

.field public static final MERGE:I = 0x20


# instance fields
.field public accessorComments:Z

.field public allowOdex:Z

.field public apiLevel:I

.field public classPath:Lorg/jf/dexlib2/analysis/ClassPath;

.field public codeOffsets:Z

.field public debugInfo:Z

.field public deodex:Z

.field public implicitReferences:Z

.field public inlineResolver:Lorg/jf/dexlib2/analysis/InlineMethodResolver;

.field public localsDirective:Z

.field public normalizeVirtualMethods:Z

.field public parameterRegisters:Z

.field public registerInfo:I

.field public resourceIds:Ljava/util/Map;

.field public sequentialLabels:Z

.field public syntheticAccessorResolver:Lorg/jf/dexlib2/util/SyntheticAccessorResolver;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lorg/jf/baksmali/BaksmaliOptions;->apiLevel:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jf/baksmali/BaksmaliOptions;->parameterRegisters:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jf/baksmali/BaksmaliOptions;->localsDirective:Z

    iput-boolean v1, p0, Lorg/jf/baksmali/BaksmaliOptions;->sequentialLabels:Z

    iput-boolean v0, p0, Lorg/jf/baksmali/BaksmaliOptions;->debugInfo:Z

    iput-boolean v1, p0, Lorg/jf/baksmali/BaksmaliOptions;->codeOffsets:Z

    iput-boolean v0, p0, Lorg/jf/baksmali/BaksmaliOptions;->accessorComments:Z

    iput-boolean v1, p0, Lorg/jf/baksmali/BaksmaliOptions;->allowOdex:Z

    iput-boolean v1, p0, Lorg/jf/baksmali/BaksmaliOptions;->deodex:Z

    iput-boolean v1, p0, Lorg/jf/baksmali/BaksmaliOptions;->implicitReferences:Z

    iput-boolean v1, p0, Lorg/jf/baksmali/BaksmaliOptions;->normalizeVirtualMethods:Z

    iput v1, p0, Lorg/jf/baksmali/BaksmaliOptions;->registerInfo:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jf/baksmali/BaksmaliOptions;->resourceIds:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jf/baksmali/BaksmaliOptions;->inlineResolver:Lorg/jf/dexlib2/analysis/InlineMethodResolver;

    iput-object v0, p0, Lorg/jf/baksmali/BaksmaliOptions;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    iput-object v0, p0, Lorg/jf/baksmali/BaksmaliOptions;->syntheticAccessorResolver:Lorg/jf/dexlib2/util/SyntheticAccessorResolver;

    return-void
.end method


# virtual methods
.method public loadResourceIds(Ljava/util/Map;)V
    .registers 6

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    new-instance v3, Lorg/jf/baksmali/BaksmaliOptions$1;

    invoke-direct {v3, p0, v2}, Lorg/jf/baksmali/BaksmaliOptions$1;-><init>(Lorg/jf/baksmali/BaksmaliOptions;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method
