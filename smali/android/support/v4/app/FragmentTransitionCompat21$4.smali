.class Landroid/support/v4/app/FragmentTransitionCompat21$4;
.super Landroid/transition/Transition$EpicenterCallback;


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/FragmentTransitionCompat21;

.field final synthetic val$epicenter:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentTransitionCompat21;Landroid/graphics/Rect;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->this$0:Landroid/support/v4/app/FragmentTransitionCompat21;

    iput-object p2, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .registers 2

    iget-object p1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$epicenter:Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$epicenter:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$4;->val$epicenter:Landroid/graphics/Rect;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
