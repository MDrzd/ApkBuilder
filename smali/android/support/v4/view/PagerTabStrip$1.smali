.class Landroid/support/v4/view/PagerTabStrip$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/PagerTabStrip;


# direct methods
.method constructor <init>(Landroid/support/v4/view/PagerTabStrip;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/view/PagerTabStrip$1;->this$0:Landroid/support/v4/view/PagerTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Landroid/support/v4/view/PagerTabStrip$1;->this$0:Landroid/support/v4/view/PagerTabStrip;

    iget-object p1, p1, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip$1;->this$0:Landroid/support/v4/view/PagerTabStrip;

    iget-object v0, v0, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
