.class public final Lcom/google/common/util/concurrent/ServiceManager;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# static fields
.field private static final HEALTHY_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

.field private static final STOPPED_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final services:Lcom/google/common/collect/ImmutableList;

.field private final state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/util/concurrent/ServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/google/common/util/concurrent/ServiceManager$1;

    const-string v1, "healthy()"

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/ServiceManager$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/util/concurrent/ServiceManager;->HEALTHY_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    new-instance v0, Lcom/google/common/util/concurrent/ServiceManager$2;

    const-string v1, "stopped()"

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/ServiceManager$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/util/concurrent/ServiceManager;->STOPPED_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "ServiceManager configured with no services.  Is your application configured properly?"

    new-instance v2, Lcom/google/common/util/concurrent/ServiceManager$EmptyServiceManagerWarning;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/common/util/concurrent/ServiceManager$EmptyServiceManagerWarning;-><init>(Lcom/google/common/util/concurrent/ServiceManager$1;)V

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/common/util/concurrent/ServiceManager$NoOpService;

    invoke-direct {p1, v3}, Lcom/google/common/util/concurrent/ServiceManager$NoOpService;-><init>(Lcom/google/common/util/concurrent/ServiceManager$1;)V

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;-><init>(Lcom/google/common/collect/ImmutableCollection;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iput-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/Service;

    new-instance v2, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;

    invoke-direct {v2, v1, v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;-><init>(Lcom/google/common/util/concurrent/Service;Ljava/lang/ref/WeakReference;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/common/util/concurrent/Service;->addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1}, Lcom/google/common/util/concurrent/Service;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v2

    sget-object v3, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "Can only manage NEW services, %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    invoke-static {v2, v3, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->markReady()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/logging/Logger;
    .registers 1

    sget-object v0, Lcom/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
    .registers 1

    sget-object v0, Lcom/google/common/util/concurrent/ServiceManager;->STOPPED_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
    .registers 1

    sget-object v0, Lcom/google/common/util/concurrent/ServiceManager;->HEALTHY_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    return-object v0
.end method


# virtual methods
.method public final addListener(Lcom/google/common/util/concurrent/ServiceManager$Listener;)V
    .registers 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->addListener(Lcom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final addListener(Lcom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V
    .registers 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->addListener(Lcom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final awaitHealthy()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthy()V

    return-void
.end method

.method public final awaitHealthy(JLjava/util/concurrent/TimeUnit;)V
    .registers 5

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthy(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public final awaitStopped()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitStopped()V

    return-void
.end method

.method public final awaitStopped(JLjava/util/concurrent/TimeUnit;)V
    .registers 5

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitStopped(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public final isHealthy()Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/Service;

    invoke-interface {v1}, Lcom/google/common/util/concurrent/Service;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final servicesByState()Lcom/google/common/collect/ImmutableMultimap;
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState()Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    return-object v0
.end method

.method public final startAsync()Lcom/google/common/util/concurrent/ServiceManager;
    .registers 9

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/Service;

    invoke-interface {v1}, Lcom/google/common/util/concurrent/Service;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v2

    sget-object v3, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const-string v6, "Service %s is %s, cannot start it."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v4

    aput-object v2, v7, v5

    invoke-static {v3, v6, v7}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/Service;

    :try_start_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v2, v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->tryStartTiming(Lcom/google/common/util/concurrent/Service;)V

    invoke-interface {v1}, Lcom/google/common/util/concurrent/Service;->startAsync()Lcom/google/common/util/concurrent/Service;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    sget-object v3, Lcom/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x18

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unable to start Service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    return-object p0
.end method

.method public final startupTimes()Lcom/google/common/collect/ImmutableMap;
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimes()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public final stopAsync()Lcom/google/common/util/concurrent/ServiceManager;
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/Service;

    invoke-interface {v1}, Lcom/google/common/util/concurrent/Service;->stopAsync()Lcom/google/common/util/concurrent/Service;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    const-class v0, Lcom/google/common/util/concurrent/ServiceManager;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "services"

    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager;->services:Lcom/google/common/collect/ImmutableList;

    const-class v3, Lcom/google/common/util/concurrent/ServiceManager$NoOpService;

    invoke-static {v3}, Lcom/google/common/base/Predicates;->instanceOf(Ljava/lang/Class;)Lcom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
