.class public abstract Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# instance fields
.field mChangingConfigurations:I

.field mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V
    .registers 3
    .param p1    # Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    sget-object p2, Landroid/support/v4/graphics/drawable/WrappedDrawableApi14;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_0

    iget p2, p1, Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mChangingConfigurations:I

    iput p2, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mChangingConfigurations:I

    iget-object p2, p1, Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object p2, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object p2, p1, Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object p1, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-void
.end method


# virtual methods
.method canConstantState()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    iget v0, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mChangingConfigurations:I

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public abstract newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method
