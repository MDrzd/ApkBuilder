.class final Landroid/support/v4/view/ViewPager$1;
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
.method public final compare(Landroid/support/v4/view/ViewPager$ItemInfo;Landroid/support/v4/view/ViewPager$ItemInfo;)I
    .registers 3

    iget p1, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget p2, p2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/support/v4/view/ViewPager$ItemInfo;

    check-cast p2, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/ViewPager$1;->compare(Landroid/support/v4/view/ViewPager$ItemInfo;Landroid/support/v4/view/ViewPager$ItemInfo;)I

    move-result p1

    return p1
.end method
