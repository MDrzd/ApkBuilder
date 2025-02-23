.class final Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
.super Ljava/lang/Object;


# instance fields
.field private final isVarArgs:Z

.field private final parameterTypes:[Ljava/lang/Class;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Constructor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->isVarArgs:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->isVarArgs:Z

    return-void
.end method

.method static synthetic access$000(Ljava/lang/reflect/Constructor;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->of(Ljava/lang/reflect/Constructor;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->of(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object p0

    return-object p0
.end method

.method private static of(Ljava/lang/reflect/Constructor;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    .registers 2

    new-instance v0, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method private static of(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    .registers 2

    new-instance v0, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method


# virtual methods
.method public final getParameterTypes()[Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->parameterTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public final isVarArgs()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->isVarArgs:Z

    return v0
.end method
