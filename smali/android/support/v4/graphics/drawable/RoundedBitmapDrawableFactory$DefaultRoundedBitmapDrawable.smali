.class Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;
.super Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12

    const/4 v5, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public hasMipMap()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/support/v4/graphics/BitmapCompat;->hasMipMap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setMipMap(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/BitmapCompat;->setHasMipMap(Landroid/graphics/Bitmap;Z)V

    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
