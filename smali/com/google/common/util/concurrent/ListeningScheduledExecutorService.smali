.class public interface abstract Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/util/concurrent/ListeningExecutorService;
.implements Ljava/util/concurrent/ScheduledExecutorService;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# virtual methods
.method public abstract schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;
.end method

.method public abstract schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;
.end method

.method public abstract scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;
.end method

.method public abstract scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;
.end method
