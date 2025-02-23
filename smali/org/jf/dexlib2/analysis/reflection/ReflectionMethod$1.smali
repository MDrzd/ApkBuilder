.class Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1;
.super Ljava/util/AbstractList;


# instance fields
.field private final parameters:[Ljava/lang/Class;

.field final synthetic this$0:Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod;

.field final synthetic val$method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod;Ljava/lang/reflect/Method;)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1;->this$0:Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod;

    iput-object p2, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1;->val$method:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iget-object p1, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1;->parameters:[Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$000(Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1;)[Ljava/lang/Class;
    .registers 1

    iget-object p0, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1;->parameters:[Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1;->get(I)Lorg/jf/dexlib2/iface/MethodParameter;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/jf/dexlib2/iface/MethodParameter;
    .registers 3

    new-instance v0, Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1$1;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1$1;-><init>(Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1;I)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1;->parameters:[Ljava/lang/Class;

    array-length v0, v0

    return v0
.end method
