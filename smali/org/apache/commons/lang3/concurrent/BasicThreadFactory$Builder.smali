.class public Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# instance fields
.field private daemonFlag:Ljava/lang/Boolean;

.field private exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private namingPattern:Ljava/lang/String;

.field private priority:Ljava/lang/Integer;

.field private wrappedFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)Ljava/util/concurrent/ThreadFactory;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->namingPattern:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->priority:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->daemonFlag:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$400(Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->build()Lorg/apache/commons/lang3/concurrent/BasicThreadFactory;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/commons/lang3/concurrent/BasicThreadFactory;
    .registers 3

    new-instance v0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory;-><init>(Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$1;)V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->reset()V

    return-object v0
.end method

.method public daemon(Z)Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;
    .registers 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->daemonFlag:Ljava/lang/Boolean;

    return-object p0
.end method

.method public namingPattern(Ljava/lang/String;)Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;
    .registers 4

    const-string v0, "Naming pattern must not be null!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->namingPattern:Ljava/lang/String;

    return-object p0
.end method

.method public priority(I)Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;
    .registers 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->priority:Ljava/lang/Integer;

    return-object p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->namingPattern:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->priority:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->daemonFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public uncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;
    .registers 4

    const-string v0, "Uncaught exception handler must not be null!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method public wrappedFactory(Ljava/util/concurrent/ThreadFactory;)Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;
    .registers 4

    const-string v0, "Wrapped ThreadFactory must not be null!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method
