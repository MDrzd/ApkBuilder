.class public final Landroid/support/v13/view/DragAndDropPermissionsCompat;
.super Ljava/lang/Object;


# instance fields
.field private mDragAndDropPermissions:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v13/view/DragAndDropPermissionsCompat;->mDragAndDropPermissions:Ljava/lang/Object;

    return-void
.end method

.method public static request(Landroid/app/Activity;Landroid/view/DragEvent;)Landroid/support/v13/view/DragAndDropPermissionsCompat;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Landroid/support/v13/view/DragAndDropPermissionsCompat;

    invoke-direct {p1, p0}, Landroid/support/v13/view/DragAndDropPermissionsCompat;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final release()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v13/view/DragAndDropPermissionsCompat;->mDragAndDropPermissions:Ljava/lang/Object;

    check-cast v0, Landroid/view/DragAndDropPermissions;

    invoke-virtual {v0}, Landroid/view/DragAndDropPermissions;->release()V

    :cond_0
    return-void
.end method
