.class public Lcom/beust/jcommander/internal/DefaultConverterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/beust/jcommander/IStringConverterFactory;


# static fields
.field private static m_classConverters:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/beust/jcommander/internal/Maps;->newHashMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/beust/jcommander/internal/DefaultConverterFactory;->m_classConverters:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-class v2, Lcom/beust/jcommander/converters/StringConverter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/beust/jcommander/internal/DefaultConverterFactory;->m_classConverters:Ljava/util/Map;

    const-class v1, Ljava/lang/Integer;

    const-class v2, Lcom/beust/jcommander/converters/IntegerConverter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/beust/jcommander/internal/DefaultConverterFactory;->m_classConverters:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Lcom/beust/jcommander/converters/IntegerConverter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/beust/jcommander/internal/DefaultConverterFactory;->m_classConverters:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    const-class v2, Lcom/beust/jcommander/converters/LongConverter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/beust/jcommander/internal/DefaultConverterFactory;->m_classConverters:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Lcom/beust/jcommander/converters/LongConverter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/beust/jcommander/internal/DefaultConverterFactory;->m_classConverters:Ljava/util/Map;

    const-class v1, Ljava/lang/Float;

    const-class v2, Lcom/beust/jcommander/converters/FloatConverter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/beust/jcommander/internal/DefaultConverterFactory;->m_classConverters:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Lcom/beust/jcommander/converters/FloatConverter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/beust/jcommander/internal/DefaultConverterFactory;->m_classConverters:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    const-class v2, Lcom/beust/jcommander/converters/DoubleConverter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/beust/jcommander/internal/DefaultConverterFactory;->m_classConverters:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Lcom/beust/jcommander/converters/DoubleConverter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/beust/jcommander/internal/DefaultConverterFactory;->m_classConverters:Ljava/util/Map;

    const-class v1, Ljava/lang/Boolean;

    const-class v2, Lcom/beust/jcommander/converters/BooleanConverter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/beust/jcommander/internal/DefaultConverterFactory;->m_classConverters:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Lcom/beust/jcommander/converters/BooleanConverter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/beust/jcommander/internal/DefaultConverterFactory;->m_classConverters:Ljava/util/Map;

    const-class v1, Ljava/io/File;

    const-class v2, Lcom/beust/jcommander/converters/FileConverter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/beust/jcommander/internal/DefaultConverterFactory;->m_classConverters:Ljava/util/Map;

    const-class v1, Ljava/math/BigDecimal;

    const-class v2, Lcom/beust/jcommander/converters/BigDecimalConverter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/beust/jcommander/internal/DefaultConverterFactory;->m_classConverters:Ljava/util/Map;

    const-class v1, Ljava/util/Date;

    const-class v2, Lcom/beust/jcommander/converters/ISO8601DateConverter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/beust/jcommander/internal/DefaultConverterFactory;->m_classConverters:Ljava/util/Map;

    const-class v1, Ljava/nio/file/Path;

    const-class v2, Lcom/beust/jcommander/converters/PathConverter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/beust/jcommander/internal/DefaultConverterFactory;->m_classConverters:Ljava/util/Map;

    const-class v1, Ljava/net/URI;

    const-class v2, Lcom/beust/jcommander/converters/URIConverter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/beust/jcommander/internal/DefaultConverterFactory;->m_classConverters:Ljava/util/Map;

    const-class v1, Ljava/net/URL;

    const-class v2, Lcom/beust/jcommander/converters/URLConverter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConverter(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3

    sget-object v0, Lcom/beust/jcommander/internal/DefaultConverterFactory;->m_classConverters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method
