.class Landroid/support/v7/widget/RtlSpacingHelper;
.super Ljava/lang/Object;


# static fields
.field public static final UNDEFINED:I = -0x80000000


# instance fields
.field private mEnd:I

.field private mExplicitLeft:I

.field private mExplicitRight:I

.field private mIsRelative:Z

.field private mIsRtl:Z

.field private mLeft:I

.field private mRight:I

.field private mStart:I


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    iput v1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRelative:Z

    return-void
.end method


# virtual methods
.method public getEnd()I
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    return v0
.end method

.method public getLeft()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    return v0
.end method

.method public getRight()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    return v0
.end method

.method public getStart()I
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    return v0
.end method

.method public setAbsolute(II)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRelative:Z

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    :cond_0
    if-eq p2, v0, :cond_1

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    :cond_1
    return-void
.end method

.method public setDirection(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRelative:Z

    if-eqz v0, :cond_6

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_3

    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    if-eq p1, v0, :cond_1

    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    goto :goto_0

    :cond_1
    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    :goto_0
    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    if-eq p1, v0, :cond_2

    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    goto :goto_1

    :cond_2
    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    :goto_1
    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    return-void

    :cond_3
    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    if-eq p1, v0, :cond_4

    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    goto :goto_2

    :cond_4
    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    :goto_2
    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    if-eq p1, v0, :cond_5

    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    goto :goto_3

    :cond_5
    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    :goto_3
    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    return-void

    :cond_6
    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    return-void
.end method

.method public setRelative(II)V
    .registers 5

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRelative:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_1

    if-eq p2, v1, :cond_0

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    :cond_0
    if-eq p1, v1, :cond_3

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    return-void

    :cond_1
    if-eq p1, v1, :cond_2

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    :cond_2
    if-eq p2, v1, :cond_3

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    :cond_3
    return-void
.end method
