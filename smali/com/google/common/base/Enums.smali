.class public final Lcom/google/common/base/Enums;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static final enumConstantCache:Ljava/util/Map;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/common/base/Enums;->enumConstantCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getEnumConstants(Ljava/lang/Class;)Ljava/util/Map;
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    sget-object v0, Lcom/google/common/base/Enums;->enumConstantCache:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/common/base/Enums;->enumConstantCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/google/common/base/Enums;->populateCache(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getField(Ljava/lang/Enum;)Ljava/lang/reflect/Field;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "reflection"
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static getIfPresent(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/base/Optional;
    .registers 2

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/google/common/base/Platform;->getEnumIfPresent(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static populateCache(Ljava/lang/Class;)Ljava/util/Map;
    .registers 6
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/common/base/Enums;->enumConstantCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static stringConverter(Ljava/lang/Class;)Lcom/google/common/base/Converter;
    .registers 2

    new-instance v0, Lcom/google/common/base/Enums$StringConverter;

    invoke-direct {v0, p0}, Lcom/google/common/base/Enums$StringConverter;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
