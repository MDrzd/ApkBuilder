.class final Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;
.super Ljava/lang/Object;


# instance fields
.field method:Ljava/lang/reflect/Method;

.field name:Ljava/lang/String;

.field parameterTypes:[Ljava/lang/Class;

.field upcast:Z


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;->parameterTypes:[Ljava/lang/Class;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;->upcast:Z

    return-void
.end method


# virtual methods
.method final tryUpcasting(Ljava/lang/Class;)V
    .registers 4

    iget-object v0, p0, Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;->method:Ljava/lang/reflect/Method;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;->name:Ljava/lang/String;

    iput-object p1, p0, Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;->parameterTypes:[Ljava/lang/Class;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/codehaus/plexus/util/introspection/ClassMap$MethodInfo;->upcast:Z

    return-void
.end method
