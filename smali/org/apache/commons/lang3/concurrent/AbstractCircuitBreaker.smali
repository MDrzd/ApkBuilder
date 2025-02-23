.class public abstract Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/concurrent/CircuitBreaker;


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "open"


# instance fields
.field private final changeSupport:Ljava/beans/PropertyChangeSupport;

.field protected final state:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->CLOSED:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->state:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->changeSupport:Ljava/beans/PropertyChangeSupport;

    return-void
.end method

.method protected static isOpen(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)Z
    .registers 2

    sget-object v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->OPEN:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->changeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method protected changeState(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->oppositeState()Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->changeSupport:Ljava/beans/PropertyChangeSupport;

    const-string v1, "open"

    invoke-static {p1}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->isOpen(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {p1}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->isOpen(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)Z

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public abstract checkState()Z
.end method

.method public close()V
    .registers 2

    sget-object v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->CLOSED:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->changeState(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)V

    return-void
.end method

.method public abstract incrementAndCheckState(Ljava/lang/Object;)Z
.end method

.method public isClosed()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    invoke-static {v0}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->isOpen(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)Z

    move-result v0

    return v0
.end method

.method public open()V
    .registers 2

    sget-object v0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->OPEN:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->changeState(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)V

    return-void
.end method

.method public removeChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->changeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method
