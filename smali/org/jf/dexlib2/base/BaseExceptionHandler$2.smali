.class final Lorg/jf/dexlib2/base/BaseExceptionHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lorg/jf/dexlib2/iface/ExceptionHandler;

    check-cast p2, Lorg/jf/dexlib2/iface/ExceptionHandler;

    invoke-virtual {p0, p1, p2}, Lorg/jf/dexlib2/base/BaseExceptionHandler$2;->compare(Lorg/jf/dexlib2/iface/ExceptionHandler;Lorg/jf/dexlib2/iface/ExceptionHandler;)I

    move-result p1

    return p1
.end method

.method public final compare(Lorg/jf/dexlib2/iface/ExceptionHandler;Lorg/jf/dexlib2/iface/ExceptionHandler;)I
    .registers 4

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {p2}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    invoke-interface {p2}, Lorg/jf/dexlib2/iface/ExceptionHandler;->getExceptionType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
