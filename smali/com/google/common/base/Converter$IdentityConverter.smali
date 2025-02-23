.class final Lcom/google/common/base/Converter$IdentityConverter;
.super Lcom/google/common/base/Converter;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final INSTANCE:Lcom/google/common/base/Converter$IdentityConverter;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/base/Converter$IdentityConverter;

    invoke-direct {v0}, Lcom/google/common/base/Converter$IdentityConverter;-><init>()V

    sput-object v0, Lcom/google/common/base/Converter$IdentityConverter;->INSTANCE:Lcom/google/common/base/Converter$IdentityConverter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/base/Converter;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    sget-object v0, Lcom/google/common/base/Converter$IdentityConverter;->INSTANCE:Lcom/google/common/base/Converter$IdentityConverter;

    return-object v0
.end method


# virtual methods
.method final doAndThen(Lcom/google/common/base/Converter;)Lcom/google/common/base/Converter;
    .registers 3

    const-string v0, "otherConverter"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Converter;

    return-object p1
.end method

.method protected final doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method protected final doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method public final reverse()Lcom/google/common/base/Converter$IdentityConverter;
    .registers 1

    return-object p0
.end method

.method public final bridge synthetic reverse()Lcom/google/common/base/Converter;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/base/Converter$IdentityConverter;->reverse()Lcom/google/common/base/Converter$IdentityConverter;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Converter.identity()"

    return-object v0
.end method
