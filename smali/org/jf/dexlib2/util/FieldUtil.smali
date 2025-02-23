.class public final Lorg/jf/dexlib2/util/FieldUtil;
.super Ljava/lang/Object;


# static fields
.field public static FIELD_IS_INSTANCE:Lcom/google/common/base/Predicate;

.field public static FIELD_IS_STATIC:Lcom/google/common/base/Predicate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/util/FieldUtil$1;

    invoke-direct {v0}, Lorg/jf/dexlib2/util/FieldUtil$1;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/util/FieldUtil;->FIELD_IS_STATIC:Lcom/google/common/base/Predicate;

    new-instance v0, Lorg/jf/dexlib2/util/FieldUtil$2;

    invoke-direct {v0}, Lorg/jf/dexlib2/util/FieldUtil$2;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/util/FieldUtil;->FIELD_IS_INSTANCE:Lcom/google/common/base/Predicate;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isStatic(Lorg/jf/dexlib2/iface/Field;)Z
    .registers 2
    .param p0    # Lorg/jf/dexlib2/iface/Field;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lorg/jf/dexlib2/AccessFlags;->STATIC:Lorg/jf/dexlib2/AccessFlags;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/Field;->getAccessFlags()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/jf/dexlib2/AccessFlags;->isSet(I)Z

    move-result p0

    return p0
.end method
