.class public Landroid/support/v7/widget/ActionMenuView$LayoutParams;
.super Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;


# instance fields
.field public cellsUsed:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public expandable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field expanded:Z

.field public extraPixels:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public isOverflowButton:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public preventEdgeOffset:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-void
.end method

.method constructor <init>(IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    iput-boolean p3, p0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/ActionMenuView$LayoutParams;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
