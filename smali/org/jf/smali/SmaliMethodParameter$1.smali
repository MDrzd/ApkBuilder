.class final Lorg/jf/smali/SmaliMethodParameter$1;
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

    check-cast p1, Lorg/jf/smali/WithRegister;

    check-cast p2, Lorg/jf/smali/WithRegister;

    invoke-virtual {p0, p1, p2}, Lorg/jf/smali/SmaliMethodParameter$1;->compare(Lorg/jf/smali/WithRegister;Lorg/jf/smali/WithRegister;)I

    move-result p1

    return p1
.end method

.method public final compare(Lorg/jf/smali/WithRegister;Lorg/jf/smali/WithRegister;)I
    .registers 3

    invoke-interface {p1}, Lorg/jf/smali/WithRegister;->getRegister()I

    move-result p1

    invoke-interface {p2}, Lorg/jf/smali/WithRegister;->getRegister()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result p1

    return p1
.end method
