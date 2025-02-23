.class public Lorg/jf/smali/SmaliMethodParameter;
.super Lorg/jf/dexlib2/base/BaseMethodParameter;

# interfaces
.implements Lorg/jf/smali/WithRegister;


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;


# instance fields
.field public annotations:Ljava/util/Set;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final register:I

.field public final type:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/smali/SmaliMethodParameter$1;

    invoke-direct {v0}, Lorg/jf/smali/SmaliMethodParameter$1;-><init>()V

    sput-object v0, Lorg/jf/smali/SmaliMethodParameter;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseMethodParameter;-><init>()V

    iput p1, p0, Lorg/jf/smali/SmaliMethodParameter;->register:I

    iput-object p2, p0, Lorg/jf/smali/SmaliMethodParameter;->type:Ljava/lang/String;

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/smali/SmaliMethodParameter;->annotations:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getAnnotations()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/smali/SmaliMethodParameter;->annotations:Ljava/util/Set;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/smali/SmaliMethodParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRegister()I
    .registers 2

    iget v0, p0, Lorg/jf/smali/SmaliMethodParameter;->register:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/smali/SmaliMethodParameter;->type:Ljava/lang/String;

    return-object v0
.end method
