.class public final Lcom/b/a/d;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()F
    .registers 2

    iget v0, p0, Lcom/b/a/d;->a:F

    return v0
.end method

.method public final b()F
    .registers 2

    iget v0, p0, Lcom/b/a/d;->b:F

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    iput p3, p0, Lcom/b/a/d;->a:F

    iput p4, p0, Lcom/b/a/d;->b:F

    const/4 p1, 0x1

    return p1
.end method
