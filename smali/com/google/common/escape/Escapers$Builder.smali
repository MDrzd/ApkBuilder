.class public final Lcom/google/common/escape/Escapers$Builder;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# instance fields
.field private final replacementMap:Ljava/util/Map;

.field private safeMax:C

.field private safeMin:C

.field private unsafeReplacement:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/common/escape/Escapers$Builder;->replacementMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-char v0, p0, Lcom/google/common/escape/Escapers$Builder;->safeMin:C

    const v0, 0xffff

    iput-char v0, p0, Lcom/google/common/escape/Escapers$Builder;->safeMax:C

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/escape/Escapers$Builder;->unsafeReplacement:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/escape/Escapers$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/escape/Escapers$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/escape/Escapers$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/common/escape/Escapers$Builder;->unsafeReplacement:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;
    .registers 4

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/escape/Escapers$Builder;->replacementMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final build()Lcom/google/common/escape/Escaper;
    .registers 5

    new-instance v0, Lcom/google/common/escape/Escapers$Builder$1;

    iget-object v1, p0, Lcom/google/common/escape/Escapers$Builder;->replacementMap:Ljava/util/Map;

    iget-char v2, p0, Lcom/google/common/escape/Escapers$Builder;->safeMin:C

    iget-char v3, p0, Lcom/google/common/escape/Escapers$Builder;->safeMax:C

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/common/escape/Escapers$Builder$1;-><init>(Lcom/google/common/escape/Escapers$Builder;Ljava/util/Map;CC)V

    return-object v0
.end method

.method public final setSafeRange(CC)Lcom/google/common/escape/Escapers$Builder;
    .registers 3

    iput-char p1, p0, Lcom/google/common/escape/Escapers$Builder;->safeMin:C

    iput-char p2, p0, Lcom/google/common/escape/Escapers$Builder;->safeMax:C

    return-object p0
.end method

.method public final setUnsafeReplacement(Ljava/lang/String;)Lcom/google/common/escape/Escapers$Builder;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/common/escape/Escapers$Builder;->unsafeReplacement:Ljava/lang/String;

    return-object p0
.end method
