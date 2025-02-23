.class Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator$1;->this$0:Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lorg/jf/dexlib2/dexbacked/raw/MapItem;

    check-cast p2, Lorg/jf/dexlib2/dexbacked/raw/MapItem;

    invoke-virtual {p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator$1;->compare(Lorg/jf/dexlib2/dexbacked/raw/MapItem;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/jf/dexlib2/dexbacked/raw/MapItem;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)I
    .registers 4

    invoke-static {}, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {}, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result p1

    return p1
.end method
