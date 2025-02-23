.class public Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/event/EventListenerSupport;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/lang3/event/EventListenerSupport;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;->this$0:Lorg/apache/commons/lang3/event/EventListenerSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object p1, p0, Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;->this$0:Lorg/apache/commons/lang3/event/EventListenerSupport;

    invoke-static {p1}, Lorg/apache/commons/lang3/event/EventListenerSupport;->access$000(Lorg/apache/commons/lang3/event/EventListenerSupport;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
