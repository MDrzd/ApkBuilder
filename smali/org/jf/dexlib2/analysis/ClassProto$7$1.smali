.class Lorg/jf/dexlib2/analysis/ClassProto$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$1:Lorg/jf/dexlib2/analysis/ClassProto$7;

.field final synthetic val$methodOrder:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/analysis/ClassProto$7;Ljava/util/HashMap;)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/ClassProto$7$1;->this$1:Lorg/jf/dexlib2/analysis/ClassProto$7;

    iput-object p2, p0, Lorg/jf/dexlib2/analysis/ClassProto$7$1;->val$methodOrder:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lorg/jf/dexlib2/iface/reference/MethodReference;

    check-cast p2, Lorg/jf/dexlib2/iface/reference/MethodReference;

    invoke-virtual {p0, p1, p2}, Lorg/jf/dexlib2/analysis/ClassProto$7$1;->compare(Lorg/jf/dexlib2/iface/reference/MethodReference;Lorg/jf/dexlib2/iface/reference/MethodReference;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/jf/dexlib2/iface/reference/MethodReference;Lorg/jf/dexlib2/iface/reference/MethodReference;)I
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto$7$1;->val$methodOrder:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto$7$1;->val$methodOrder:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result p1

    return p1
.end method
