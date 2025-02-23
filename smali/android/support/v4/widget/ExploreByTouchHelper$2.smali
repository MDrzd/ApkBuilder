.class final Landroid/support/v4/widget/ExploreByTouchHelper$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/support/v4/util/SparseArrayCompat;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3

    invoke-virtual {p1, p2}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    return-object p1
.end method

.method public final bridge synthetic get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    check-cast p1, Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper$2;->get(Landroid/support/v4/util/SparseArrayCompat;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    return-object p1
.end method

.method public final size(Landroid/support/v4/util/SparseArrayCompat;)I
    .registers 2

    invoke-virtual {p1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic size(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper$2;->size(Landroid/support/v4/util/SparseArrayCompat;)I

    move-result p1

    return p1
.end method
