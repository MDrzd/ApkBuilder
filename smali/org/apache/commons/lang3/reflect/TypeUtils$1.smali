.class final Lorg/apache/commons/lang3/reflect/TypeUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/reflect/Typed;


# instance fields
.field final synthetic val$type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$1;->val$type:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getType()Ljava/lang/reflect/Type;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$1;->val$type:Ljava/lang/reflect/Type;

    return-object v0
.end method
