.class public abstract Landroid/support/graphics/drawable/Animatable2Compat$AnimationCallback;
.super Ljava/lang/Object;


# instance fields
.field mPlatformCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getPlatformCallback()Landroid/graphics/drawable/Animatable2$AnimationCallback;
    .registers 2
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Landroid/support/graphics/drawable/Animatable2Compat$AnimationCallback;->mPlatformCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/graphics/drawable/Animatable2Compat$AnimationCallback$1;

    invoke-direct {v0, p0}, Landroid/support/graphics/drawable/Animatable2Compat$AnimationCallback$1;-><init>(Landroid/support/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/Animatable2Compat$AnimationCallback;->mPlatformCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/Animatable2Compat$AnimationCallback;->mPlatformCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    return-object v0
.end method

.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method
